CodeMirror.defineMode("xquery", function(config, parserConfig) {

  var keywords = function(){
    function kw(type) {return {type: type, style: "keyword"};}
    function qualifier() {return {type: "axis_specifier", style: "qualifier"};}
    var A = kw("keyword a"), B = kw("keyword b"), C = kw("keyword c");
    var operator = kw("operator"), atom = {type: "atom", style: "atom"}, punctuation = {type: "punctuation", style: ""};
    var kwObj = {
      'if': A, 'switch': A, 'while': A, 'for': A,
      'else': B, 'then': B, 'try': B, 'finally': B, 'catch': B,
      'element': C, 'attribute': C, 'let': C, 'implements': C, 'import': C, 'module': C, 'namespace': C, 
      'return': C, 'super': C, 'this': C, 'throws': C, 'where': C, 'private': C,      
      ',': punctuation,
      'null': atom, 'fn:false()': atom, 'fn:true()': atom
    };
    var basic = ['after','ancestor','ancestor-or-self','and','as','ascending','assert','attribute','before',
    'by','case','cast','child','comment','declare','default','define','descendant','descendant-or-self',
    'descending','document-node','element','else','eq','every','except','external','following',
    'following-sibling','follows','for','function','if','import','in','instance','intersect','item',
    'let','module','namespace','node','node','of','only','or','order','parent','precedes','preceding',
    'preceding-sibling','processing-instruction','ref','return','returns','satisfies','schema','schema-element',
    'self','some','sortby','stable','text','then','to','treat','typeswitch','union','variable','version','where',
    'xquery'];
    for(var i=0, l=basic.length; i < l; i++) { kwObj[basic[i]] = kw(basic[i])};
    
    var types = ['xs:string', 'xs:float', 'xs:decimal', 'xs:double', 'xs:integer', 'xs:boolean', 'xs:date', 'xs:dateTime', 
    'xs:time', 'xs:duration', 'xs:dayTimeDuration', 'xs:time', 'xs:yearMonthDuration', 'numeric', 'xs:hexBinary', 
    'xs:base64Binary', 'xs:anyURI', 'xs:QName', 'xs:byte','xs:boolean','xs:anyURI','xf:yearMonthDuration'];
    for(var i=0, l=types.length; i < l; i++) { kwObj[types[i]] = atom;};
    
    var operators = ['eq', 'ne', 'lt', 'le', 'gt', 'ge', ':=', '=', '>', '>=', '<', '<=', '.', '|', '?', 'and', 'or', 'div', 'mod', '*', '/'];
    for(var i=0, l=operators.length; i < l; i++) { kwObj[operators[i]] = operator;};
    
    var axis_specifiers = ["self::", "attribute::", "child::", "descendant::", "descendant-or-self::", "parent::", 
    "ancestor::", "ancestor-or-self::", "following::", "preceding::", "following-sibling::", "preceding-sibling::"];
    for(var i=0, l=types.length; i < l; i++) { kwObj[axis_specifiers[i]] = qualifier(axis_specifiers[i]);};

    return kwObj;
  }();

  // Used as scratch variables to communicate multiple values without
  // consing up tons of objects.
  var type, content;
  function ret(tp, style, cont) {
    type = tp; content = cont;
    return style;
  }
  
  function chain(stream, state, f) {
    state.tokenize = f;
    return f(stream, state);
  }
  
  function tokenBase(stream, state) {
    var ch = stream.next(), mightBeFunction = false;
    
    if (ch == "<") {
      var isclose = stream.eat("/");;
      stream.eatSpace();
      tagName = "";
      var c;
      while ((c = stream.eat(/[^\s\u00a0=<>\"\'\/?]/))) tagName += c;
      return chain(stream, state, tokenTag(tagName, isclose));
    }
    // start code block
    else if(ch == "{") {
      state.stack.push({ type: "codeblock"});
      return ret("", "");
    }
    // end code block
    else if(ch == "}") {
      state.stack.pop();
      return ret("", "");
    }
    // if we're in an XML block
    else if(isInXmlBlock(state)) {
      if(ch == ">")
        return ret("tag", "tag");
      else  
        return ret("word", "word");
    }
    // if a number
    else if (/\d/.test(ch)) {
      stream.match(/^\d*(?:\.\d*)?(?:e[+\-]?\d+)?/);
      return ret("number", "atom");
    }
    // comment start
    else if (ch == "(") {
      if (stream.eat(":")) {
        return chain(stream, state, tokenComment);
      }
    }
    // quoted string
    else if (ch == '"' || ch == "'")
      return chain(stream, state, tokenString(ch));
    // variable
    else if(ch == "$") {
      return chain(stream, state, tokenVariable);
    }
    // assignment
    else if(ch ==":" && stream.eat("=")) {
      return ret("operator", "keyword");
    }
    // open paren
    else if(ch == "(") {
      state.stack.push({ type: "paren"});
      return ret("", "");
    }
    // close paren
    else if(ch == ")") {
      state.stack.pop();
      return ret("", "");
    }
    // open paren
    else if(ch == "[") {
      state.stack.push({ type: "bracket"});
      return ret("", "");
    }
    // close paren
    else if(ch == "]") {
      state.stack.pop();
      return ret("", "");
    }
    else {
      var known = keywords.propertyIsEnumerable(ch) && keywords[ch];
      
      // gobble up a word if the character is not known
      if(!known) stream.eatWhile(/[\w\$_-]/);
      
      // gobble a colon in the case that is a lib func type call fn:doc
      var foundColon = stream.eat(":")
      
      // if there's not a second colon, gobble another word. Otherwise, it's probably an axis specifier
      // which should get matched as a keyword
      if(!stream.eat(":") && foundColon) {
        stream.eatWhile(/[\w\$_-]/);
        
        // this is a function call, set a flag and address after we settle on the whole word
        mightBeFunction = true;        
      }
      // if the next non whitespace character is an open paren, this is probably a function (if not a keyword of other sort)
      else if(stream.match(/[ \t]*\(/, false)) {
        mightBeFunction = true;
      }
      // is the word a keyword?
      var word = stream.current();
      known = keywords.propertyIsEnumerable(word) && keywords[word];
      
      // if we think it's a function call but not yet known, 
      // set style to variable for now for lack of something better
      if(mightBeFunction && !known) known = {type: "function_call", style: "variable, xquery-function"};
      
      // if the previous word was element, attribute, axis specifier, this word should be the name of that
      if(isInXmlConstructor(state)) {
        state.stack.pop();
        return ret("word", "word", word);
      }
      // as previously checked, if the word is element,attribute, axis specifier, call it an "xmlconstructor" and 
      // push the stack so we know to look for it on the next word
      if(word == "element" || word == "attribute" || known.type == "axis_specifier") state.stack.push({type: "xmlconstructor"});
      
      return known ? ret(known.type, known.style, word) :
                     ret("word", "word", word);
    }
  }

  // handle comments, including nested 
  function tokenComment(stream, state) {
    var maybeEnd = false, maybeNested = false, nestedCount = 0, ch;
    while (ch = stream.next()) {
      if (ch == ")" && maybeEnd) {
        if(nestedCount > 0)
          nestedCount--;
        else {
          state.tokenize = tokenBase;
          break;
        }
      }
      else if(ch == ":" && maybeNested) {
        nestedCount++;
      }
      maybeEnd = (ch == ":");
      maybeNested = (ch == "(");
    }
    return ret("comment", "comment");
  }

  // handle string literals
  function tokenString(quote) {
    return function(stream, state) {
      var escaped = false, ch;
      while (ch = stream.next()) {
        if (ch ==  quote && !escaped) {
          state.tokenize = tokenBase;
          break;
        }
        // if the previous character was escaped, this is the escape character
        // so we just satified the escaping
        else if(escaped) {
          escaped = false;
        }
        else {
          escaped = (ch == "\\");          
        }
      }
      return ret("string", "string");
    };
  }
  
  function tokenVariable(stream, state) {
    var isVariableChar = /[\w\$_-]/;
    stream.eatWhile(isVariableChar);
    state.tokenize = tokenBase;
    return ret("variable", "variable");
  }
  
  function tokenTag(name, isclose) {
    return function(stream, state) {
      stream.eatSpace();
      if(isclose && stream.eat(">")) {
        state.stack.pop();
        state.tokenize = tokenBase;
        return ret("tag", "tag");
      }
      state.stack.push({ type: "tag", name: name });
      if(!stream.eat(">")) {
        state.tokenize = tokenAttribute;
        return ret("tag", "tag");
      }
      else {
        state.tokenize = tokenBase;        
      }
      return ret("tag", "tag");
    }
  }

  function tokenAttribute(stream, state) {
    stream.eat(/[a-zA-Z_:]/);
    stream.eatWhile(/[-a-zA-Z0-9_:.]/);
    stream.eatSpace();
    if(stream.peek(">"))
      state.tokenize = tokenBase;
    return ret("attribute", "attribute");
  }
  
  function isInXmlBlock(state) { return isIn(state, "tag"); }
  function isInCodeBlock(state) { return isIn(state, "codeblock"); }
  function isInXmlConstructor(state) { return isIn(state, "xmlconstructor"); }
  
  function isIn(state, type) {
    return (state.stack.length && state.stack[state.stack.length - 1].type == type);    
  }

  // the interface for the mode API
  return {
    startState: function(basecolumn) {
      return {
        tokenize: tokenBase,
        cc: [],
        stack: []
      };
    },

    token: function(stream, state) {
      if (stream.eatSpace()) return null;
      var style = state.tokenize(stream, state);
      //if (type == "comment") return style;
      return style;
    }
  };

});

CodeMirror.defineMIME("application/xquery", "xquery");
