/*! HHjQuery v3.5.1 | (c) JS Foundation and other contributors | jquery.org/license */
!function(e,t){"use strict";"object"==typeof module&&"object"==typeof module.exports?module.exports=e.document?t(e,!0):function(e){if(!e.document)throw new Error("jQuery requires a window with a document");return t(e)}:t(e)}("undefined"!=typeof window?window:this,function(C,e){"use strict";var t=[],r=Object.getPrototypeOf,s=t.slice,g=t.flat?function(e){return t.flat.call(e)}:function(e){return t.concat.apply([],e)},u=t.push,i=t.indexOf,n={},o=n.toString,v=n.hasOwnProperty,a=v.toString,l=a.call(Object),y={},m=function(e){return"function"==typeof e&&"number"!=typeof e.nodeType},x=function(e){return null!=e&&e===e.window},E=C.document,c={type:!0,src:!0,nonce:!0,noModule:!0};function b(e,t,n){var r,i,o=(n=n||E).createElement("script");if(o.text=e,t)for(r in c)(i=t[r]||t.getAttribute&&t.getAttribute(r))&&o.setAttribute(r,i);n.head.appendChild(o).parentNode.removeChild(o)}function w(e){return null==e?e+"":"object"==typeof e||"function"==typeof e?n[o.call(e)]||"object":typeof e}var f="3.5.1",S=function(e,t){return new S.fn.init(e,t)};function p(e){var t=!!e&&"length"in e&&e.length,n=w(e);return!m(e)&&!x(e)&&("array"===n||0===t||"number"==typeof t&&0<t&&t-1 in e)}S.fn=S.prototype={jquery:f,constructor:S,length:0,toArray:function(){return s.call(this)},get:function(e){return null==e?s.call(this):e<0?this[e+this.length]:this[e]},pushStack:function(e){var t=S.merge(this.constructor(),e);return t.prevObject=this,t},each:function(e){return S.each(this,e)},map:function(n){return this.pushStack(S.map(this,function(e,t){return n.call(e,t,e)}))},slice:function(){return this.pushStack(s.apply(this,arguments))},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},even:function(){return this.pushStack(S.grep(this,function(e,t){return(t+1)%2}))},odd:function(){return this.pushStack(S.grep(this,function(e,t){return t%2}))},eq:function(e){var t=this.length,n=+e+(e<0?t:0);return this.pushStack(0<=n&&n<t?[this[n]]:[])},end:function(){return this.prevObject||this.constructor()},push:u,sort:t.sort,splice:t.splice},S.extend=S.fn.extend=function(){var e,t,n,r,i,o,a=arguments[0]||{},s=1,u=arguments.length,l=!1;for("boolean"==typeof a&&(l=a,a=arguments[s]||{},s++),"object"==typeof a||m(a)||(a={}),s===u&&(a=this,s--);s<u;s++)if(null!=(e=arguments[s]))for(t in e)r=e[t],"__proto__"!==t&&a!==r&&(l&&r&&(S.isPlainObject(r)||(i=Array.isArray(r)))?(n=a[t],o=i&&!Array.isArray(n)?[]:i||S.isPlainObject(n)?n:{},i=!1,a[t]=S.extend(l,o,r)):void 0!==r&&(a[t]=r));return a},S.extend({expando:"jQuery"+(f+Math.random()).replace(/\D/g,""),isReady:!0,error:function(e){throw new Error(e)},noop:function(){},isPlainObject:function(e){var t,n;return!(!e||"[object Object]"!==o.call(e))&&(!(t=r(e))||"function"==typeof(n=v.call(t,"constructor")&&t.constructor)&&a.call(n)===l)},isEmptyObject:function(e){var t;for(t in e)return!1;return!0},globalEval:function(e,t,n){b(e,{nonce:t&&t.nonce},n)},each:function(e,t){var n,r=0;if(p(e)){for(n=e.length;r<n;r++)if(!1===t.call(e[r],r,e[r]))break}else for(r in e)if(!1===t.call(e[r],r,e[r]))break;return e},makeArray:function(e,t){var n=t||[];return null!=e&&(p(Object(e))?S.merge(n,"string"==typeof e?[e]:e):u.call(n,e)),n},inArray:function(e,t,n){return null==t?-1:i.call(t,e,n)},merge:function(e,t){for(var n=+t.length,r=0,i=e.length;r<n;r++)e[i++]=t[r];return e.length=i,e},grep:function(e,t,n){for(var r=[],i=0,o=e.length,a=!n;i<o;i++)!t(e[i],i)!==a&&r.push(e[i]);return r},map:function(e,t,n){var r,i,o=0,a=[];if(p(e))for(r=e.length;o<r;o++)null!=(i=t(e[o],o,n))&&a.push(i);else for(o in e)null!=(i=t(e[o],o,n))&&a.push(i);return g(a)},guid:1,support:y}),"function"==typeof Symbol&&(S.fn[Symbol.iterator]=t[Symbol.iterator]),S.each("Boolean Number String Function Array Date RegExp Object Error Symbol".split(" "),function(e,t){n["[object "+t+"]"]=t.toLowerCase()});var d=function(n){var e,d,b,o,i,h,f,g,w,u,l,T,C,a,E,v,s,c,y,S="sizzle"+1*new Date,p=n.document,k=0,r=0,m=ue(),x=ue(),A=ue(),N=ue(),D=function(e,t){return e===t&&(l=!0),0},j={}.hasOwnProperty,t=[],q=t.pop,L=t.push,H=t.push,O=t.slice,P=function(e,t){for(var n=0,r=e.length;n<r;n++)if(e[n]===t)return n;return-1},R="checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",M="[\\x20\\t\\r\\n\\f]",I="(?:\\\\[\\da-fA-F]{1,6}"+M+"?|\\\\[^\\r\\n\\f]|[\\w-]|[^\0-\\x7f])+",W="\\["+M+"*("+I+")(?:"+M+"*([*^$|!~]?=)"+M+"*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|("+I+"))|)"+M+"*\\]",F=":("+I+")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|"+W+")*)|.*)\\)|)",B=new RegExp(M+"+","g"),$=new RegExp("^"+M+"+|((?:^|[^\\\\])(?:\\\\.)*)"+M+"+$","g"),_=new RegExp("^"+M+"*,"+M+"*"),z=new RegExp("^"+M+"*([>+~]|"+M+")"+M+"*"),U=new RegExp(M+"|>"),X=new RegExp(F),V=new RegExp("^"+I+"$"),G={ID:new RegExp("^#("+I+")"),CLASS:new RegExp("^\\.("+I+")"),TAG:new RegExp("^("+I+"|[*])"),ATTR:new RegExp("^"+W),PSEUDO:new RegExp("^"+F),CHILD:new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\("+M+"*(even|odd|(([+-]|)(\\d*)n|)"+M+"*(?:([+-]|)"+M+"*(\\d+)|))"+M+"*\\)|)","i"),bool:new RegExp("^(?:"+R+")$","i"),needsContext:new RegExp("^"+M+"*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\("+M+"*((?:-\\d)?\\d*)"+M+"*\\)|)(?=[^-]|$)","i")},Y=/HTML$/i,Q=/^(?:input|select|textarea|button)$/i,J=/^h\d$/i,K=/^[^{]+\{\s*\[native \w/,Z=/^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,ee=/[+~]/,te=new RegExp("\\\\[\\da-fA-F]{1,6}"+M+"?|\\\\([^\\r\\n\\f])","g"),ne=function(e,t){var n="0x"+e.slice(1)-65536;return t||(n<0?String.fromCharCode(n+65536):String.fromCharCode(n>>10|55296,1023&n|56320))},re=/([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g,ie=function(e,t){return t?"\0"===e?"\ufffd":e.slice(0,-1)+"\\"+e.charCodeAt(e.length-1).toString(16)+" ":"\\"+e},oe=function(){T()},ae=be(function(e){return!0===e.disabled&&"fieldset"===e.nodeName.toLowerCase()},{dir:"parentNode",next:"legend"});try{H.apply(t=O.call(p.childNodes),p.childNodes),t[p.childNodes.length].nodeType}catch(e){H={apply:t.length?function(e,t){L.apply(e,O.call(t))}:function(e,t){var n=e.length,r=0;while(e[n++]=t[r++]);e.length=n-1}}}function se(t,e,n,r){var i,o,a,s,u,l,c,f=e&&e.ownerDocument,p=e?e.nodeType:9;if(n=n||[],"string"!=typeof t||!t||1!==p&&9!==p&&11!==p)return n;if(!r&&(T(e),e=e||C,E)){if(11!==p&&(u=Z.exec(t)))if(i=u[1]){if(9===p){if(!(a=e.getElementById(i)))return n;if(a.id===i)return n.push(a),n}else if(f&&(a=f.getElementById(i))&&y(e,a)&&a.id===i)return n.push(a),n}else{if(u[2])return H.apply(n,e.getElementsByTagName(t)),n;if((i=u[3])&&d.getElementsByClassName&&e.getElementsByClassName)return H.apply(n,e.getElementsByClassName(i)),n}if(d.qsa&&!N[t+" "]&&(!v||!v.test(t))&&(1!==p||"object"!==e.nodeName.toLowerCase())){if(c=t,f=e,1===p&&(U.test(t)||z.test(t))){(f=ee.test(t)&&ye(e.parentNode)||e)===e&&d.scope||((s=e.getAttribute("id"))?s=s.replace(re,ie):e.setAttribute("id",s=S)),o=(l=h(t)).length;while(o--)l[o]=(s?"#"+s:":scope")+" "+xe(l[o]);c=l.join(",")}try{return H.apply(n,f.querySelectorAll(c)),n}catch(e){N(t,!0)}finally{s===S&&e.removeAttribute("id")}}}return g(t.replace($,"$1"),e,n,r)}function ue(){var r=[];return function e(t,n){return r.push(t+" ")>b.cacheLength&&delete e[r.shift()],e[t+" "]=n}}function le(e){return e[S]=!0,e}function ce(e){var t=C.createElement("fieldset");try{return!!e(t)}catch(e){return!1}finally{t.parentNode&&t.parentNode.removeChild(t),t=null}}function fe(e,t){var n=e.split("|"),r=n.length;while(r--)b.attrHandle[n[r]]=t}function pe(e,t){var n=t&&e,r=n&&1===e.nodeType&&1===t.nodeType&&e.sourceIndex-t.sourceIndex;if(r)return r;if(n)while(n=n.nextSibling)if(n===t)return-1;return e?1:-1}function de(t){return function(e){return"input"===e.nodeName.toLowerCase()&&e.type===t}}function he(n){return function(e){var t=e.nodeName.toLowerCase();return("input"===t||"button"===t)&&e.type===n}}function ge(t){return function(e){return"form"in e?e.parentNode&&!1===e.disabled?"label"in e?"label"in e.parentNode?e.parentNode.disabled===t:e.disabled===t:e.isDisabled===t||e.isDisabled!==!t&&ae(e)===t:e.disabled===t:"label"in e&&e.disabled===t}}function ve(a){return le(function(o){return o=+o,le(function(e,t){var n,r=a([],e.length,o),i=r.length;while(i--)e[n=r[i]]&&(e[n]=!(t[n]=e[n]))})})}function ye(e){return e&&"undefined"!=typeof e.getElementsByTagName&&e}for(e in d=se.support={},i=se.isXML=function(e){var t=e.namespaceURI,n=(e.ownerDocument||e).documentElement;return!Y.test(t||n&&n.nodeName||"HTML")},T=se.setDocument=function(e){var t,n,r=e?e.ownerDocument||e:p;return r!=C&&9===r.nodeType&&r.documentElement&&(a=(C=r).documentElement,E=!i(C),p!=C&&(n=C.defaultView)&&n.top!==n&&(n.addEventListener?n.addEventListener("unload",oe,!1):n.attachEvent&&n.attachEvent("onunload",oe)),d.scope=ce(function(e){return a.appendChild(e).appendChild(C.createElement("div")),"undefined"!=typeof e.querySelectorAll&&!e.querySelectorAll(":scope fieldset div").length}),d.attributes=ce(function(e){return e.className="i",!e.getAttribute("className")}),d.getElementsByTagName=ce(function(e){return e.appendChild(C.createComment("")),!e.getElementsByTagName("*").length}),d.getElementsByClassName=K.test(C.getElementsByClassName),d.getById=ce(function(e){return a.appendChild(e).id=S,!C.getElementsByName||!C.getElementsByName(S).length}),d.getById?(b.filter.ID=function(e){var t=e.replace(te,ne);return function(e){return e.getAttribute("id")===t}},b.find.ID=function(e,t){if("undefined"!=typeof t.getElementById&&E){var n=t.getElementById(e);return n?[n]:[]}}):(b.filter.ID=function(e){var n=e.replace(te,ne);return function(e){var t="undefined"!=typeof e.getAttributeNode&&e.getAttributeNode("id");return t&&t.value===n}},b.find.ID=function(e,t){if("undefined"!=typeof t.getElementById&&E){var n,r,i,o=t.getElementById(e);if(o){if((n=o.getAttributeNode("id"))&&n.value===e)return[o];i=t.getElementsByName(e),r=0;while(o=i[r++])if((n=o.getAttributeNode("id"))&&n.value===e)return[o]}return[]}}),b.find.TAG=d.getElementsByTagName?function(e,t){return"undefined"!=typeof t.getElementsByTagName?t.getElementsByTagName(e):d.qsa?t.querySelectorAll(e):void 0}:function(e,t){var n,r=[],i=0,o=t.getElementsByTagName(e);if("*"===e){while(n=o[i++])1===n.nodeType&&r.push(n);return r}return o},b.find.CLASS=d.getElementsByClassName&&function(e,t){if("undefined"!=typeof t.getElementsByClassName&&E)return t.getElementsByClassName(e)},s=[],v=[],(d.qsa=K.test(C.querySelectorAll))&&(ce(function(e){var t;a.appendChild(e).innerHTML="<a id='"+S+"'></a><select id='"+S+"-\r\\' msallowcapture=''><option selected=''></option></select>",e.querySelectorAll("[msallowcapture^='']").length&&v.push("[*^$]="+M+"*(?:''|\"\")"),e.querySelectorAll("[selected]").length||v.push("\\["+M+"*(?:value|"+R+")"),e.querySelectorAll("[id~="+S+"-]").length||v.push("~="),(t=C.createElement("input")).setAttribute("name",""),e.appendChild(t),e.querySelectorAll("[name='']").length||v.push("\\["+M+"*name"+M+"*="+M+"*(?:''|\"\")"),e.querySelectorAll(":checked").length||v.push(":checked"),e.querySelectorAll("a#"+S+"+*").length||v.push(".#.+[+~]"),e.querySelectorAll("\\\f"),v.push("[\\r\\n\\f]")}),ce(function(e){e.innerHTML="<a href='' disabled='disabled'></a><select disabled='disabled'><option/></select>";var t=C.createElement("input");t.setAttribute("type","hidden"),e.appendChild(t).setAttribute("name","D"),e.querySelectorAll("[name=d]").length&&v.push("name"+M+"*[*^$|!~]?="),2!==e.querySelectorAll(":enabled").length&&v.push(":enabled",":disabled"),a.appendChild(e).disabled=!0,2!==e.querySelectorAll(":disabled").length&&v.push(":enabled",":disabled"),e.querySelectorAll("*,:x"),v.push(",.*:")})),(d.matchesSelector=K.test(c=a.matches||a.webkitMatchesSelector||a.mozMatchesSelector||a.oMatchesSelector||a.msMatchesSelector))&&ce(function(e){d.disconnectedMatch=c.call(e,"*"),c.call(e,"[s!='']:x"),s.push("!=",F)}),v=v.length&&new RegExp(v.join("|")),s=s.length&&new RegExp(s.join("|")),t=K.test(a.compareDocumentPosition),y=t||K.test(a.contains)?function(e,t){var n=9===e.nodeType?e.documentElement:e,r=t&&t.parentNode;return e===r||!(!r||1!==r.nodeType||!(n.contains?n.contains(r):e.compareDocumentPosition&&16&e.compareDocumentPosition(r)))}:function(e,t){if(t)while(t=t.parentNode)if(t===e)return!0;return!1},D=t?function(e,t){if(e===t)return l=!0,0;var n=!e.compareDocumentPosition-!t.compareDocumentPosition;return n||(1&(n=(e.ownerDocument||e)==(t.ownerDocument||t)?e.compareDocumentPosition(t):1)||!d.sortDetached&&t.compareDocumentPosition(e)===n?e==C||e.ownerDocument==p&&y(p,e)?-1:t==C||t.ownerDocument==p&&y(p,t)?1:u?P(u,e)-P(u,t):0:4&n?-1:1)}:function(e,t){if(e===t)return l=!0,0;var n,r=0,i=e.parentNode,o=t.parentNode,a=[e],s=[t];if(!i||!o)return e==C?-1:t==C?1:i?-1:o?1:u?P(u,e)-P(u,t):0;if(i===o)return pe(e,t);n=e;while(n=n.parentNode)a.unshift(n);n=t;while(n=n.parentNode)s.unshift(n);while(a[r]===s[r])r++;return r?pe(a[r],s[r]):a[r]==p?-1:s[r]==p?1:0}),C},se.matches=function(e,t){return se(e,null,null,t)},se.matchesSelector=function(e,t){if(T(e),d.matchesSelector&&E&&!N[t+" "]&&(!s||!s.test(t))&&(!v||!v.test(t)))try{var n=c.call(e,t);if(n||d.disconnectedMatch||e.document&&11!==e.document.nodeType)return n}catch(e){N(t,!0)}return 0<se(t,C,null,[e]).length},se.contains=function(e,t){return(e.ownerDocument||e)!=C&&T(e),y(e,t)},se.attr=function(e,t){(e.ownerDocument||e)!=C&&T(e);var n=b.attrHandle[t.toLowerCase()],r=n&&j.call(b.attrHandle,t.toLowerCase())?n(e,t,!E):void 0;return void 0!==r?r:d.attributes||!E?e.getAttribute(t):(r=e.getAttributeNode(t))&&r.specified?r.value:null},se.escape=function(e){return(e+"").replace(re,ie)},se.error=function(e){throw new Error("Syntax error, unrecognized expression: "+e)},se.uniqueSort=function(e){var t,n=[],r=0,i=0;if(l=!d.detectDuplicates,u=!d.sortStable&&e.slice(0),e.sort(D),l){while(t=e[i++])t===e[i]&&(r=n.push(i));while(r--)e.splice(n[r],1)}return u=null,e},o=se.getText=function(e){var t,n="",r=0,i=e.nodeType;if(i){if(1===i||9===i||11===i){if("string"==typeof e.textContent)return e.textContent;for(e=e.firstChild;e;e=e.nextSibling)n+=o(e)}else if(3===i||4===i)return e.nodeValue}else while(t=e[r++])n+=o(t);return n},(b=se.selectors={cacheLength:50,createPseudo:le,match:G,attrHandle:{},find:{},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:function(e){return e[1]=e[1].replace(te,ne),e[3]=(e[3]||e[4]||e[5]||"").replace(te,ne),"~="===e[2]&&(e[3]=" "+e[3]+" "),e.slice(0,4)},CHILD:function(e){return e[1]=e[1].toLowerCase(),"nth"===e[1].slice(0,3)?(e[3]||se.error(e[0]),e[4]=+(e[4]?e[5]+(e[6]||1):2*("even"===e[3]||"odd"===e[3])),e[5]=+(e[7]+e[8]||"odd"===e[3])):e[3]&&se.error(e[0]),e},PSEUDO:function(e){var t,n=!e[6]&&e[2];return G.CHILD.test(e[0])?null:(e[3]?e[2]=e[4]||e[5]||"":n&&X.test(n)&&(t=h(n,!0))&&(t=n.indexOf(")",n.length-t)-n.length)&&(e[0]=e[0].slice(0,t),e[2]=n.slice(0,t)),e.slice(0,3))}},filter:{TAG:function(e){var t=e.replace(te,ne).toLowerCase();return"*"===e?function(){return!0}:function(e){return e.nodeName&&e.nodeName.toLowerCase()===t}},CLASS:function(e){var t=m[e+" "];return t||(t=new RegExp("(^|"+M+")"+e+"("+M+"|$)"))&&m(e,function(e){return t.test("string"==typeof e.className&&e.className||"undefined"!=typeof e.getAttribute&&e.getAttribute("class")||"")})},ATTR:function(n,r,i){return function(e){var t=se.attr(e,n);return null==t?"!="===r:!r||(t+="","="===r?t===i:"!="===r?t!==i:"^="===r?i&&0===t.indexOf(i):"*="===r?i&&-1<t.indexOf(i):"$="===r?i&&t.slice(-i.length)===i:"~="===r?-1<(" "+t.replace(B," ")+" ").indexOf(i):"|="===r&&(t===i||t.slice(0,i.length+1)===i+"-"))}},CHILD:function(h,e,t,g,v){var y="nth"!==h.slice(0,3),m="last"!==h.slice(-4),x="of-type"===e;return 1===g&&0===v?function(e){return!!e.parentNode}:function(e,t,n){var r,i,o,a,s,u,l=y!==m?"nextSibling":"previousSibling",c=e.parentNode,f=x&&e.nodeName.toLowerCase(),p=!n&&!x,d=!1;if(c){if(y){while(l){a=e;while(a=a[l])if(x?a.nodeName.toLowerCase()===f:1===a.nodeType)return!1;u=l="only"===h&&!u&&"nextSibling"}return!0}if(u=[m?c.firstChild:c.lastChild],m&&p){d=(s=(r=(i=(o=(a=c)[S]||(a[S]={}))[a.uniqueID]||(o[a.uniqueID]={}))[h]||[])[0]===k&&r[1])&&r[2],a=s&&c.childNodes[s];while(a=++s&&a&&a[l]||(d=s=0)||u.pop())if(1===a.nodeType&&++d&&a===e){i[h]=[k,s,d];break}}else if(p&&(d=s=(r=(i=(o=(a=e)[S]||(a[S]={}))[a.uniqueID]||(o[a.uniqueID]={}))[h]||[])[0]===k&&r[1]),!1===d)while(a=++s&&a&&a[l]||(d=s=0)||u.pop())if((x?a.nodeName.toLowerCase()===f:1===a.nodeType)&&++d&&(p&&((i=(o=a[S]||(a[S]={}))[a.uniqueID]||(o[a.uniqueID]={}))[h]=[k,d]),a===e))break;return(d-=v)===g||d%g==0&&0<=d/g}}},PSEUDO:function(e,o){var t,a=b.pseudos[e]||b.setFilters[e.toLowerCase()]||se.error("unsupported pseudo: "+e);return a[S]?a(o):1<a.length?(t=[e,e,"",o],b.setFilters.hasOwnProperty(e.toLowerCase())?le(function(e,t){var n,r=a(e,o),i=r.length;while(i--)e[n=P(e,r[i])]=!(t[n]=r[i])}):function(e){return a(e,0,t)}):a}},pseudos:{not:le(function(e){var r=[],i=[],s=f(e.replace($,"$1"));return s[S]?le(function(e,t,n,r){var i,o=s(e,null,r,[]),a=e.length;while(a--)(i=o[a])&&(e[a]=!(t[a]=i))}):function(e,t,n){return r[0]=e,s(r,null,n,i),r[0]=null,!i.pop()}}),has:le(function(t){return function(e){return 0<se(t,e).length}}),contains:le(function(t){return t=t.replace(te,ne),function(e){return-1<(e.textContent||o(e)).indexOf(t)}}),lang:le(function(n){return V.test(n||"")||se.error("unsupported lang: "+n),n=n.replace(te,ne).toLowerCase(),function(e){var t;do{if(t=E?e.lang:e.getAttribute("xml:lang")||e.getAttribute("lang"))return(t=t.toLowerCase())===n||0===t.indexOf(n+"-")}while((e=e.parentNode)&&1===e.nodeType);return!1}}),target:function(e){var t=n.location&&n.location.hash;return t&&t.slice(1)===e.id},root:function(e){return e===a},focus:function(e){return e===C.activeElement&&(!C.hasFocus||C.hasFocus())&&!!(e.type||e.href||~e.tabIndex)},enabled:ge(!1),disabled:ge(!0),checked:function(e){var t=e.nodeName.toLowerCase();return"input"===t&&!!e.checked||"option"===t&&!!e.selected},selected:function(e){return e.parentNode&&e.parentNode.selectedIndex,!0===e.selected},empty:function(e){for(e=e.firstChild;e;e=e.nextSibling)if(e.nodeType<6)return!1;return!0},parent:function(e){return!b.pseudos.empty(e)},header:function(e){return J.test(e.nodeName)},input:function(e){return Q.test(e.nodeName)},button:function(e){var t=e.nodeName.toLowerCase();return"input"===t&&"button"===e.type||"button"===t},text:function(e){var t;return"input"===e.nodeName.toLowerCase()&&"text"===e.type&&(null==(t=e.getAttribute("type"))||"text"===t.toLowerCase())},first:ve(function(){return[0]}),last:ve(function(e,t){return[t-1]}),eq:ve(function(e,t,n){return[n<0?n+t:n]}),even:ve(function(e,t){for(var n=0;n<t;n+=2)e.push(n);return e}),odd:ve(function(e,t){for(var n=1;n<t;n+=2)e.push(n);return e}),lt:ve(function(e,t,n){for(var r=n<0?n+t:t<n?t:n;0<=--r;)e.push(r);return e}),gt:ve(function(e,t,n){for(var r=n<0?n+t:n;++r<t;)e.push(r);return e})}}).pseudos.nth=b.pseudos.eq,{radio:!0,checkbox:!0,file:!0,password:!0,image:!0})b.pseudos[e]=de(e);for(e in{submit:!0,reset:!0})b.pseudos[e]=he(e);function me(){}function xe(e){for(var t=0,n=e.length,r="";t<n;t++)r+=e[t].value;return r}function be(s,e,t){var u=e.dir,l=e.next,c=l||u,f=t&&"parentNode"===c,p=r++;return e.first?function(e,t,n){while(e=e[u])if(1===e.nodeType||f)return s(e,t,n);return!1}:function(e,t,n){var r,i,o,a=[k,p];if(n){while(e=e[u])if((1===e.nodeType||f)&&s(e,t,n))return!0}else while(e=e[u])if(1===e.nodeType||f)if(i=(o=e[S]||(e[S]={}))[e.uniqueID]||(o[e.uniqueID]={}),l&&l===e.nodeName.toLowerCase())e=e[u]||e;else{if((r=i[c])&&r[0]===k&&r[1]===p)return a[2]=r[2];if((i[c]=a)[2]=s(e,t,n))return!0}return!1}}function we(i){return 1<i.length?function(e,t,n){var r=i.length;while(r--)if(!i[r](e,t,n))return!1;return!0}:i[0]}function Te(e,t,n,r,i){for(var o,a=[],s=0,u=e.length,l=null!=t;s<u;s++)(o=e[s])&&(n&&!n(o,r,i)||(a.push(o),l&&t.push(s)));return a}function Ce(d,h,g,v,y,e){return v&&!v[S]&&(v=Ce(v)),y&&!y[S]&&(y=Ce(y,e)),le(function(e,t,n,r){var i,o,a,s=[],u=[],l=t.length,c=e||function(e,t,n){for(var r=0,i=t.length;r<i;r++)se(e,t[r],n);return n}(h||"*",n.nodeType?[n]:n,[]),f=!d||!e&&h?c:Te(c,s,d,n,r),p=g?y||(e?d:l||v)?[]:t:f;if(g&&g(f,p,n,r),v){i=Te(p,u),v(i,[],n,r),o=i.length;while(o--)(a=i[o])&&(p[u[o]]=!(f[u[o]]=a))}if(e){if(y||d){if(y){i=[],o=p.length;while(o--)(a=p[o])&&i.push(f[o]=a);y(null,p=[],i,r)}o=p.length;while(o--)(a=p[o])&&-1<(i=y?P(e,a):s[o])&&(e[i]=!(t[i]=a))}}else p=Te(p===t?p.splice(l,p.length):p),y?y(null,t,p,r):H.apply(t,p)})}function Ee(e){for(var i,t,n,r=e.length,o=b.relative[e[0].type],a=o||b.relative[" "],s=o?1:0,u=be(function(e){return e===i},a,!0),l=be(function(e){return-1<P(i,e)},a,!0),c=[function(e,t,n){var r=!o&&(n||t!==w)||((i=t).nodeType?u(e,t,n):l(e,t,n));return i=null,r}];s<r;s++)if(t=b.relative[e[s].type])c=[be(we(c),t)];else{if((t=b.filter[e[s].type].apply(null,e[s].matches))[S]){for(n=++s;n<r;n++)if(b.relative[e[n].type])break;return Ce(1<s&&we(c),1<s&&xe(e.slice(0,s-1).concat({value:" "===e[s-2].type?"*":""})).replace($,"$1"),t,s<n&&Ee(e.slice(s,n)),n<r&&Ee(e=e.slice(n)),n<r&&xe(e))}c.push(t)}return we(c)}return me.prototype=b.filters=b.pseudos,b.setFilters=new me,h=se.tokenize=function(e,t){var n,r,i,o,a,s,u,l=x[e+" "];if(l)return t?0:l.slice(0);a=e,s=[],u=b.preFilter;while(a){for(o in n&&!(r=_.exec(a))||(r&&(a=a.slice(r[0].length)||a),s.push(i=[])),n=!1,(r=z.exec(a))&&(n=r.shift(),i.push({value:n,type:r[0].replace($," ")}),a=a.slice(n.length)),b.filter)!(r=G[o].exec(a))||u[o]&&!(r=u[o](r))||(n=r.shift(),i.push({value:n,type:o,matches:r}),a=a.slice(n.length));if(!n)break}return t?a.length:a?se.error(e):x(e,s).slice(0)},f=se.compile=function(e,t){var n,v,y,m,x,r,i=[],o=[],a=A[e+" "];if(!a){t||(t=h(e)),n=t.length;while(n--)(a=Ee(t[n]))[S]?i.push(a):o.push(a);(a=A(e,(v=o,m=0<(y=i).length,x=0<v.length,r=function(e,t,n,r,i){var o,a,s,u=0,l="0",c=e&&[],f=[],p=w,d=e||x&&b.find.TAG("*",i),h=k+=null==p?1:Math.random()||.1,g=d.length;for(i&&(w=t==C||t||i);l!==g&&null!=(o=d[l]);l++){if(x&&o){a=0,t||o.ownerDocument==C||(T(o),n=!E);while(s=v[a++])if(s(o,t||C,n)){r.push(o);break}i&&(k=h)}m&&((o=!s&&o)&&u--,e&&c.push(o))}if(u+=l,m&&l!==u){a=0;while(s=y[a++])s(c,f,t,n);if(e){if(0<u)while(l--)c[l]||f[l]||(f[l]=q.call(r));f=Te(f)}H.apply(r,f),i&&!e&&0<f.length&&1<u+y.length&&se.uniqueSort(r)}return i&&(k=h,w=p),c},m?le(r):r))).selector=e}return a},g=se.select=function(e,t,n,r){var i,o,a,s,u,l="function"==typeof e&&e,c=!r&&h(e=l.selector||e);if(n=n||[],1===c.length){if(2<(o=c[0]=c[0].slice(0)).length&&"ID"===(a=o[0]).type&&9===t.nodeType&&E&&b.relative[o[1].type]){if(!(t=(b.find.ID(a.matches[0].replace(te,ne),t)||[])[0]))return n;l&&(t=t.parentNode),e=e.slice(o.shift().value.length)}i=G.needsContext.test(e)?0:o.length;while(i--){if(a=o[i],b.relative[s=a.type])break;if((u=b.find[s])&&(r=u(a.matches[0].replace(te,ne),ee.test(o[0].type)&&ye(t.parentNode)||t))){if(o.splice(i,1),!(e=r.length&&xe(o)))return H.apply(n,r),n;break}}}return(l||f(e,c))(r,t,!E,n,!t||ee.test(e)&&ye(t.parentNode)||t),n},d.sortStable=S.split("").sort(D).join("")===S,d.detectDuplicates=!!l,T(),d.sortDetached=ce(function(e){return 1&e.compareDocumentPosition(C.createElement("fieldset"))}),ce(function(e){return e.innerHTML="<a href='#'></a>","#"===e.firstChild.getAttribute("href")})||fe("type|href|height|width",function(e,t,n){if(!n)return e.getAttribute(t,"type"===t.toLowerCase()?1:2)}),d.attributes&&ce(function(e){return e.innerHTML="<input/>",e.firstChild.setAttribute("value",""),""===e.firstChild.getAttribute("value")})||fe("value",function(e,t,n){if(!n&&"input"===e.nodeName.toLowerCase())return e.defaultValue}),ce(function(e){return null==e.getAttribute("disabled")})||fe(R,function(e,t,n){var r;if(!n)return!0===e[t]?t.toLowerCase():(r=e.getAttributeNode(t))&&r.specified?r.value:null}),se}(C);S.find=d,S.expr=d.selectors,S.expr[":"]=S.expr.pseudos,S.uniqueSort=S.unique=d.uniqueSort,S.text=d.getText,S.isXMLDoc=d.isXML,S.contains=d.contains,S.escapeSelector=d.escape;var h=function(e,t,n){var r=[],i=void 0!==n;while((e=e[t])&&9!==e.nodeType)if(1===e.nodeType){if(i&&S(e).is(n))break;r.push(e)}return r},T=function(e,t){for(var n=[];e;e=e.nextSibling)1===e.nodeType&&e!==t&&n.push(e);return n},k=S.expr.match.needsContext;function A(e,t){return e.nodeName&&e.nodeName.toLowerCase()===t.toLowerCase()}var N=/^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\/?>(?:<\/\1>|)$/i;function D(e,n,r){return m(n)?S.grep(e,function(e,t){return!!n.call(e,t,e)!==r}):n.nodeType?S.grep(e,function(e){return e===n!==r}):"string"!=typeof n?S.grep(e,function(e){return-1<i.call(n,e)!==r}):S.filter(n,e,r)}S.filter=function(e,t,n){var r=t[0];return n&&(e=":not("+e+")"),1===t.length&&1===r.nodeType?S.find.matchesSelector(r,e)?[r]:[]:S.find.matches(e,S.grep(t,function(e){return 1===e.nodeType}))},S.fn.extend({find:function(e){var t,n,r=this.length,i=this;if("string"!=typeof e)return this.pushStack(S(e).filter(function(){for(t=0;t<r;t++)if(S.contains(i[t],this))return!0}));for(n=this.pushStack([]),t=0;t<r;t++)S.find(e,i[t],n);return 1<r?S.uniqueSort(n):n},filter:function(e){return this.pushStack(D(this,e||[],!1))},not:function(e){return this.pushStack(D(this,e||[],!0))},is:function(e){return!!D(this,"string"==typeof e&&k.test(e)?S(e):e||[],!1).length}});var j,q=/^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/;(S.fn.init=function(e,t,n){var r,i;if(!e)return this;if(n=n||j,"string"==typeof e){if(!(r="<"===e[0]&&">"===e[e.length-1]&&3<=e.length?[null,e,null]:q.exec(e))||!r[1]&&t)return!t||t.jquery?(t||n).find(e):this.constructor(t).find(e);if(r[1]){if(t=t instanceof S?t[0]:t,S.merge(this,S.parseHTML(r[1],t&&t.nodeType?t.ownerDocument||t:E,!0)),N.test(r[1])&&S.isPlainObject(t))for(r in t)m(this[r])?this[r](t[r]):this.attr(r,t[r]);return this}return(i=E.getElementById(r[2]))&&(this[0]=i,this.length=1),this}return e.nodeType?(this[0]=e,this.length=1,this):m(e)?void 0!==n.ready?n.ready(e):e(S):S.makeArray(e,this)}).prototype=S.fn,j=S(E);var L=/^(?:parents|prev(?:Until|All))/,H={children:!0,contents:!0,next:!0,prev:!0};function O(e,t){while((e=e[t])&&1!==e.nodeType);return e}S.fn.extend({has:function(e){var t=S(e,this),n=t.length;return this.filter(function(){for(var e=0;e<n;e++)if(S.contains(this,t[e]))return!0})},closest:function(e,t){var n,r=0,i=this.length,o=[],a="string"!=typeof e&&S(e);if(!k.test(e))for(;r<i;r++)for(n=this[r];n&&n!==t;n=n.parentNode)if(n.nodeType<11&&(a?-1<a.index(n):1===n.nodeType&&S.find.matchesSelector(n,e))){o.push(n);break}return this.pushStack(1<o.length?S.uniqueSort(o):o)},index:function(e){return e?"string"==typeof e?i.call(S(e),this[0]):i.call(this,e.jquery?e[0]:e):this[0]&&this[0].parentNode?this.first().prevAll().length:-1},add:function(e,t){return this.pushStack(S.uniqueSort(S.merge(this.get(),S(e,t))))},addBack:function(e){return this.add(null==e?this.prevObject:this.prevObject.filter(e))}}),S.each({parent:function(e){var t=e.parentNode;return t&&11!==t.nodeType?t:null},parents:function(e){return h(e,"parentNode")},parentsUntil:function(e,t,n){return h(e,"parentNode",n)},next:function(e){return O(e,"nextSibling")},prev:function(e){return O(e,"previousSibling")},nextAll:function(e){return h(e,"nextSibling")},prevAll:function(e){return h(e,"previousSibling")},nextUntil:function(e,t,n){return h(e,"nextSibling",n)},prevUntil:function(e,t,n){return h(e,"previousSibling",n)},siblings:function(e){return T((e.parentNode||{}).firstChild,e)},children:function(e){return T(e.firstChild)},contents:function(e){return null!=e.contentDocument&&r(e.contentDocument)?e.contentDocument:(A(e,"template")&&(e=e.content||e),S.merge([],e.childNodes))}},function(r,i){S.fn[r]=function(e,t){var n=S.map(this,i,e);return"Until"!==r.slice(-5)&&(t=e),t&&"string"==typeof t&&(n=S.filter(t,n)),1<this.length&&(H[r]||S.uniqueSort(n),L.test(r)&&n.reverse()),this.pushStack(n)}});var P=/[^\x20\t\r\n\f]+/g;function R(e){return e}function M(e){throw e}function I(e,t,n,r){var i;try{e&&m(i=e.promise)?i.call(e).done(t).fail(n):e&&m(i=e.then)?i.call(e,t,n):t.apply(void 0,[e].slice(r))}catch(e){n.apply(void 0,[e])}}S.Callbacks=function(r){var e,n;r="string"==typeof r?(e=r,n={},S.each(e.match(P)||[],function(e,t){n[t]=!0}),n):S.extend({},r);var i,t,o,a,s=[],u=[],l=-1,c=function(){for(a=a||r.once,o=i=!0;u.length;l=-1){t=u.shift();while(++l<s.length)!1===s[l].apply(t[0],t[1])&&r.stopOnFalse&&(l=s.length,t=!1)}r.memory||(t=!1),i=!1,a&&(s=t?[]:"")},f={add:function(){return s&&(t&&!i&&(l=s.length-1,u.push(t)),function n(e){S.each(e,function(e,t){m(t)?r.unique&&f.has(t)||s.push(t):t&&t.length&&"string"!==w(t)&&n(t)})}(arguments),t&&!i&&c()),this},remove:function(){return S.each(arguments,function(e,t){var n;while(-1<(n=S.inArray(t,s,n)))s.splice(n,1),n<=l&&l--}),this},has:function(e){return e?-1<S.inArray(e,s):0<s.length},empty:function(){return s&&(s=[]),this},disable:function(){return a=u=[],s=t="",this},disabled:function(){return!s},lock:function(){return a=u=[],t||i||(s=t=""),this},locked:function(){return!!a},fireWith:function(e,t){return a||(t=[e,(t=t||[]).slice?t.slice():t],u.push(t),i||c()),this},fire:function(){return f.fireWith(this,arguments),this},fired:function(){return!!o}};return f},S.extend({Deferred:function(e){var o=[["notify","progress",S.Callbacks("memory"),S.Callbacks("memory"),2],["resolve","done",S.Callbacks("once memory"),S.Callbacks("once memory"),0,"resolved"],["reject","fail",S.Callbacks("once memory"),S.Callbacks("once memory"),1,"rejected"]],i="pending",a={state:function(){return i},always:function(){return s.done(arguments).fail(arguments),this},"catch":function(e){return a.then(null,e)},pipe:function(){var i=arguments;return S.Deferred(function(r){S.each(o,function(e,t){var n=m(i[t[4]])&&i[t[4]];s[t[1]](function(){var e=n&&n.apply(this,arguments);e&&m(e.promise)?e.promise().progress(r.notify).done(r.resolve).fail(r.reject):r[t[0]+"With"](this,n?[e]:arguments)})}),i=null}).promise()},then:function(t,n,r){var u=0;function l(i,o,a,s){return function(){var n=this,r=arguments,e=function(){var e,t;if(!(i<u)){if((e=a.apply(n,r))===o.promise())throw new TypeError("Thenable self-resolution");t=e&&("object"==typeof e||"function"==typeof e)&&e.then,m(t)?s?t.call(e,l(u,o,R,s),l(u,o,M,s)):(u++,t.call(e,l(u,o,R,s),l(u,o,M,s),l(u,o,R,o.notifyWith))):(a!==R&&(n=void 0,r=[e]),(s||o.resolveWith)(n,r))}},t=s?e:function(){try{e()}catch(e){S.Deferred.exceptionHook&&S.Deferred.exceptionHook(e,t.stackTrace),u<=i+1&&(a!==M&&(n=void 0,r=[e]),o.rejectWith(n,r))}};i?t():(S.Deferred.getStackHook&&(t.stackTrace=S.Deferred.getStackHook()),C.setTimeout(t))}}return S.Deferred(function(e){o[0][3].add(l(0,e,m(r)?r:R,e.notifyWith)),o[1][3].add(l(0,e,m(t)?t:R)),o[2][3].add(l(0,e,m(n)?n:M))}).promise()},promise:function(e){return null!=e?S.extend(e,a):a}},s={};return S.each(o,function(e,t){var n=t[2],r=t[5];a[t[1]]=n.add,r&&n.add(function(){i=r},o[3-e][2].disable,o[3-e][3].disable,o[0][2].lock,o[0][3].lock),n.add(t[3].fire),s[t[0]]=function(){return s[t[0]+"With"](this===s?void 0:this,arguments),this},s[t[0]+"With"]=n.fireWith}),a.promise(s),e&&e.call(s,s),s},when:function(e){var n=arguments.length,t=n,r=Array(t),i=s.call(arguments),o=S.Deferred(),a=function(t){return function(e){r[t]=this,i[t]=1<arguments.length?s.call(arguments):e,--n||o.resolveWith(r,i)}};if(n<=1&&(I(e,o.done(a(t)).resolve,o.reject,!n),"pending"===o.state()||m(i[t]&&i[t].then)))return o.then();while(t--)I(i[t],a(t),o.reject);return o.promise()}});var W=/^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error$/;S.Deferred.exceptionHook=function(e,t){C.console&&C.console.warn&&e&&W.test(e.name)&&C.console.warn("jQuery.Deferred exception: "+e.message,e.stack,t)},S.readyException=function(e){C.setTimeout(function(){throw e})};var F=S.Deferred();function B(){E.removeEventListener("DOMContentLoaded",B),C.removeEventListener("load",B),S.ready()}S.fn.ready=function(e){return F.then(e)["catch"](function(e){S.readyException(e)}),this},S.extend({isReady:!1,readyWait:1,ready:function(e){(!0===e?--S.readyWait:S.isReady)||(S.isReady=!0)!==e&&0<--S.readyWait||F.resolveWith(E,[S])}}),S.ready.then=F.then,"complete"===E.readyState||"loading"!==E.readyState&&!E.documentElement.doScroll?C.setTimeout(S.ready):(E.addEventListener("DOMContentLoaded",B),C.addEventListener("load",B));var $=function(e,t,n,r,i,o,a){var s=0,u=e.length,l=null==n;if("object"===w(n))for(s in i=!0,n)$(e,t,s,n[s],!0,o,a);else if(void 0!==r&&(i=!0,m(r)||(a=!0),l&&(a?(t.call(e,r),t=null):(l=t,t=function(e,t,n){return l.call(S(e),n)})),t))for(;s<u;s++)t(e[s],n,a?r:r.call(e[s],s,t(e[s],n)));return i?e:l?t.call(e):u?t(e[0],n):o},_=/^-ms-/,z=/-([a-z])/g;function U(e,t){return t.toUpperCase()}function X(e){return e.replace(_,"ms-").replace(z,U)}var V=function(e){return 1===e.nodeType||9===e.nodeType||!+e.nodeType};function G(){this.expando=S.expando+G.uid++}G.uid=1,G.prototype={cache:function(e){var t=e[this.expando];return t||(t={},V(e)&&(e.nodeType?e[this.expando]=t:Object.defineProperty(e,this.expando,{value:t,configurable:!0}))),t},set:function(e,t,n){var r,i=this.cache(e);if("string"==typeof t)i[X(t)]=n;else for(r in t)i[X(r)]=t[r];return i},get:function(e,t){return void 0===t?this.cache(e):e[this.expando]&&e[this.expando][X(t)]},access:function(e,t,n){return void 0===t||t&&"string"==typeof t&&void 0===n?this.get(e,t):(this.set(e,t,n),void 0!==n?n:t)},remove:function(e,t){var n,r=e[this.expando];if(void 0!==r){if(void 0!==t){n=(t=Array.isArray(t)?t.map(X):(t=X(t))in r?[t]:t.match(P)||[]).length;while(n--)delete r[t[n]]}(void 0===t||S.isEmptyObject(r))&&(e.nodeType?e[this.expando]=void 0:delete e[this.expando])}},hasData:function(e){var t=e[this.expando];return void 0!==t&&!S.isEmptyObject(t)}};var Y=new G,Q=new G,J=/^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,K=/[A-Z]/g;function Z(e,t,n){var r,i;if(void 0===n&&1===e.nodeType)if(r="data-"+t.replace(K,"-$&").toLowerCase(),"string"==typeof(n=e.getAttribute(r))){try{n="true"===(i=n)||"false"!==i&&("null"===i?null:i===+i+""?+i:J.test(i)?JSON.parse(i):i)}catch(e){}Q.set(e,t,n)}else n=void 0;return n}S.extend({hasData:function(e){return Q.hasData(e)||Y.hasData(e)},data:function(e,t,n){return Q.access(e,t,n)},removeData:function(e,t){Q.remove(e,t)},_data:function(e,t,n){return Y.access(e,t,n)},_removeData:function(e,t){Y.remove(e,t)}}),S.fn.extend({data:function(n,e){var t,r,i,o=this[0],a=o&&o.attributes;if(void 0===n){if(this.length&&(i=Q.get(o),1===o.nodeType&&!Y.get(o,"hasDataAttrs"))){t=a.length;while(t--)a[t]&&0===(r=a[t].name).indexOf("data-")&&(r=X(r.slice(5)),Z(o,r,i[r]));Y.set(o,"hasDataAttrs",!0)}return i}return"object"==typeof n?this.each(function(){Q.set(this,n)}):$(this,function(e){var t;if(o&&void 0===e)return void 0!==(t=Q.get(o,n))?t:void 0!==(t=Z(o,n))?t:void 0;this.each(function(){Q.set(this,n,e)})},null,e,1<arguments.length,null,!0)},removeData:function(e){return this.each(function(){Q.remove(this,e)})}}),S.extend({queue:function(e,t,n){var r;if(e)return t=(t||"fx")+"queue",r=Y.get(e,t),n&&(!r||Array.isArray(n)?r=Y.access(e,t,S.makeArray(n)):r.push(n)),r||[]},dequeue:function(e,t){t=t||"fx";var n=S.queue(e,t),r=n.length,i=n.shift(),o=S._queueHooks(e,t);"inprogress"===i&&(i=n.shift(),r--),i&&("fx"===t&&n.unshift("inprogress"),delete o.stop,i.call(e,function(){S.dequeue(e,t)},o)),!r&&o&&o.empty.fire()},_queueHooks:function(e,t){var n=t+"queueHooks";return Y.get(e,n)||Y.access(e,n,{empty:S.Callbacks("once memory").add(function(){Y.remove(e,[t+"queue",n])})})}}),S.fn.extend({queue:function(t,n){var e=2;return"string"!=typeof t&&(n=t,t="fx",e--),arguments.length<e?S.queue(this[0],t):void 0===n?this:this.each(function(){var e=S.queue(this,t,n);S._queueHooks(this,t),"fx"===t&&"inprogress"!==e[0]&&S.dequeue(this,t)})},dequeue:function(e){return this.each(function(){S.dequeue(this,e)})},clearQueue:function(e){return this.queue(e||"fx",[])},promise:function(e,t){var n,r=1,i=S.Deferred(),o=this,a=this.length,s=function(){--r||i.resolveWith(o,[o])};"string"!=typeof e&&(t=e,e=void 0),e=e||"fx";while(a--)(n=Y.get(o[a],e+"queueHooks"))&&n.empty&&(r++,n.empty.add(s));return s(),i.promise(t)}});var ee=/[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,te=new RegExp("^(?:([+-])=|)("+ee+")([a-z%]*)$","i"),ne=["Top","Right","Bottom","Left"],re=E.documentElement,ie=function(e){return S.contains(e.ownerDocument,e)},oe={composed:!0};re.getRootNode&&(ie=function(e){return S.contains(e.ownerDocument,e)||e.getRootNode(oe)===e.ownerDocument});var ae=function(e,t){return"none"===(e=t||e).style.display||""===e.style.display&&ie(e)&&"none"===S.css(e,"display")};function se(e,t,n,r){var i,o,a=20,s=r?function(){return r.cur()}:function(){return S.css(e,t,"")},u=s(),l=n&&n[3]||(S.cssNumber[t]?"":"px"),c=e.nodeType&&(S.cssNumber[t]||"px"!==l&&+u)&&te.exec(S.css(e,t));if(c&&c[3]!==l){u/=2,l=l||c[3],c=+u||1;while(a--)S.style(e,t,c+l),(1-o)*(1-(o=s()/u||.5))<=0&&(a=0),c/=o;c*=2,S.style(e,t,c+l),n=n||[]}return n&&(c=+c||+u||0,i=n[1]?c+(n[1]+1)*n[2]:+n[2],r&&(r.unit=l,r.start=c,r.end=i)),i}var ue={};function le(e,t){for(var n,r,i,o,a,s,u,l=[],c=0,f=e.length;c<f;c++)(r=e[c]).style&&(n=r.style.display,t?("none"===n&&(l[c]=Y.get(r,"display")||null,l[c]||(r.style.display="")),""===r.style.display&&ae(r)&&(l[c]=(u=a=o=void 0,a=(i=r).ownerDocument,s=i.nodeName,(u=ue[s])||(o=a.body.appendChild(a.createElement(s)),u=S.css(o,"display"),o.parentNode.removeChild(o),"none"===u&&(u="block"),ue[s]=u)))):"none"!==n&&(l[c]="none",Y.set(r,"display",n)));for(c=0;c<f;c++)null!=l[c]&&(e[c].style.display=l[c]);return e}S.fn.extend({show:function(){return le(this,!0)},hide:function(){return le(this)},toggle:function(e){return"boolean"==typeof e?e?this.show():this.hide():this.each(function(){ae(this)?S(this).show():S(this).hide()})}});var ce,fe,pe=/^(?:checkbox|radio)$/i,de=/<([a-z][^\/\0>\x20\t\r\n\f]*)/i,he=/^$|^module$|\/(?:java|ecma)script/i;ce=E.createDocumentFragment().appendChild(E.createElement("div")),(fe=E.createElement("input")).setAttribute("type","radio"),fe.setAttribute("checked","checked"),fe.setAttribute("name","t"),ce.appendChild(fe),y.checkClone=ce.cloneNode(!0).cloneNode(!0).lastChild.checked,ce.innerHTML="<textarea>x</textarea>",y.noCloneChecked=!!ce.cloneNode(!0).lastChild.defaultValue,ce.innerHTML="<option></option>",y.option=!!ce.lastChild;var ge={thead:[1,"<table>","</table>"],col:[2,"<table><colgroup>","</colgroup></table>"],tr:[2,"<table><tbody>","</tbody></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],_default:[0,"",""]};function ve(e,t){var n;return n="undefined"!=typeof e.getElementsByTagName?e.getElementsByTagName(t||"*"):"undefined"!=typeof e.querySelectorAll?e.querySelectorAll(t||"*"):[],void 0===t||t&&A(e,t)?S.merge([e],n):n}function ye(e,t){for(var n=0,r=e.length;n<r;n++)Y.set(e[n],"globalEval",!t||Y.get(t[n],"globalEval"))}ge.tbody=ge.tfoot=ge.colgroup=ge.caption=ge.thead,ge.th=ge.td,y.option||(ge.optgroup=ge.option=[1,"<select multiple='multiple'>","</select>"]);var me=/<|&#?\w+;/;function xe(e,t,n,r,i){for(var o,a,s,u,l,c,f=t.createDocumentFragment(),p=[],d=0,h=e.length;d<h;d++)if((o=e[d])||0===o)if("object"===w(o))S.merge(p,o.nodeType?[o]:o);else if(me.test(o)){a=a||f.appendChild(t.createElement("div")),s=(de.exec(o)||["",""])[1].toLowerCase(),u=ge[s]||ge._default,a.innerHTML=u[1]+S.htmlPrefilter(o)+u[2],c=u[0];while(c--)a=a.lastChild;S.merge(p,a.childNodes),(a=f.firstChild).textContent=""}else p.push(t.createTextNode(o));f.textContent="",d=0;while(o=p[d++])if(r&&-1<S.inArray(o,r))i&&i.push(o);else if(l=ie(o),a=ve(f.appendChild(o),"script"),l&&ye(a),n){c=0;while(o=a[c++])he.test(o.type||"")&&n.push(o)}return f}var be=/^key/,we=/^(?:mouse|pointer|contextmenu|drag|drop)|click/,Te=/^([^.]*)(?:\.(.+)|)/;function Ce(){return!0}function Ee(){return!1}function Se(e,t){return e===function(){try{return E.activeElement}catch(e){}}()==("focus"===t)}function ke(e,t,n,r,i,o){var a,s;if("object"==typeof t){for(s in"string"!=typeof n&&(r=r||n,n=void 0),t)ke(e,s,n,r,t[s],o);return e}if(null==r&&null==i?(i=n,r=n=void 0):null==i&&("string"==typeof n?(i=r,r=void 0):(i=r,r=n,n=void 0)),!1===i)i=Ee;else if(!i)return e;return 1===o&&(a=i,(i=function(e){return S().off(e),a.apply(this,arguments)}).guid=a.guid||(a.guid=S.guid++)),e.each(function(){S.event.add(this,t,i,r,n)})}function Ae(e,i,o){o?(Y.set(e,i,!1),S.event.add(e,i,{namespace:!1,handler:function(e){var t,n,r=Y.get(this,i);if(1&e.isTrigger&&this[i]){if(r.length)(S.event.special[i]||{}).delegateType&&e.stopPropagation();else if(r=s.call(arguments),Y.set(this,i,r),t=o(this,i),this[i](),r!==(n=Y.get(this,i))||t?Y.set(this,i,!1):n={},r!==n)return e.stopImmediatePropagation(),e.preventDefault(),n.value}else r.length&&(Y.set(this,i,{value:S.event.trigger(S.extend(r[0],S.Event.prototype),r.slice(1),this)}),e.stopImmediatePropagation())}})):void 0===Y.get(e,i)&&S.event.add(e,i,Ce)}S.event={global:{},add:function(t,e,n,r,i){var o,a,s,u,l,c,f,p,d,h,g,v=Y.get(t);if(V(t)){n.handler&&(n=(o=n).handler,i=o.selector),i&&S.find.matchesSelector(re,i),n.guid||(n.guid=S.guid++),(u=v.events)||(u=v.events=Object.create(null)),(a=v.handle)||(a=v.handle=function(e){return"undefined"!=typeof S&&S.event.triggered!==e.type?S.event.dispatch.apply(t,arguments):void 0}),l=(e=(e||"").match(P)||[""]).length;while(l--)d=g=(s=Te.exec(e[l])||[])[1],h=(s[2]||"").split(".").sort(),d&&(f=S.event.special[d]||{},d=(i?f.delegateType:f.bindType)||d,f=S.event.special[d]||{},c=S.extend({type:d,origType:g,data:r,handler:n,guid:n.guid,selector:i,needsContext:i&&S.expr.match.needsContext.test(i),namespace:h.join(".")},o),(p=u[d])||((p=u[d]=[]).delegateCount=0,f.setup&&!1!==f.setup.call(t,r,h,a)||t.addEventListener&&t.addEventListener(d,a)),f.add&&(f.add.call(t,c),c.handler.guid||(c.handler.guid=n.guid)),i?p.splice(p.delegateCount++,0,c):p.push(c),S.event.global[d]=!0)}},remove:function(e,t,n,r,i){var o,a,s,u,l,c,f,p,d,h,g,v=Y.hasData(e)&&Y.get(e);if(v&&(u=v.events)){l=(t=(t||"").match(P)||[""]).length;while(l--)if(d=g=(s=Te.exec(t[l])||[])[1],h=(s[2]||"").split(".").sort(),d){f=S.event.special[d]||{},p=u[d=(r?f.delegateType:f.bindType)||d]||[],s=s[2]&&new RegExp("(^|\\.)"+h.join("\\.(?:.*\\.|)")+"(\\.|$)"),a=o=p.length;while(o--)c=p[o],!i&&g!==c.origType||n&&n.guid!==c.guid||s&&!s.test(c.namespace)||r&&r!==c.selector&&("**"!==r||!c.selector)||(p.splice(o,1),c.selector&&p.delegateCount--,f.remove&&f.remove.call(e,c));a&&!p.length&&(f.teardown&&!1!==f.teardown.call(e,h,v.handle)||S.removeEvent(e,d,v.handle),delete u[d])}else for(d in u)S.event.remove(e,d+t[l],n,r,!0);S.isEmptyObject(u)&&Y.remove(e,"handle events")}},dispatch:function(e){var t,n,r,i,o,a,s=new Array(arguments.length),u=S.event.fix(e),l=(Y.get(this,"events")||Object.create(null))[u.type]||[],c=S.event.special[u.type]||{};for(s[0]=u,t=1;t<arguments.length;t++)s[t]=arguments[t];if(u.delegateTarget=this,!c.preDispatch||!1!==c.preDispatch.call(this,u)){a=S.event.handlers.call(this,u,l),t=0;while((i=a[t++])&&!u.isPropagationStopped()){u.currentTarget=i.elem,n=0;while((o=i.handlers[n++])&&!u.isImmediatePropagationStopped())u.rnamespace&&!1!==o.namespace&&!u.rnamespace.test(o.namespace)||(u.handleObj=o,u.data=o.data,void 0!==(r=((S.event.special[o.origType]||{}).handle||o.handler).apply(i.elem,s))&&!1===(u.result=r)&&(u.preventDefault(),u.stopPropagation()))}return c.postDispatch&&c.postDispatch.call(this,u),u.result}},handlers:function(e,t){var n,r,i,o,a,s=[],u=t.delegateCount,l=e.target;if(u&&l.nodeType&&!("click"===e.type&&1<=e.button))for(;l!==this;l=l.parentNode||this)if(1===l.nodeType&&("click"!==e.type||!0!==l.disabled)){for(o=[],a={},n=0;n<u;n++)void 0===a[i=(r=t[n]).selector+" "]&&(a[i]=r.needsContext?-1<S(i,this).index(l):S.find(i,this,null,[l]).length),a[i]&&o.push(r);o.length&&s.push({elem:l,handlers:o})}return l=this,u<t.length&&s.push({elem:l,handlers:t.slice(u)}),s},addProp:function(t,e){Object.defineProperty(S.Event.prototype,t,{enumerable:!0,configurable:!0,get:m(e)?function(){if(this.originalEvent)return e(this.originalEvent)}:function(){if(this.originalEvent)return this.originalEvent[t]},set:function(e){Object.defineProperty(this,t,{enumerable:!0,configurable:!0,writable:!0,value:e})}})},fix:function(e){return e[S.expando]?e:new S.Event(e)},special:{load:{noBubble:!0},click:{setup:function(e){var t=this||e;return pe.test(t.type)&&t.click&&A(t,"input")&&Ae(t,"click",Ce),!1},trigger:function(e){var t=this||e;return pe.test(t.type)&&t.click&&A(t,"input")&&Ae(t,"click"),!0},_default:function(e){var t=e.target;return pe.test(t.type)&&t.click&&A(t,"input")&&Y.get(t,"click")||A(t,"a")}},beforeunload:{postDispatch:function(e){void 0!==e.result&&e.originalEvent&&(e.originalEvent.returnValue=e.result)}}}},S.removeEvent=function(e,t,n){e.removeEventListener&&e.removeEventListener(t,n)},S.Event=function(e,t){if(!(this instanceof S.Event))return new S.Event(e,t);e&&e.type?(this.originalEvent=e,this.type=e.type,this.isDefaultPrevented=e.defaultPrevented||void 0===e.defaultPrevented&&!1===e.returnValue?Ce:Ee,this.target=e.target&&3===e.target.nodeType?e.target.parentNode:e.target,this.currentTarget=e.currentTarget,this.relatedTarget=e.relatedTarget):this.type=e,t&&S.extend(this,t),this.timeStamp=e&&e.timeStamp||Date.now(),this[S.expando]=!0},S.Event.prototype={constructor:S.Event,isDefaultPrevented:Ee,isPropagationStopped:Ee,isImmediatePropagationStopped:Ee,isSimulated:!1,preventDefault:function(){var e=this.originalEvent;this.isDefaultPrevented=Ce,e&&!this.isSimulated&&e.preventDefault()},stopPropagation:function(){var e=this.originalEvent;this.isPropagationStopped=Ce,e&&!this.isSimulated&&e.stopPropagation()},stopImmediatePropagation:function(){var e=this.originalEvent;this.isImmediatePropagationStopped=Ce,e&&!this.isSimulated&&e.stopImmediatePropagation(),this.stopPropagation()}},S.each({altKey:!0,bubbles:!0,cancelable:!0,changedTouches:!0,ctrlKey:!0,detail:!0,eventPhase:!0,metaKey:!0,pageX:!0,pageY:!0,shiftKey:!0,view:!0,"char":!0,code:!0,charCode:!0,key:!0,keyCode:!0,button:!0,buttons:!0,clientX:!0,clientY:!0,offsetX:!0,offsetY:!0,pointerId:!0,pointerType:!0,screenX:!0,screenY:!0,targetTouches:!0,toElement:!0,touches:!0,which:function(e){var t=e.button;return null==e.which&&be.test(e.type)?null!=e.charCode?e.charCode:e.keyCode:!e.which&&void 0!==t&&we.test(e.type)?1&t?1:2&t?3:4&t?2:0:e.which}},S.event.addProp),S.each({focus:"focusin",blur:"focusout"},function(e,t){S.event.special[e]={setup:function(){return Ae(this,e,Se),!1},trigger:function(){return Ae(this,e),!0},delegateType:t}}),S.each({mouseenter:"mouseover",mouseleave:"mouseout",pointerenter:"pointerover",pointerleave:"pointerout"},function(e,i){S.event.special[e]={delegateType:i,bindType:i,handle:function(e){var t,n=e.relatedTarget,r=e.handleObj;return n&&(n===this||S.contains(this,n))||(e.type=r.origType,t=r.handler.apply(this,arguments),e.type=i),t}}}),S.fn.extend({on:function(e,t,n,r){return ke(this,e,t,n,r)},one:function(e,t,n,r){return ke(this,e,t,n,r,1)},off:function(e,t,n){var r,i;if(e&&e.preventDefault&&e.handleObj)return r=e.handleObj,S(e.delegateTarget).off(r.namespace?r.origType+"."+r.namespace:r.origType,r.selector,r.handler),this;if("object"==typeof e){for(i in e)this.off(i,t,e[i]);return this}return!1!==t&&"function"!=typeof t||(n=t,t=void 0),!1===n&&(n=Ee),this.each(function(){S.event.remove(this,e,n,t)})}});var Ne=/<script|<style|<link/i,De=/checked\s*(?:[^=]|=\s*.checked.)/i,je=/^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;function qe(e,t){return A(e,"table")&&A(11!==t.nodeType?t:t.firstChild,"tr")&&S(e).children("tbody")[0]||e}function Le(e){return e.type=(null!==e.getAttribute("type"))+"/"+e.type,e}function He(e){return"true/"===(e.type||"").slice(0,5)?e.type=e.type.slice(5):e.removeAttribute("type"),e}function Oe(e,t){var n,r,i,o,a,s;if(1===t.nodeType){if(Y.hasData(e)&&(s=Y.get(e).events))for(i in Y.remove(t,"handle events"),s)for(n=0,r=s[i].length;n<r;n++)S.event.add(t,i,s[i][n]);Q.hasData(e)&&(o=Q.access(e),a=S.extend({},o),Q.set(t,a))}}function Pe(n,r,i,o){r=g(r);var e,t,a,s,u,l,c=0,f=n.length,p=f-1,d=r[0],h=m(d);if(h||1<f&&"string"==typeof d&&!y.checkClone&&De.test(d))return n.each(function(e){var t=n.eq(e);h&&(r[0]=d.call(this,e,t.html())),Pe(t,r,i,o)});if(f&&(t=(e=xe(r,n[0].ownerDocument,!1,n,o)).firstChild,1===e.childNodes.length&&(e=t),t||o)){for(s=(a=S.map(ve(e,"script"),Le)).length;c<f;c++)u=e,c!==p&&(u=S.clone(u,!0,!0),s&&S.merge(a,ve(u,"script"))),i.call(n[c],u,c);if(s)for(l=a[a.length-1].ownerDocument,S.map(a,He),c=0;c<s;c++)u=a[c],he.test(u.type||"")&&!Y.access(u,"globalEval")&&S.contains(l,u)&&(u.src&&"module"!==(u.type||"").toLowerCase()?S._evalUrl&&!u.noModule&&S._evalUrl(u.src,{nonce:u.nonce||u.getAttribute("nonce")},l):b(u.textContent.replace(je,""),u,l))}return n}function Re(e,t,n){for(var r,i=t?S.filter(t,e):e,o=0;null!=(r=i[o]);o++)n||1!==r.nodeType||S.cleanData(ve(r)),r.parentNode&&(n&&ie(r)&&ye(ve(r,"script")),r.parentNode.removeChild(r));return e}S.extend({htmlPrefilter:function(e){return e},clone:function(e,t,n){var r,i,o,a,s,u,l,c=e.cloneNode(!0),f=ie(e);if(!(y.noCloneChecked||1!==e.nodeType&&11!==e.nodeType||S.isXMLDoc(e)))for(a=ve(c),r=0,i=(o=ve(e)).length;r<i;r++)s=o[r],u=a[r],void 0,"input"===(l=u.nodeName.toLowerCase())&&pe.test(s.type)?u.checked=s.checked:"input"!==l&&"textarea"!==l||(u.defaultValue=s.defaultValue);if(t)if(n)for(o=o||ve(e),a=a||ve(c),r=0,i=o.length;r<i;r++)Oe(o[r],a[r]);else Oe(e,c);return 0<(a=ve(c,"script")).length&&ye(a,!f&&ve(e,"script")),c},cleanData:function(e){for(var t,n,r,i=S.event.special,o=0;void 0!==(n=e[o]);o++)if(V(n)){if(t=n[Y.expando]){if(t.events)for(r in t.events)i[r]?S.event.remove(n,r):S.removeEvent(n,r,t.handle);n[Y.expando]=void 0}n[Q.expando]&&(n[Q.expando]=void 0)}}}),S.fn.extend({detach:function(e){return Re(this,e,!0)},remove:function(e){return Re(this,e)},text:function(e){return $(this,function(e){return void 0===e?S.text(this):this.empty().each(function(){1!==this.nodeType&&11!==this.nodeType&&9!==this.nodeType||(this.textContent=e)})},null,e,arguments.length)},append:function(){return Pe(this,arguments,function(e){1!==this.nodeType&&11!==this.nodeType&&9!==this.nodeType||qe(this,e).appendChild(e)})},prepend:function(){return Pe(this,arguments,function(e){if(1===this.nodeType||11===this.nodeType||9===this.nodeType){var t=qe(this,e);t.insertBefore(e,t.firstChild)}})},before:function(){return Pe(this,arguments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this)})},after:function(){return Pe(this,arguments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this.nextSibling)})},empty:function(){for(var e,t=0;null!=(e=this[t]);t++)1===e.nodeType&&(S.cleanData(ve(e,!1)),e.textContent="");return this},clone:function(e,t){return e=null!=e&&e,t=null==t?e:t,this.map(function(){return S.clone(this,e,t)})},html:function(e){return $(this,function(e){var t=this[0]||{},n=0,r=this.length;if(void 0===e&&1===t.nodeType)return t.innerHTML;if("string"==typeof e&&!Ne.test(e)&&!ge[(de.exec(e)||["",""])[1].toLowerCase()]){e=S.htmlPrefilter(e);try{for(;n<r;n++)1===(t=this[n]||{}).nodeType&&(S.cleanData(ve(t,!1)),t.innerHTML=e);t=0}catch(e){}}t&&this.empty().append(e)},null,e,arguments.length)},replaceWith:function(){var n=[];return Pe(this,arguments,function(e){var t=this.parentNode;S.inArray(this,n)<0&&(S.cleanData(ve(this)),t&&t.replaceChild(e,this))},n)}}),S.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(e,a){S.fn[e]=function(e){for(var t,n=[],r=S(e),i=r.length-1,o=0;o<=i;o++)t=o===i?this:this.clone(!0),S(r[o])[a](t),u.apply(n,t.get());return this.pushStack(n)}});var Me=new RegExp("^("+ee+")(?!px)[a-z%]+$","i"),Ie=function(e){var t=e.ownerDocument.defaultView;return t&&t.opener||(t=C),t.getComputedStyle(e)},We=function(e,t,n){var r,i,o={};for(i in t)o[i]=e.style[i],e.style[i]=t[i];for(i in r=n.call(e),t)e.style[i]=o[i];return r},Fe=new RegExp(ne.join("|"),"i");function Be(e,t,n){var r,i,o,a,s=e.style;return(n=n||Ie(e))&&(""!==(a=n.getPropertyValue(t)||n[t])||ie(e)||(a=S.style(e,t)),!y.pixelBoxStyles()&&Me.test(a)&&Fe.test(t)&&(r=s.width,i=s.minWidth,o=s.maxWidth,s.minWidth=s.maxWidth=s.width=a,a=n.width,s.width=r,s.minWidth=i,s.maxWidth=o)),void 0!==a?a+"":a}function $e(e,t){return{get:function(){if(!e())return(this.get=t).apply(this,arguments);delete this.get}}}!function(){function e(){if(l){u.style.cssText="position:absolute;left:-11111px;width:60px;margin-top:1px;padding:0;border:0",l.style.cssText="position:relative;display:block;box-sizing:border-box;overflow:scroll;margin:auto;border:1px;padding:1px;width:60%;top:1%",re.appendChild(u).appendChild(l);var e=C.getComputedStyle(l);n="1%"!==e.top,s=12===t(e.marginLeft),l.style.right="60%",o=36===t(e.right),r=36===t(e.width),l.style.position="absolute",i=12===t(l.offsetWidth/3),re.removeChild(u),l=null}}function t(e){return Math.round(parseFloat(e))}var n,r,i,o,a,s,u=E.createElement("div"),l=E.createElement("div");l.style&&(l.style.backgroundClip="content-box",l.cloneNode(!0).style.backgroundClip="",y.clearCloneStyle="content-box"===l.style.backgroundClip,S.extend(y,{boxSizingReliable:function(){return e(),r},pixelBoxStyles:function(){return e(),o},pixelPosition:function(){return e(),n},reliableMarginLeft:function(){return e(),s},scrollboxSize:function(){return e(),i},reliableTrDimensions:function(){var e,t,n,r;return null==a&&(e=E.createElement("table"),t=E.createElement("tr"),n=E.createElement("div"),e.style.cssText="position:absolute;left:-11111px",t.style.height="1px",n.style.height="9px",re.appendChild(e).appendChild(t).appendChild(n),r=C.getComputedStyle(t),a=3<parseInt(r.height),re.removeChild(e)),a}}))}();var _e=["Webkit","Moz","ms"],ze=E.createElement("div").style,Ue={};function Xe(e){var t=S.cssProps[e]||Ue[e];return t||(e in ze?e:Ue[e]=function(e){var t=e[0].toUpperCase()+e.slice(1),n=_e.length;while(n--)if((e=_e[n]+t)in ze)return e}(e)||e)}var Ve=/^(none|table(?!-c[ea]).+)/,Ge=/^--/,Ye={position:"absolute",visibility:"hidden",display:"block"},Qe={letterSpacing:"0",fontWeight:"400"};function Je(e,t,n){var r=te.exec(t);return r?Math.max(0,r[2]-(n||0))+(r[3]||"px"):t}function Ke(e,t,n,r,i,o){var a="width"===t?1:0,s=0,u=0;if(n===(r?"border":"content"))return 0;for(;a<4;a+=2)"margin"===n&&(u+=S.css(e,n+ne[a],!0,i)),r?("content"===n&&(u-=S.css(e,"padding"+ne[a],!0,i)),"margin"!==n&&(u-=S.css(e,"border"+ne[a]+"Width",!0,i))):(u+=S.css(e,"padding"+ne[a],!0,i),"padding"!==n?u+=S.css(e,"border"+ne[a]+"Width",!0,i):s+=S.css(e,"border"+ne[a]+"Width",!0,i));return!r&&0<=o&&(u+=Math.max(0,Math.ceil(e["offset"+t[0].toUpperCase()+t.slice(1)]-o-u-s-.5))||0),u}function Ze(e,t,n){var r=Ie(e),i=(!y.boxSizingReliable()||n)&&"border-box"===S.css(e,"boxSizing",!1,r),o=i,a=Be(e,t,r),s="offset"+t[0].toUpperCase()+t.slice(1);if(Me.test(a)){if(!n)return a;a="auto"}return(!y.boxSizingReliable()&&i||!y.reliableTrDimensions()&&A(e,"tr")||"auto"===a||!parseFloat(a)&&"inline"===S.css(e,"display",!1,r))&&e.getClientRects().length&&(i="border-box"===S.css(e,"boxSizing",!1,r),(o=s in e)&&(a=e[s])),(a=parseFloat(a)||0)+Ke(e,t,n||(i?"border":"content"),o,r,a)+"px"}function et(e,t,n,r,i){return new et.prototype.init(e,t,n,r,i)}S.extend({cssHooks:{opacity:{get:function(e,t){if(t){var n=Be(e,"opacity");return""===n?"1":n}}}},cssNumber:{animationIterationCount:!0,columnCount:!0,fillOpacity:!0,flexGrow:!0,flexShrink:!0,fontWeight:!0,gridArea:!0,gridColumn:!0,gridColumnEnd:!0,gridColumnStart:!0,gridRow:!0,gridRowEnd:!0,gridRowStart:!0,lineHeight:!0,opacity:!0,order:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{},style:function(e,t,n,r){if(e&&3!==e.nodeType&&8!==e.nodeType&&e.style){var i,o,a,s=X(t),u=Ge.test(t),l=e.style;if(u||(t=Xe(s)),a=S.cssHooks[t]||S.cssHooks[s],void 0===n)return a&&"get"in a&&void 0!==(i=a.get(e,!1,r))?i:l[t];"string"===(o=typeof n)&&(i=te.exec(n))&&i[1]&&(n=se(e,t,i),o="number"),null!=n&&n==n&&("number"!==o||u||(n+=i&&i[3]||(S.cssNumber[s]?"":"px")),y.clearCloneStyle||""!==n||0!==t.indexOf("background")||(l[t]="inherit"),a&&"set"in a&&void 0===(n=a.set(e,n,r))||(u?l.setProperty(t,n):l[t]=n))}},css:function(e,t,n,r){var i,o,a,s=X(t);return Ge.test(t)||(t=Xe(s)),(a=S.cssHooks[t]||S.cssHooks[s])&&"get"in a&&(i=a.get(e,!0,n)),void 0===i&&(i=Be(e,t,r)),"normal"===i&&t in Qe&&(i=Qe[t]),""===n||n?(o=parseFloat(i),!0===n||isFinite(o)?o||0:i):i}}),S.each(["height","width"],function(e,u){S.cssHooks[u]={get:function(e,t,n){if(t)return!Ve.test(S.css(e,"display"))||e.getClientRects().length&&e.getBoundingClientRect().width?Ze(e,u,n):We(e,Ye,function(){return Ze(e,u,n)})},set:function(e,t,n){var r,i=Ie(e),o=!y.scrollboxSize()&&"absolute"===i.position,a=(o||n)&&"border-box"===S.css(e,"boxSizing",!1,i),s=n?Ke(e,u,n,a,i):0;return a&&o&&(s-=Math.ceil(e["offset"+u[0].toUpperCase()+u.slice(1)]-parseFloat(i[u])-Ke(e,u,"border",!1,i)-.5)),s&&(r=te.exec(t))&&"px"!==(r[3]||"px")&&(e.style[u]=t,t=S.css(e,u)),Je(0,t,s)}}}),S.cssHooks.marginLeft=$e(y.reliableMarginLeft,function(e,t){if(t)return(parseFloat(Be(e,"marginLeft"))||e.getBoundingClientRect().left-We(e,{marginLeft:0},function(){return e.getBoundingClientRect().left}))+"px"}),S.each({margin:"",padding:"",border:"Width"},function(i,o){S.cssHooks[i+o]={expand:function(e){for(var t=0,n={},r="string"==typeof e?e.split(" "):[e];t<4;t++)n[i+ne[t]+o]=r[t]||r[t-2]||r[0];return n}},"margin"!==i&&(S.cssHooks[i+o].set=Je)}),S.fn.extend({css:function(e,t){return $(this,function(e,t,n){var r,i,o={},a=0;if(Array.isArray(t)){for(r=Ie(e),i=t.length;a<i;a++)o[t[a]]=S.css(e,t[a],!1,r);return o}return void 0!==n?S.style(e,t,n):S.css(e,t)},e,t,1<arguments.length)}}),((S.Tween=et).prototype={constructor:et,init:function(e,t,n,r,i,o){this.elem=e,this.prop=n,this.easing=i||S.easing._default,this.options=t,this.start=this.now=this.cur(),this.end=r,this.unit=o||(S.cssNumber[n]?"":"px")},cur:function(){var e=et.propHooks[this.prop];return e&&e.get?e.get(this):et.propHooks._default.get(this)},run:function(e){var t,n=et.propHooks[this.prop];return this.options.duration?this.pos=t=S.easing[this.easing](e,this.options.duration*e,0,1,this.options.duration):this.pos=t=e,this.now=(this.end-this.start)*t+this.start,this.options.step&&this.options.step.call(this.elem,this.now,this),n&&n.set?n.set(this):et.propHooks._default.set(this),this}}).init.prototype=et.prototype,(et.propHooks={_default:{get:function(e){var t;return 1!==e.elem.nodeType||null!=e.elem[e.prop]&&null==e.elem.style[e.prop]?e.elem[e.prop]:(t=S.css(e.elem,e.prop,""))&&"auto"!==t?t:0},set:function(e){S.fx.step[e.prop]?S.fx.step[e.prop](e):1!==e.elem.nodeType||!S.cssHooks[e.prop]&&null==e.elem.style[Xe(e.prop)]?e.elem[e.prop]=e.now:S.style(e.elem,e.prop,e.now+e.unit)}}}).scrollTop=et.propHooks.scrollLeft={set:function(e){e.elem.nodeType&&e.elem.parentNode&&(e.elem[e.prop]=e.now)}},S.easing={linear:function(e){return e},swing:function(e){return.5-Math.cos(e*Math.PI)/2},_default:"swing"},S.fx=et.prototype.init,S.fx.step={};var tt,nt,rt,it,ot=/^(?:toggle|show|hide)$/,at=/queueHooks$/;function st(){nt&&(!1===E.hidden&&C.requestAnimationFrame?C.requestAnimationFrame(st):C.setTimeout(st,S.fx.interval),S.fx.tick())}function ut(){return C.setTimeout(function(){tt=void 0}),tt=Date.now()}function lt(e,t){var n,r=0,i={height:e};for(t=t?1:0;r<4;r+=2-t)i["margin"+(n=ne[r])]=i["padding"+n]=e;return t&&(i.opacity=i.width=e),i}function ct(e,t,n){for(var r,i=(ft.tweeners[t]||[]).concat(ft.tweeners["*"]),o=0,a=i.length;o<a;o++)if(r=i[o].call(n,t,e))return r}function ft(o,e,t){var n,a,r=0,i=ft.prefilters.length,s=S.Deferred().always(function(){delete u.elem}),u=function(){if(a)return!1;for(var e=tt||ut(),t=Math.max(0,l.startTime+l.duration-e),n=1-(t/l.duration||0),r=0,i=l.tweens.length;r<i;r++)l.tweens[r].run(n);return s.notifyWith(o,[l,n,t]),n<1&&i?t:(i||s.notifyWith(o,[l,1,0]),s.resolveWith(o,[l]),!1)},l=s.promise({elem:o,props:S.extend({},e),opts:S.extend(!0,{specialEasing:{},easing:S.easing._default},t),originalProperties:e,originalOptions:t,startTime:tt||ut(),duration:t.duration,tweens:[],createTween:function(e,t){var n=S.Tween(o,l.opts,e,t,l.opts.specialEasing[e]||l.opts.easing);return l.tweens.push(n),n},stop:function(e){var t=0,n=e?l.tweens.length:0;if(a)return this;for(a=!0;t<n;t++)l.tweens[t].run(1);return e?(s.notifyWith(o,[l,1,0]),s.resolveWith(o,[l,e])):s.rejectWith(o,[l,e]),this}}),c=l.props;for(!function(e,t){var n,r,i,o,a;for(n in e)if(i=t[r=X(n)],o=e[n],Array.isArray(o)&&(i=o[1],o=e[n]=o[0]),n!==r&&(e[r]=o,delete e[n]),(a=S.cssHooks[r])&&"expand"in a)for(n in o=a.expand(o),delete e[r],o)n in e||(e[n]=o[n],t[n]=i);else t[r]=i}(c,l.opts.specialEasing);r<i;r++)if(n=ft.prefilters[r].call(l,o,c,l.opts))return m(n.stop)&&(S._queueHooks(l.elem,l.opts.queue).stop=n.stop.bind(n)),n;return S.map(c,ct,l),m(l.opts.start)&&l.opts.start.call(o,l),l.progress(l.opts.progress).done(l.opts.done,l.opts.complete).fail(l.opts.fail).always(l.opts.always),S.fx.timer(S.extend(u,{elem:o,anim:l,queue:l.opts.queue})),l}S.Animation=S.extend(ft,{tweeners:{"*":[function(e,t){var n=this.createTween(e,t);return se(n.elem,e,te.exec(t),n),n}]},tweener:function(e,t){m(e)?(t=e,e=["*"]):e=e.match(P);for(var n,r=0,i=e.length;r<i;r++)n=e[r],ft.tweeners[n]=ft.tweeners[n]||[],ft.tweeners[n].unshift(t)},prefilters:[function(e,t,n){var r,i,o,a,s,u,l,c,f="width"in t||"height"in t,p=this,d={},h=e.style,g=e.nodeType&&ae(e),v=Y.get(e,"fxshow");for(r in n.queue||(null==(a=S._queueHooks(e,"fx")).unqueued&&(a.unqueued=0,s=a.empty.fire,a.empty.fire=function(){a.unqueued||s()}),a.unqueued++,p.always(function(){p.always(function(){a.unqueued--,S.queue(e,"fx").length||a.empty.fire()})})),t)if(i=t[r],ot.test(i)){if(delete t[r],o=o||"toggle"===i,i===(g?"hide":"show")){if("show"!==i||!v||void 0===v[r])continue;g=!0}d[r]=v&&v[r]||S.style(e,r)}if((u=!S.isEmptyObject(t))||!S.isEmptyObject(d))for(r in f&&1===e.nodeType&&(n.overflow=[h.overflow,h.overflowX,h.overflowY],null==(l=v&&v.display)&&(l=Y.get(e,"display")),"none"===(c=S.css(e,"display"))&&(l?c=l:(le([e],!0),l=e.style.display||l,c=S.css(e,"display"),le([e]))),("inline"===c||"inline-block"===c&&null!=l)&&"none"===S.css(e,"float")&&(u||(p.done(function(){h.display=l}),null==l&&(c=h.display,l="none"===c?"":c)),h.display="inline-block")),n.overflow&&(h.overflow="hidden",p.always(function(){h.overflow=n.overflow[0],h.overflowX=n.overflow[1],h.overflowY=n.overflow[2]})),u=!1,d)u||(v?"hidden"in v&&(g=v.hidden):v=Y.access(e,"fxshow",{display:l}),o&&(v.hidden=!g),g&&le([e],!0),p.done(function(){for(r in g||le([e]),Y.remove(e,"fxshow"),d)S.style(e,r,d[r])})),u=ct(g?v[r]:0,r,p),r in v||(v[r]=u.start,g&&(u.end=u.start,u.start=0))}],prefilter:function(e,t){t?ft.prefilters.unshift(e):ft.prefilters.push(e)}}),S.speed=function(e,t,n){var r=e&&"object"==typeof e?S.extend({},e):{complete:n||!n&&t||m(e)&&e,duration:e,easing:n&&t||t&&!m(t)&&t};return S.fx.off?r.duration=0:"number"!=typeof r.duration&&(r.duration in S.fx.speeds?r.duration=S.fx.speeds[r.duration]:r.duration=S.fx.speeds._default),null!=r.queue&&!0!==r.queue||(r.queue="fx"),r.old=r.complete,r.complete=function(){m(r.old)&&r.old.call(this),r.queue&&S.dequeue(this,r.queue)},r},S.fn.extend({fadeTo:function(e,t,n,r){return this.filter(ae).css("opacity",0).show().end().animate({opacity:t},e,n,r)},animate:function(t,e,n,r){var i=S.isEmptyObject(t),o=S.speed(e,n,r),a=function(){var e=ft(this,S.extend({},t),o);(i||Y.get(this,"finish"))&&e.stop(!0)};return a.finish=a,i||!1===o.queue?this.each(a):this.queue(o.queue,a)},stop:function(i,e,o){var a=function(e){var t=e.stop;delete e.stop,t(o)};return"string"!=typeof i&&(o=e,e=i,i=void 0),e&&this.queue(i||"fx",[]),this.each(function(){var e=!0,t=null!=i&&i+"queueHooks",n=S.timers,r=Y.get(this);if(t)r[t]&&r[t].stop&&a(r[t]);else for(t in r)r[t]&&r[t].stop&&at.test(t)&&a(r[t]);for(t=n.length;t--;)n[t].elem!==this||null!=i&&n[t].queue!==i||(n[t].anim.stop(o),e=!1,n.splice(t,1));!e&&o||S.dequeue(this,i)})},finish:function(a){return!1!==a&&(a=a||"fx"),this.each(function(){var e,t=Y.get(this),n=t[a+"queue"],r=t[a+"queueHooks"],i=S.timers,o=n?n.length:0;for(t.finish=!0,S.queue(this,a,[]),r&&r.stop&&r.stop.call(this,!0),e=i.length;e--;)i[e].elem===this&&i[e].queue===a&&(i[e].anim.stop(!0),i.splice(e,1));for(e=0;e<o;e++)n[e]&&n[e].finish&&n[e].finish.call(this);delete t.finish})}}),S.each(["toggle","show","hide"],function(e,r){var i=S.fn[r];S.fn[r]=function(e,t,n){return null==e||"boolean"==typeof e?i.apply(this,arguments):this.animate(lt(r,!0),e,t,n)}}),S.each({slideDown:lt("show"),slideUp:lt("hide"),slideToggle:lt("toggle"),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(e,r){S.fn[e]=function(e,t,n){return this.animate(r,e,t,n)}}),S.timers=[],S.fx.tick=function(){var e,t=0,n=S.timers;for(tt=Date.now();t<n.length;t++)(e=n[t])()||n[t]!==e||n.splice(t--,1);n.length||S.fx.stop(),tt=void 0},S.fx.timer=function(e){S.timers.push(e),S.fx.start()},S.fx.interval=13,S.fx.start=function(){nt||(nt=!0,st())},S.fx.stop=function(){nt=null},S.fx.speeds={slow:600,fast:200,_default:400},S.fn.delay=function(r,e){return r=S.fx&&S.fx.speeds[r]||r,e=e||"fx",this.queue(e,function(e,t){var n=C.setTimeout(e,r);t.stop=function(){C.clearTimeout(n)}})},rt=E.createElement("input"),it=E.createElement("select").appendChild(E.createElement("option")),rt.type="checkbox",y.checkOn=""!==rt.value,y.optSelected=it.selected,(rt=E.createElement("input")).value="t",rt.type="radio",y.radioValue="t"===rt.value;var pt,dt=S.expr.attrHandle;S.fn.extend({attr:function(e,t){return $(this,S.attr,e,t,1<arguments.length)},removeAttr:function(e){return this.each(function(){S.removeAttr(this,e)})}}),S.extend({attr:function(e,t,n){var r,i,o=e.nodeType;if(3!==o&&8!==o&&2!==o)return"undefined"==typeof e.getAttribute?S.prop(e,t,n):(1===o&&S.isXMLDoc(e)||(i=S.attrHooks[t.toLowerCase()]||(S.expr.match.bool.test(t)?pt:void 0)),void 0!==n?null===n?void S.removeAttr(e,t):i&&"set"in i&&void 0!==(r=i.set(e,n,t))?r:(e.setAttribute(t,n+""),n):i&&"get"in i&&null!==(r=i.get(e,t))?r:null==(r=S.find.attr(e,t))?void 0:r)},attrHooks:{type:{set:function(e,t){if(!y.radioValue&&"radio"===t&&A(e,"input")){var n=e.value;return e.setAttribute("type",t),n&&(e.value=n),t}}}},removeAttr:function(e,t){var n,r=0,i=t&&t.match(P);if(i&&1===e.nodeType)while(n=i[r++])e.removeAttribute(n)}}),pt={set:function(e,t,n){return!1===t?S.removeAttr(e,n):e.setAttribute(n,n),n}},S.each(S.expr.match.bool.source.match(/\w+/g),function(e,t){var a=dt[t]||S.find.attr;dt[t]=function(e,t,n){var r,i,o=t.toLowerCase();return n||(i=dt[o],dt[o]=r,r=null!=a(e,t,n)?o:null,dt[o]=i),r}});var ht=/^(?:input|select|textarea|button)$/i,gt=/^(?:a|area)$/i;function vt(e){return(e.match(P)||[]).join(" ")}function yt(e){return e.getAttribute&&e.getAttribute("class")||""}function mt(e){return Array.isArray(e)?e:"string"==typeof e&&e.match(P)||[]}S.fn.extend({prop:function(e,t){return $(this,S.prop,e,t,1<arguments.length)},removeProp:function(e){return this.each(function(){delete this[S.propFix[e]||e]})}}),S.extend({prop:function(e,t,n){var r,i,o=e.nodeType;if(3!==o&&8!==o&&2!==o)return 1===o&&S.isXMLDoc(e)||(t=S.propFix[t]||t,i=S.propHooks[t]),void 0!==n?i&&"set"in i&&void 0!==(r=i.set(e,n,t))?r:e[t]=n:i&&"get"in i&&null!==(r=i.get(e,t))?r:e[t]},propHooks:{tabIndex:{get:function(e){var t=S.find.attr(e,"tabindex");return t?parseInt(t,10):ht.test(e.nodeName)||gt.test(e.nodeName)&&e.href?0:-1}}},propFix:{"for":"htmlFor","class":"className"}}),y.optSelected||(S.propHooks.selected={get:function(e){var t=e.parentNode;return t&&t.parentNode&&t.parentNode.selectedIndex,null},set:function(e){var t=e.parentNode;t&&(t.selectedIndex,t.parentNode&&t.parentNode.selectedIndex)}}),S.each(["tabIndex","readOnly","maxLength","cellSpacing","cellPadding","rowSpan","colSpan","useMap","frameBorder","contentEditable"],function(){S.propFix[this.toLowerCase()]=this}),S.fn.extend({addClass:function(t){var e,n,r,i,o,a,s,u=0;if(m(t))return this.each(function(e){S(this).addClass(t.call(this,e,yt(this)))});if((e=mt(t)).length)while(n=this[u++])if(i=yt(n),r=1===n.nodeType&&" "+vt(i)+" "){a=0;while(o=e[a++])r.indexOf(" "+o+" ")<0&&(r+=o+" ");i!==(s=vt(r))&&n.setAttribute("class",s)}return this},removeClass:function(t){var e,n,r,i,o,a,s,u=0;if(m(t))return this.each(function(e){S(this).removeClass(t.call(this,e,yt(this)))});if(!arguments.length)return this.attr("class","");if((e=mt(t)).length)while(n=this[u++])if(i=yt(n),r=1===n.nodeType&&" "+vt(i)+" "){a=0;while(o=e[a++])while(-1<r.indexOf(" "+o+" "))r=r.replace(" "+o+" "," ");i!==(s=vt(r))&&n.setAttribute("class",s)}return this},toggleClass:function(i,t){var o=typeof i,a="string"===o||Array.isArray(i);return"boolean"==typeof t&&a?t?this.addClass(i):this.removeClass(i):m(i)?this.each(function(e){S(this).toggleClass(i.call(this,e,yt(this),t),t)}):this.each(function(){var e,t,n,r;if(a){t=0,n=S(this),r=mt(i);while(e=r[t++])n.hasClass(e)?n.removeClass(e):n.addClass(e)}else void 0!==i&&"boolean"!==o||((e=yt(this))&&Y.set(this,"__className__",e),this.setAttribute&&this.setAttribute("class",e||!1===i?"":Y.get(this,"__className__")||""))})},hasClass:function(e){var t,n,r=0;t=" "+e+" ";while(n=this[r++])if(1===n.nodeType&&-1<(" "+vt(yt(n))+" ").indexOf(t))return!0;return!1}});var xt=/\r/g;S.fn.extend({val:function(n){var r,e,i,t=this[0];return arguments.length?(i=m(n),this.each(function(e){var t;1===this.nodeType&&(null==(t=i?n.call(this,e,S(this).val()):n)?t="":"number"==typeof t?t+="":Array.isArray(t)&&(t=S.map(t,function(e){return null==e?"":e+""})),(r=S.valHooks[this.type]||S.valHooks[this.nodeName.toLowerCase()])&&"set"in r&&void 0!==r.set(this,t,"value")||(this.value=t))})):t?(r=S.valHooks[t.type]||S.valHooks[t.nodeName.toLowerCase()])&&"get"in r&&void 0!==(e=r.get(t,"value"))?e:"string"==typeof(e=t.value)?e.replace(xt,""):null==e?"":e:void 0}}),S.extend({valHooks:{option:{get:function(e){var t=S.find.attr(e,"value");return null!=t?t:vt(S.text(e))}},select:{get:function(e){var t,n,r,i=e.options,o=e.selectedIndex,a="select-one"===e.type,s=a?null:[],u=a?o+1:i.length;for(r=o<0?u:a?o:0;r<u;r++)if(((n=i[r]).selected||r===o)&&!n.disabled&&(!n.parentNode.disabled||!A(n.parentNode,"optgroup"))){if(t=S(n).val(),a)return t;s.push(t)}return s},set:function(e,t){var n,r,i=e.options,o=S.makeArray(t),a=i.length;while(a--)((r=i[a]).selected=-1<S.inArray(S.valHooks.option.get(r),o))&&(n=!0);return n||(e.selectedIndex=-1),o}}}}),S.each(["radio","checkbox"],function(){S.valHooks[this]={set:function(e,t){if(Array.isArray(t))return e.checked=-1<S.inArray(S(e).val(),t)}},y.checkOn||(S.valHooks[this].get=function(e){return null===e.getAttribute("value")?"on":e.value})}),y.focusin="onfocusin"in C;var bt=/^(?:focusinfocus|focusoutblur)$/,wt=function(e){e.stopPropagation()};S.extend(S.event,{trigger:function(e,t,n,r){var i,o,a,s,u,l,c,f,p=[n||E],d=v.call(e,"type")?e.type:e,h=v.call(e,"namespace")?e.namespace.split("."):[];if(o=f=a=n=n||E,3!==n.nodeType&&8!==n.nodeType&&!bt.test(d+S.event.triggered)&&(-1<d.indexOf(".")&&(d=(h=d.split(".")).shift(),h.sort()),u=d.indexOf(":")<0&&"on"+d,(e=e[S.expando]?e:new S.Event(d,"object"==typeof e&&e)).isTrigger=r?2:3,e.namespace=h.join("."),e.rnamespace=e.namespace?new RegExp("(^|\\.)"+h.join("\\.(?:.*\\.|)")+"(\\.|$)"):null,e.result=void 0,e.target||(e.target=n),t=null==t?[e]:S.makeArray(t,[e]),c=S.event.special[d]||{},r||!c.trigger||!1!==c.trigger.apply(n,t))){if(!r&&!c.noBubble&&!x(n)){for(s=c.delegateType||d,bt.test(s+d)||(o=o.parentNode);o;o=o.parentNode)p.push(o),a=o;a===(n.ownerDocument||E)&&p.push(a.defaultView||a.parentWindow||C)}i=0;while((o=p[i++])&&!e.isPropagationStopped())f=o,e.type=1<i?s:c.bindType||d,(l=(Y.get(o,"events")||Object.create(null))[e.type]&&Y.get(o,"handle"))&&l.apply(o,t),(l=u&&o[u])&&l.apply&&V(o)&&(e.result=l.apply(o,t),!1===e.result&&e.preventDefault());return e.type=d,r||e.isDefaultPrevented()||c._default&&!1!==c._default.apply(p.pop(),t)||!V(n)||u&&m(n[d])&&!x(n)&&((a=n[u])&&(n[u]=null),S.event.triggered=d,e.isPropagationStopped()&&f.addEventListener(d,wt),n[d](),e.isPropagationStopped()&&f.removeEventListener(d,wt),S.event.triggered=void 0,a&&(n[u]=a)),e.result}},simulate:function(e,t,n){var r=S.extend(new S.Event,n,{type:e,isSimulated:!0});S.event.trigger(r,null,t)}}),S.fn.extend({trigger:function(e,t){return this.each(function(){S.event.trigger(e,t,this)})},triggerHandler:function(e,t){var n=this[0];if(n)return S.event.trigger(e,t,n,!0)}}),y.focusin||S.each({focus:"focusin",blur:"focusout"},function(n,r){var i=function(e){S.event.simulate(r,e.target,S.event.fix(e))};S.event.special[r]={setup:function(){var e=this.ownerDocument||this.document||this,t=Y.access(e,r);t||e.addEventListener(n,i,!0),Y.access(e,r,(t||0)+1)},teardown:function(){var e=this.ownerDocument||this.document||this,t=Y.access(e,r)-1;t?Y.access(e,r,t):(e.removeEventListener(n,i,!0),Y.remove(e,r))}}});var Tt=C.location,Ct={guid:Date.now()},Et=/\?/;S.parseXML=function(e){var t;if(!e||"string"!=typeof e)return null;try{t=(new C.DOMParser).parseFromString(e,"text/xml")}catch(e){t=void 0}return t&&!t.getElementsByTagName("parsererror").length||S.error("Invalid XML: "+e),t};var St=/\[\]$/,kt=/\r?\n/g,At=/^(?:submit|button|image|reset|file)$/i,Nt=/^(?:input|select|textarea|keygen)/i;function Dt(n,e,r,i){var t;if(Array.isArray(e))S.each(e,function(e,t){r||St.test(n)?i(n,t):Dt(n+"["+("object"==typeof t&&null!=t?e:"")+"]",t,r,i)});else if(r||"object"!==w(e))i(n,e);else for(t in e)Dt(n+"["+t+"]",e[t],r,i)}S.param=function(e,t){var n,r=[],i=function(e,t){var n=m(t)?t():t;r[r.length]=encodeURIComponent(e)+"="+encodeURIComponent(null==n?"":n)};if(null==e)return"";if(Array.isArray(e)||e.jquery&&!S.isPlainObject(e))S.each(e,function(){i(this.name,this.value)});else for(n in e)Dt(n,e[n],t,i);return r.join("&")},S.fn.extend({serialize:function(){return S.param(this.serializeArray())},serializeArray:function(){return this.map(function(){var e=S.prop(this,"elements");return e?S.makeArray(e):this}).filter(function(){var e=this.type;return this.name&&!S(this).is(":disabled")&&Nt.test(this.nodeName)&&!At.test(e)&&(this.checked||!pe.test(e))}).map(function(e,t){var n=S(this).val();return null==n?null:Array.isArray(n)?S.map(n,function(e){return{name:t.name,value:e.replace(kt,"\r\n")}}):{name:t.name,value:n.replace(kt,"\r\n")}}).get()}});var jt=/%20/g,qt=/#.*$/,Lt=/([?&])_=[^&]*/,Ht=/^(.*?):[ \t]*([^\r\n]*)$/gm,Ot=/^(?:GET|HEAD)$/,Pt=/^\/\//,Rt={},Mt={},It="*/".concat("*"),Wt=E.createElement("a");function Ft(o){return function(e,t){"string"!=typeof e&&(t=e,e="*");var n,r=0,i=e.toLowerCase().match(P)||[];if(m(t))while(n=i[r++])"+"===n[0]?(n=n.slice(1)||"*",(o[n]=o[n]||[]).unshift(t)):(o[n]=o[n]||[]).push(t)}}function Bt(t,i,o,a){var s={},u=t===Mt;function l(e){var r;return s[e]=!0,S.each(t[e]||[],function(e,t){var n=t(i,o,a);return"string"!=typeof n||u||s[n]?u?!(r=n):void 0:(i.dataTypes.unshift(n),l(n),!1)}),r}return l(i.dataTypes[0])||!s["*"]&&l("*")}function $t(e,t){var n,r,i=S.ajaxSettings.flatOptions||{};for(n in t)void 0!==t[n]&&((i[n]?e:r||(r={}))[n]=t[n]);return r&&S.extend(!0,e,r),e}Wt.href=Tt.href,S.extend({active:0,lastModified:{},etag:{},ajaxSettings:{url:Tt.href,type:"GET",isLocal:/^(?:about|app|app-storage|.+-extension|file|res|widget):$/.test(Tt.protocol),global:!0,processData:!0,async:!0,contentType:"application/x-www-form-urlencoded; charset=UTF-8",accepts:{"*":It,text:"text/plain",html:"text/html",xml:"application/xml, text/xml",json:"application/json, text/javascript"},contents:{xml:/\bxml\b/,html:/\bhtml/,json:/\bjson\b/},responseFields:{xml:"responseXML",text:"responseText",json:"responseJSON"},converters:{"* text":String,"text html":!0,"text json":JSON.parse,"text xml":S.parseXML},flatOptions:{url:!0,context:!0}},ajaxSetup:function(e,t){return t?$t($t(e,S.ajaxSettings),t):$t(S.ajaxSettings,e)},ajaxPrefilter:Ft(Rt),ajaxTransport:Ft(Mt),ajax:function(e,t){"object"==typeof e&&(t=e,e=void 0),t=t||{};var c,f,p,n,d,r,h,g,i,o,v=S.ajaxSetup({},t),y=v.context||v,m=v.context&&(y.nodeType||y.jquery)?S(y):S.event,x=S.Deferred(),b=S.Callbacks("once memory"),w=v.statusCode||{},a={},s={},u="canceled",T={readyState:0,getResponseHeader:function(e){var t;if(h){if(!n){n={};while(t=Ht.exec(p))n[t[1].toLowerCase()+" "]=(n[t[1].toLowerCase()+" "]||[]).concat(t[2])}t=n[e.toLowerCase()+" "]}return null==t?null:t.join(", ")},getAllResponseHeaders:function(){return h?p:null},setRequestHeader:function(e,t){return null==h&&(e=s[e.toLowerCase()]=s[e.toLowerCase()]||e,a[e]=t),this},overrideMimeType:function(e){return null==h&&(v.mimeType=e),this},statusCode:function(e){var t;if(e)if(h)T.always(e[T.status]);else for(t in e)w[t]=[w[t],e[t]];return this},abort:function(e){var t=e||u;return c&&c.abort(t),l(0,t),this}};if(x.promise(T),v.url=((e||v.url||Tt.href)+"").replace(Pt,Tt.protocol+"//"),v.type=t.method||t.type||v.method||v.type,v.dataTypes=(v.dataType||"*").toLowerCase().match(P)||[""],null==v.crossDomain){r=E.createElement("a");try{r.href=v.url,r.href=r.href,v.crossDomain=Wt.protocol+"//"+Wt.host!=r.protocol+"//"+r.host}catch(e){v.crossDomain=!0}}if(v.data&&v.processData&&"string"!=typeof v.data&&(v.data=S.param(v.data,v.traditional)),Bt(Rt,v,t,T),h)return T;for(i in(g=S.event&&v.global)&&0==S.active++&&S.event.trigger("ajaxStart"),v.type=v.type.toUpperCase(),v.hasContent=!Ot.test(v.type),f=v.url.replace(qt,""),v.hasContent?v.data&&v.processData&&0===(v.contentType||"").indexOf("application/x-www-form-urlencoded")&&(v.data=v.data.replace(jt,"+")):(o=v.url.slice(f.length),v.data&&(v.processData||"string"==typeof v.data)&&(f+=(Et.test(f)?"&":"?")+v.data,delete v.data),!1===v.cache&&(f=f.replace(Lt,"$1"),o=(Et.test(f)?"&":"?")+"_="+Ct.guid+++o),v.url=f+o),v.ifModified&&(S.lastModified[f]&&T.setRequestHeader("If-Modified-Since",S.lastModified[f]),S.etag[f]&&T.setRequestHeader("If-None-Match",S.etag[f])),(v.data&&v.hasContent&&!1!==v.contentType||t.contentType)&&T.setRequestHeader("Content-Type",v.contentType),T.setRequestHeader("Accept",v.dataTypes[0]&&v.accepts[v.dataTypes[0]]?v.accepts[v.dataTypes[0]]+("*"!==v.dataTypes[0]?", "+It+"; q=0.01":""):v.accepts["*"]),v.headers)T.setRequestHeader(i,v.headers[i]);if(v.beforeSend&&(!1===v.beforeSend.call(y,T,v)||h))return T.abort();if(u="abort",b.add(v.complete),T.done(v.success),T.fail(v.error),c=Bt(Mt,v,t,T)){if(T.readyState=1,g&&m.trigger("ajaxSend",[T,v]),h)return T;v.async&&0<v.timeout&&(d=C.setTimeout(function(){T.abort("timeout")},v.timeout));try{h=!1,c.send(a,l)}catch(e){if(h)throw e;l(-1,e)}}else l(-1,"No Transport");function l(e,t,n,r){var i,o,a,s,u,l=t;h||(h=!0,d&&C.clearTimeout(d),c=void 0,p=r||"",T.readyState=0<e?4:0,i=200<=e&&e<300||304===e,n&&(s=function(e,t,n){var r,i,o,a,s=e.contents,u=e.dataTypes;while("*"===u[0])u.shift(),void 0===r&&(r=e.mimeType||t.getResponseHeader("Content-Type"));if(r)for(i in s)if(s[i]&&s[i].test(r)){u.unshift(i);break}if(u[0]in n)o=u[0];else{for(i in n){if(!u[0]||e.converters[i+" "+u[0]]){o=i;break}a||(a=i)}o=o||a}if(o)return o!==u[0]&&u.unshift(o),n[o]}(v,T,n)),!i&&-1<S.inArray("script",v.dataTypes)&&(v.converters["text script"]=function(){}),s=function(e,t,n,r){var i,o,a,s,u,l={},c=e.dataTypes.slice();if(c[1])for(a in e.converters)l[a.toLowerCase()]=e.converters[a];o=c.shift();while(o)if(e.responseFields[o]&&(n[e.responseFields[o]]=t),!u&&r&&e.dataFilter&&(t=e.dataFilter(t,e.dataType)),u=o,o=c.shift())if("*"===o)o=u;else if("*"!==u&&u!==o){if(!(a=l[u+" "+o]||l["* "+o]))for(i in l)if((s=i.split(" "))[1]===o&&(a=l[u+" "+s[0]]||l["* "+s[0]])){!0===a?a=l[i]:!0!==l[i]&&(o=s[0],c.unshift(s[1]));break}if(!0!==a)if(a&&e["throws"])t=a(t);else try{t=a(t)}catch(e){return{state:"parsererror",error:a?e:"No conversion from "+u+" to "+o}}}return{state:"success",data:t}}(v,s,T,i),i?(v.ifModified&&((u=T.getResponseHeader("Last-Modified"))&&(S.lastModified[f]=u),(u=T.getResponseHeader("etag"))&&(S.etag[f]=u)),204===e||"HEAD"===v.type?l="nocontent":304===e?l="notmodified":(l=s.state,o=s.data,i=!(a=s.error))):(a=l,!e&&l||(l="error",e<0&&(e=0))),T.status=e,T.statusText=(t||l)+"",i?x.resolveWith(y,[o,l,T]):x.rejectWith(y,[T,l,a]),T.statusCode(w),w=void 0,g&&m.trigger(i?"ajaxSuccess":"ajaxError",[T,v,i?o:a]),b.fireWith(y,[T,l]),g&&(m.trigger("ajaxComplete",[T,v]),--S.active||S.event.trigger("ajaxStop")))}return T},getJSON:function(e,t,n){return S.get(e,t,n,"json")},getScript:function(e,t){return S.get(e,void 0,t,"script")}}),S.each(["get","post"],function(e,i){S[i]=function(e,t,n,r){return m(t)&&(r=r||n,n=t,t=void 0),S.ajax(S.extend({url:e,type:i,dataType:r,data:t,success:n},S.isPlainObject(e)&&e))}}),S.ajaxPrefilter(function(e){var t;for(t in e.headers)"content-type"===t.toLowerCase()&&(e.contentType=e.headers[t]||"")}),S._evalUrl=function(e,t,n){return S.ajax({url:e,type:"GET",dataType:"script",cache:!0,async:!1,global:!1,converters:{"text script":function(){}},dataFilter:function(e){S.globalEval(e,t,n)}})},S.fn.extend({wrapAll:function(e){var t;return this[0]&&(m(e)&&(e=e.call(this[0])),t=S(e,this[0].ownerDocument).eq(0).clone(!0),this[0].parentNode&&t.insertBefore(this[0]),t.map(function(){var e=this;while(e.firstElementChild)e=e.firstElementChild;return e}).append(this)),this},wrapInner:function(n){return m(n)?this.each(function(e){S(this).wrapInner(n.call(this,e))}):this.each(function(){var e=S(this),t=e.contents();t.length?t.wrapAll(n):e.append(n)})},wrap:function(t){var n=m(t);return this.each(function(e){S(this).wrapAll(n?t.call(this,e):t)})},unwrap:function(e){return this.parent(e).not("body").each(function(){S(this).replaceWith(this.childNodes)}),this}}),S.expr.pseudos.hidden=function(e){return!S.expr.pseudos.visible(e)},S.expr.pseudos.visible=function(e){return!!(e.offsetWidth||e.offsetHeight||e.getClientRects().length)},S.ajaxSettings.xhr=function(){try{return new C.XMLHttpRequest}catch(e){}};var _t={0:200,1223:204},zt=S.ajaxSettings.xhr();y.cors=!!zt&&"withCredentials"in zt,y.ajax=zt=!!zt,S.ajaxTransport(function(i){var o,a;if(y.cors||zt&&!i.crossDomain)return{send:function(e,t){var n,r=i.xhr();if(r.open(i.type,i.url,i.async,i.username,i.password),i.xhrFields)for(n in i.xhrFields)r[n]=i.xhrFields[n];for(n in i.mimeType&&r.overrideMimeType&&r.overrideMimeType(i.mimeType),i.crossDomain||e["X-Requested-With"]||(e["X-Requested-With"]="XMLHttpRequest"),e)r.setRequestHeader(n,e[n]);o=function(e){return function(){o&&(o=a=r.onload=r.onerror=r.onabort=r.ontimeout=r.onreadystatechange=null,"abort"===e?r.abort():"error"===e?"number"!=typeof r.status?t(0,"error"):t(r.status,r.statusText):t(_t[r.status]||r.status,r.statusText,"text"!==(r.responseType||"text")||"string"!=typeof r.responseText?{binary:r.response}:{text:r.responseText},r.getAllResponseHeaders()))}},r.onload=o(),a=r.onerror=r.ontimeout=o("error"),void 0!==r.onabort?r.onabort=a:r.onreadystatechange=function(){4===r.readyState&&C.setTimeout(function(){o&&a()})},o=o("abort");try{r.send(i.hasContent&&i.data||null)}catch(e){if(o)throw e}},abort:function(){o&&o()}}}),S.ajaxPrefilter(function(e){e.crossDomain&&(e.contents.script=!1)}),S.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/\b(?:java|ecma)script\b/},converters:{"text script":function(e){return S.globalEval(e),e}}}),S.ajaxPrefilter("script",function(e){void 0===e.cache&&(e.cache=!1),e.crossDomain&&(e.type="GET")}),S.ajaxTransport("script",function(n){var r,i;if(n.crossDomain||n.scriptAttrs)return{send:function(e,t){r=S("<script>").attr(n.scriptAttrs||{}).prop({charset:n.scriptCharset,src:n.url}).on("load error",i=function(e){r.remove(),i=null,e&&t("error"===e.type?404:200,e.type)}),E.head.appendChild(r[0])},abort:function(){i&&i()}}});var Ut,Xt=[],Vt=/(=)\?(?=&|$)|\?\?/;S.ajaxSetup({jsonp:"callback",jsonpCallback:function(){var e=Xt.pop()||S.expando+"_"+Ct.guid++;return this[e]=!0,e}}),S.ajaxPrefilter("json jsonp",function(e,t,n){var r,i,o,a=!1!==e.jsonp&&(Vt.test(e.url)?"url":"string"==typeof e.data&&0===(e.contentType||"").indexOf("application/x-www-form-urlencoded")&&Vt.test(e.data)&&"data");if(a||"jsonp"===e.dataTypes[0])return r=e.jsonpCallback=m(e.jsonpCallback)?e.jsonpCallback():e.jsonpCallback,a?e[a]=e[a].replace(Vt,"$1"+r):!1!==e.jsonp&&(e.url+=(Et.test(e.url)?"&":"?")+e.jsonp+"="+r),e.converters["script json"]=function(){return o||S.error(r+" was not called"),o[0]},e.dataTypes[0]="json",i=C[r],C[r]=function(){o=arguments},n.always(function(){void 0===i?S(C).removeProp(r):C[r]=i,e[r]&&(e.jsonpCallback=t.jsonpCallback,Xt.push(r)),o&&m(i)&&i(o[0]),o=i=void 0}),"script"}),y.createHTMLDocument=((Ut=E.implementation.createHTMLDocument("").body).innerHTML="<form></form><form></form>",2===Ut.childNodes.length),S.parseHTML=function(e,t,n){return"string"!=typeof e?[]:("boolean"==typeof t&&(n=t,t=!1),t||(y.createHTMLDocument?((r=(t=E.implementation.createHTMLDocument("")).createElement("base")).href=E.location.href,t.head.appendChild(r)):t=E),o=!n&&[],(i=N.exec(e))?[t.createElement(i[1])]:(i=xe([e],t,o),o&&o.length&&S(o).remove(),S.merge([],i.childNodes)));var r,i,o},S.fn.load=function(e,t,n){var r,i,o,a=this,s=e.indexOf(" ");return-1<s&&(r=vt(e.slice(s)),e=e.slice(0,s)),m(t)?(n=t,t=void 0):t&&"object"==typeof t&&(i="POST"),0<a.length&&S.ajax({url:e,type:i||"GET",dataType:"html",data:t}).done(function(e){o=arguments,a.html(r?S("<div>").append(S.parseHTML(e)).find(r):e)}).always(n&&function(e,t){a.each(function(){n.apply(this,o||[e.responseText,t,e])})}),this},S.expr.pseudos.animated=function(t){return S.grep(S.timers,function(e){return t===e.elem}).length},S.offset={setOffset:function(e,t,n){var r,i,o,a,s,u,l=S.css(e,"position"),c=S(e),f={};"static"===l&&(e.style.position="relative"),s=c.offset(),o=S.css(e,"top"),u=S.css(e,"left"),("absolute"===l||"fixed"===l)&&-1<(o+u).indexOf("auto")?(a=(r=c.position()).top,i=r.left):(a=parseFloat(o)||0,i=parseFloat(u)||0),m(t)&&(t=t.call(e,n,S.extend({},s))),null!=t.top&&(f.top=t.top-s.top+a),null!=t.left&&(f.left=t.left-s.left+i),"using"in t?t.using.call(e,f):("number"==typeof f.top&&(f.top+="px"),"number"==typeof f.left&&(f.left+="px"),c.css(f))}},S.fn.extend({offset:function(t){if(arguments.length)return void 0===t?this:this.each(function(e){S.offset.setOffset(this,t,e)});var e,n,r=this[0];return r?r.getClientRects().length?(e=r.getBoundingClientRect(),n=r.ownerDocument.defaultView,{top:e.top+n.pageYOffset,left:e.left+n.pageXOffset}):{top:0,left:0}:void 0},position:function(){if(this[0]){var e,t,n,r=this[0],i={top:0,left:0};if("fixed"===S.css(r,"position"))t=r.getBoundingClientRect();else{t=this.offset(),n=r.ownerDocument,e=r.offsetParent||n.documentElement;while(e&&(e===n.body||e===n.documentElement)&&"static"===S.css(e,"position"))e=e.parentNode;e&&e!==r&&1===e.nodeType&&((i=S(e).offset()).top+=S.css(e,"borderTopWidth",!0),i.left+=S.css(e,"borderLeftWidth",!0))}return{top:t.top-i.top-S.css(r,"marginTop",!0),left:t.left-i.left-S.css(r,"marginLeft",!0)}}},offsetParent:function(){return this.map(function(){var e=this.offsetParent;while(e&&"static"===S.css(e,"position"))e=e.offsetParent;return e||re})}}),S.each({scrollLeft:"pageXOffset",scrollTop:"pageYOffset"},function(t,i){var o="pageYOffset"===i;S.fn[t]=function(e){return $(this,function(e,t,n){var r;if(x(e)?r=e:9===e.nodeType&&(r=e.defaultView),void 0===n)return r?r[i]:e[t];r?r.scrollTo(o?r.pageXOffset:n,o?n:r.pageYOffset):e[t]=n},t,e,arguments.length)}}),S.each(["top","left"],function(e,n){S.cssHooks[n]=$e(y.pixelPosition,function(e,t){if(t)return t=Be(e,n),Me.test(t)?S(e).position()[n]+"px":t})}),S.each({Height:"height",Width:"width"},function(a,s){S.each({padding:"inner"+a,content:s,"":"outer"+a},function(r,o){S.fn[o]=function(e,t){var n=arguments.length&&(r||"boolean"!=typeof e),i=r||(!0===e||!0===t?"margin":"border");return $(this,function(e,t,n){var r;return x(e)?0===o.indexOf("outer")?e["inner"+a]:e.document.documentElement["client"+a]:9===e.nodeType?(r=e.documentElement,Math.max(e.body["scroll"+a],r["scroll"+a],e.body["offset"+a],r["offset"+a],r["client"+a])):void 0===n?S.css(e,t,i):S.style(e,t,n,i)},s,n?e:void 0,n)}})}),S.each(["ajaxStart","ajaxStop","ajaxComplete","ajaxError","ajaxSuccess","ajaxSend"],function(e,t){S.fn[t]=function(e){return this.on(t,e)}}),S.fn.extend({bind:function(e,t,n){return this.on(e,null,t,n)},unbind:function(e,t){return this.off(e,null,t)},delegate:function(e,t,n,r){return this.on(t,e,n,r)},undelegate:function(e,t,n){return 1===arguments.length?this.off(e,"**"):this.off(t,e||"**",n)},hover:function(e,t){return this.mouseenter(e).mouseleave(t||e)}}),S.each("blur focus focusin focusout resize scroll click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup contextmenu".split(" "),function(e,n){S.fn[n]=function(e,t){return 0<arguments.length?this.on(n,null,e,t):this.trigger(n)}});var Gt=/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;S.proxy=function(e,t){var n,r,i;if("string"==typeof t&&(n=e[t],t=e,e=n),m(e))return r=s.call(arguments,2),(i=function(){return e.apply(t||this,r.concat(s.call(arguments)))}).guid=e.guid=e.guid||S.guid++,i},S.holdReady=function(e){e?S.readyWait++:S.ready(!0)},S.isArray=Array.isArray,S.parseJSON=JSON.parse,S.nodeName=A,S.isFunction=m,S.isWindow=x,S.camelCase=X,S.type=w,S.now=Date.now,S.isNumeric=function(e){var t=S.type(e);return("number"===t||"string"===t)&&!isNaN(e-parseFloat(e))},S.trim=function(e){return null==e?"":(e+"").replace(Gt,"")},"function"==typeof define&&define.amd&&define("jquery",[],function(){return S});var Yt=C.jQuery,Qt=C.$;return S.noConflict=function(e){return C.$===S&&(C.$=Qt),e&&C.jQuery===S&&(C.jQuery=Yt),S},"undefined"==typeof e&&(C.jQuery=C.$=S),S});
/*! Copyright (c) 2008 Brandon Aaron (http://brandonaaron.net)
 * Dual licensed under the MIT (http://www.opensource.org/licenses/mit-license.php) 
 * and GPL (http://www.opensource.org/licenses/gpl-license.php) licenses.
 *
 * Version: 1.0.3
 * Requires jQuery 1.1.3+
 * Docs: http://docs.jquery.com/Plugins/livequery
 */

(function($) {
	
$.extend($.fn, {
	livequery: function(type, fn, fn2) {
		var self = this, q;
		
		// Handle different call patterns
		if ($.isFunction(type))
			fn2 = fn, fn = type, type = undefined;
			
		// See if Live Query already exists
		$.each( $.livequery.queries, function(i, query) {
			if ( self.selector == query.selector && self.context == query.context &&
				type == query.type && (!fn || fn.$lqguid == query.fn.$lqguid) && (!fn2 || fn2.$lqguid == query.fn2.$lqguid) )
					// Found the query, exit the each loop
					return (q = query) && false;
		});
		
		// Create new Live Query if it wasn't found
		q = q || new $.livequery(this.selector, this.context, type, fn, fn2);
		
		// Make sure it is running
		q.stopped = false;
		
		// Run it immediately for the first time
		q.run();
		
		// Contnue the chain
		return this;
	},
	
	expire: function(type, fn, fn2) {
		var self = this;
		
		// Handle different call patterns
		if ($.isFunction(type))
			fn2 = fn, fn = type, type = undefined;
			
		// Find the Live Query based on arguments and stop it
		$.each( $.livequery.queries, function(i, query) {
			if ( self.selector == query.selector && self.context == query.context && 
				(!type || type == query.type) && (!fn || fn.$lqguid == query.fn.$lqguid) && (!fn2 || fn2.$lqguid == query.fn2.$lqguid) && !this.stopped )
					$.livequery.stop(query.id);
		});
		
		// Continue the chain
		return this;
	}
});

$.livequery = function(selector, context, type, fn, fn2) {
	this.selector = selector;
	this.context  = context || document;
	this.type     = type;
	this.fn       = fn;
	this.fn2      = fn2;
	this.elements = [];
	this.stopped  = false;
	
	// The id is the index of the Live Query in $.livequery.queries
	this.id = $.livequery.queries.push(this)-1;
	
	// Mark the functions for matching later on
	fn.$lqguid = fn.$lqguid || $.livequery.guid++;
	if (fn2) fn2.$lqguid = fn2.$lqguid || $.livequery.guid++;
	
	// Return the Live Query
	return this;
};

$.livequery.prototype = {
	stop: function() {
		var query = this;
		
		if ( this.type )
			// Unbind all bound events
			this.elements.unbind(this.type, this.fn);
		else if (this.fn2)
			// Call the second function for all matched elements
			this.elements.each(function(i, el) {
				query.fn2.apply(el);
			});
			
		// Clear out matched elements
		this.elements = [];
		
		// Stop the Live Query from running until restarted
		this.stopped = true;
	},
	
	run: function() {
		// Short-circuit if stopped
		if ( this.stopped ) return;
		var query = this;
		
		var oEls = this.elements,
			els  = $(this.selector, this.context),
			nEls = els.not(oEls);
		
		// Set elements to the latest set of matched elements
		this.elements = els;
		
		if (this.type) {
			// Bind events to newly matched elements
			nEls.bind(this.type, this.fn);
			
			// Unbind events to elements no longer matched
			if (oEls.length > 0)
				$.each(oEls, function(i, el) {
					if ( $.inArray(el, els) < 0 )
						$.event.remove(el, query.type, query.fn);
				});
		}
		else {
			// Call the first function for newly matched elements
			nEls.each(function() {
				query.fn.apply(this);
			});
			
			// Call the second function for elements no longer matched
			if ( this.fn2 && oEls.length > 0 )
				$.each(oEls, function(i, el) {
					if ( $.inArray(el, els) < 0 )
						query.fn2.apply(el);
				});
		}
	}
};

$.extend($.livequery, {
	guid: 0,
	queries: [],
	queue: [],
	running: false,
	timeout: null,
	
	checkQueue: function() {
		if ( $.livequery.running && $.livequery.queue.length ) {
			var length = $.livequery.queue.length;
			// Run each Live Query currently in the queue
			while ( length-- )
				$.livequery.queries[ $.livequery.queue.shift() ].run();
		}
	},
	
	pause: function() {
		// Don't run anymore Live Queries until restarted
		$.livequery.running = false;
	},
	
	play: function() {
		// Restart Live Queries
		$.livequery.running = true;
		// Request a run of the Live Queries
		$.livequery.run();
	},
	
	registerPlugin: function() {
		$.each( arguments, function(i,n) {
			// Short-circuit if the method doesn't exist
			if (!$.fn[n]) return;
			
			// Save a reference to the original method
			var old = $.fn[n];
			
			// Create a new method
			$.fn[n] = function() {
				// Call the original method
				var r = old.apply(this, arguments);
				
				// Request a run of the Live Queries
				$.livequery.run();
				
				// Return the original methods result
				return r;
			}
		});
	},
	
	run: function(id) {
		if (id != undefined) {
			// Put the particular Live Query in the queue if it doesn't already exist
			if ( $.inArray(id, $.livequery.queue) < 0 )
				$.livequery.queue.push( id );
		}
		else
			// Put each Live Query in the queue if it doesn't already exist
			$.each( $.livequery.queries, function(id) {
				if ( $.inArray(id, $.livequery.queue) < 0 )
					$.livequery.queue.push( id );
			});
		
		// Clear timeout if it already exists
		if ($.livequery.timeout) clearTimeout($.livequery.timeout);
		// Create a timeout to check the queue and actually run the Live Queries
		$.livequery.timeout = setTimeout($.livequery.checkQueue, 20);
	},
	
	stop: function(id) {
		if (id != undefined)
			// Stop are particular Live Query
			$.livequery.queries[ id ].stop();
		else
			// Stop all Live Queries
			$.each( $.livequery.queries, function(id) {
				$.livequery.queries[ id ].stop();
			});
	}
});

// Register core DOM manipulation methods
$.livequery.registerPlugin('append', 'prepend', 'after', 'before', 'wrap', 'attr', 'removeAttr', 'addClass', 'removeClass', 'toggleClass', 'empty', 'remove');

// Run Live Queries when the Document is ready
$(function() { $.livequery.play(); });


// Save a reference to the original init method
var init = $.prototype.init;

// Create a new init method that exposes two new properties: selector and context
$.prototype.init = function(a,c) {
	// Call the original init and save the result
	var r = init.apply(this, arguments);
	
	// Copy over properties if they exist already
	if (a && a.selector)
		r.context = a.context, r.selector = a.selector;
		
	// Set properties
	if ( typeof a == 'string' )
		r.context = c || document, r.selector = a;
	
	// Return the result
	return r;
};

// Give the init function the jQuery prototype for later instantiation (needed after Rev 4091)
$.prototype.init.prototype = $.prototype;
	
})(jQuery);
/*
 Copyright (C) Federico Zivolo 2019
 Distributed under the MIT License (license terms are at http://opensource.org/licenses/MIT).
 */(function(e,t){'object'==typeof exports&&'undefined'!=typeof module?module.exports=t():'function'==typeof define&&define.amd?define(t):e.Popper=t()})(this,function(){'use strict';function e(e){return e&&'[object Function]'==={}.toString.call(e)}function t(e,t){if(1!==e.nodeType)return[];var o=e.ownerDocument.defaultView,n=o.getComputedStyle(e,null);return t?n[t]:n}function o(e){return'HTML'===e.nodeName?e:e.parentNode||e.host}function n(e){if(!e)return document.body;switch(e.nodeName){case'HTML':case'BODY':return e.ownerDocument.body;case'#document':return e.body;}var i=t(e),r=i.overflow,p=i.overflowX,s=i.overflowY;return /(auto|scroll|overlay)/.test(r+s+p)?e:n(o(e))}function r(e){return 11===e?pe:10===e?se:pe||se}function p(e){if(!e)return document.documentElement;for(var o=r(10)?document.body:null,n=e.offsetParent||null;n===o&&e.nextElementSibling;)n=(e=e.nextElementSibling).offsetParent;var i=n&&n.nodeName;return i&&'BODY'!==i&&'HTML'!==i?-1!==['TH','TD','TABLE'].indexOf(n.nodeName)&&'static'===t(n,'position')?p(n):n:e?e.ownerDocument.documentElement:document.documentElement}function s(e){var t=e.nodeName;return'BODY'!==t&&('HTML'===t||p(e.firstElementChild)===e)}function d(e){return null===e.parentNode?e:d(e.parentNode)}function a(e,t){if(!e||!e.nodeType||!t||!t.nodeType)return document.documentElement;var o=e.compareDocumentPosition(t)&Node.DOCUMENT_POSITION_FOLLOWING,n=o?e:t,i=o?t:e,r=document.createRange();r.setStart(n,0),r.setEnd(i,0);var l=r.commonAncestorContainer;if(e!==l&&t!==l||n.contains(i))return s(l)?l:p(l);var f=d(e);return f.host?a(f.host,t):a(e,d(t).host)}function l(e){var t=1<arguments.length&&void 0!==arguments[1]?arguments[1]:'top',o='top'===t?'scrollTop':'scrollLeft',n=e.nodeName;if('BODY'===n||'HTML'===n){var i=e.ownerDocument.documentElement,r=e.ownerDocument.scrollingElement||i;return r[o]}return e[o]}function f(e,t){var o=2<arguments.length&&void 0!==arguments[2]&&arguments[2],n=l(t,'top'),i=l(t,'left'),r=o?-1:1;return e.top+=n*r,e.bottom+=n*r,e.left+=i*r,e.right+=i*r,e}function m(e,t){var o='x'===t?'Left':'Top',n='Left'==o?'Right':'Bottom';return parseFloat(e['border'+o+'Width'],10)+parseFloat(e['border'+n+'Width'],10)}function h(e,t,o,n){return ee(t['offset'+e],t['scroll'+e],o['client'+e],o['offset'+e],o['scroll'+e],r(10)?parseInt(o['offset'+e])+parseInt(n['margin'+('Height'===e?'Top':'Left')])+parseInt(n['margin'+('Height'===e?'Bottom':'Right')]):0)}function c(e){var t=e.body,o=e.documentElement,n=r(10)&&getComputedStyle(o);return{height:h('Height',t,o,n),width:h('Width',t,o,n)}}function g(e){return fe({},e,{right:e.left+e.width,bottom:e.top+e.height})}function u(e){var o={};try{if(r(10)){o=e.getBoundingClientRect();var n=l(e,'top'),i=l(e,'left');o.top+=n,o.left+=i,o.bottom+=n,o.right+=i}else o=e.getBoundingClientRect()}catch(t){}var p={left:o.left,top:o.top,width:o.right-o.left,height:o.bottom-o.top},s='HTML'===e.nodeName?c(e.ownerDocument):{},d=s.width||e.clientWidth||p.right-p.left,a=s.height||e.clientHeight||p.bottom-p.top,f=e.offsetWidth-d,h=e.offsetHeight-a;if(f||h){var u=t(e);f-=m(u,'x'),h-=m(u,'y'),p.width-=f,p.height-=h}return g(p)}function b(e,o){var i=2<arguments.length&&void 0!==arguments[2]&&arguments[2],p=r(10),s='HTML'===o.nodeName,d=u(e),a=u(o),l=n(e),m=t(o),h=parseFloat(m.borderTopWidth,10),c=parseFloat(m.borderLeftWidth,10);i&&s&&(a.top=ee(a.top,0),a.left=ee(a.left,0));var b=g({top:d.top-a.top-h,left:d.left-a.left-c,width:d.width,height:d.height});if(b.marginTop=0,b.marginLeft=0,!p&&s){var w=parseFloat(m.marginTop,10),y=parseFloat(m.marginLeft,10);b.top-=h-w,b.bottom-=h-w,b.left-=c-y,b.right-=c-y,b.marginTop=w,b.marginLeft=y}return(p&&!i?o.contains(l):o===l&&'BODY'!==l.nodeName)&&(b=f(b,o)),b}function w(e){var t=1<arguments.length&&void 0!==arguments[1]&&arguments[1],o=e.ownerDocument.documentElement,n=b(e,o),i=ee(o.clientWidth,window.innerWidth||0),r=ee(o.clientHeight,window.innerHeight||0),p=t?0:l(o),s=t?0:l(o,'left'),d={top:p-n.top+n.marginTop,left:s-n.left+n.marginLeft,width:i,height:r};return g(d)}function y(e){var n=e.nodeName;if('BODY'===n||'HTML'===n)return!1;if('fixed'===t(e,'position'))return!0;var i=o(e);return!!i&&y(i)}function E(e){if(!e||!e.parentElement||r())return document.documentElement;for(var o=e.parentElement;o&&'none'===t(o,'transform');)o=o.parentElement;return o||document.documentElement}function v(e,t,i,r){var p=4<arguments.length&&void 0!==arguments[4]&&arguments[4],s={top:0,left:0},d=p?E(e):a(e,t);if('viewport'===r)s=w(d,p);else{var l;'scrollParent'===r?(l=n(o(t)),'BODY'===l.nodeName&&(l=e.ownerDocument.documentElement)):'window'===r?l=e.ownerDocument.documentElement:l=r;var f=b(l,d,p);if('HTML'===l.nodeName&&!y(d)){var m=c(e.ownerDocument),h=m.height,g=m.width;s.top+=f.top-f.marginTop,s.bottom=h+f.top,s.left+=f.left-f.marginLeft,s.right=g+f.left}else s=f}i=i||0;var u='number'==typeof i;return s.left+=u?i:i.left||0,s.top+=u?i:i.top||0,s.right-=u?i:i.right||0,s.bottom-=u?i:i.bottom||0,s}function x(e){var t=e.width,o=e.height;return t*o}function O(e,t,o,n,i){var r=5<arguments.length&&void 0!==arguments[5]?arguments[5]:0;if(-1===e.indexOf('auto'))return e;var p=v(o,n,r,i),s={top:{width:p.width,height:t.top-p.top},right:{width:p.right-t.right,height:p.height},bottom:{width:p.width,height:p.bottom-t.bottom},left:{width:t.left-p.left,height:p.height}},d=Object.keys(s).map(function(e){return fe({key:e},s[e],{area:x(s[e])})}).sort(function(e,t){return t.area-e.area}),a=d.filter(function(e){var t=e.width,n=e.height;return t>=o.clientWidth&&n>=o.clientHeight}),l=0<a.length?a[0].key:d[0].key,f=e.split('-')[1];return l+(f?'-'+f:'')}function L(e,t,o){var n=3<arguments.length&&void 0!==arguments[3]?arguments[3]:null,i=n?E(t):a(t,o);return b(o,i,n)}function S(e){var t=e.ownerDocument.defaultView,o=t.getComputedStyle(e),n=parseFloat(o.marginTop||0)+parseFloat(o.marginBottom||0),i=parseFloat(o.marginLeft||0)+parseFloat(o.marginRight||0),r={width:e.offsetWidth+i,height:e.offsetHeight+n};return r}function T(e){var t={left:'right',right:'left',bottom:'top',top:'bottom'};return e.replace(/left|right|bottom|top/g,function(e){return t[e]})}function D(e,t,o){o=o.split('-')[0];var n=S(e),i={width:n.width,height:n.height},r=-1!==['right','left'].indexOf(o),p=r?'top':'left',s=r?'left':'top',d=r?'height':'width',a=r?'width':'height';return i[p]=t[p]+t[d]/2-n[d]/2,i[s]=o===s?t[s]-n[a]:t[T(s)],i}function C(e,t){return Array.prototype.find?e.find(t):e.filter(t)[0]}function N(e,t,o){if(Array.prototype.findIndex)return e.findIndex(function(e){return e[t]===o});var n=C(e,function(e){return e[t]===o});return e.indexOf(n)}function P(t,o,n){var i=void 0===n?t:t.slice(0,N(t,'name',n));return i.forEach(function(t){t['function']&&console.warn('`modifier.function` is deprecated, use `modifier.fn`!');var n=t['function']||t.fn;t.enabled&&e(n)&&(o.offsets.popper=g(o.offsets.popper),o.offsets.reference=g(o.offsets.reference),o=n(o,t))}),o}function k(){if(!this.state.isDestroyed){var e={instance:this,styles:{},arrowStyles:{},attributes:{},flipped:!1,offsets:{}};e.offsets.reference=L(this.state,this.popper,this.reference,this.options.positionFixed),e.placement=O(this.options.placement,e.offsets.reference,this.popper,this.reference,this.options.modifiers.flip.boundariesElement,this.options.modifiers.flip.padding),e.originalPlacement=e.placement,e.positionFixed=this.options.positionFixed,e.offsets.popper=D(this.popper,e.offsets.reference,e.placement),e.offsets.popper.position=this.options.positionFixed?'fixed':'absolute',e=P(this.modifiers,e),this.state.isCreated?this.options.onUpdate(e):(this.state.isCreated=!0,this.options.onCreate(e))}}function W(e,t){return e.some(function(e){var o=e.name,n=e.enabled;return n&&o===t})}function H(e){for(var t=[!1,'ms','Webkit','Moz','O'],o=e.charAt(0).toUpperCase()+e.slice(1),n=0;n<t.length;n++){var i=t[n],r=i?''+i+o:e;if('undefined'!=typeof document.body.style[r])return r}return null}function B(){return this.state.isDestroyed=!0,W(this.modifiers,'applyStyle')&&(this.popper.removeAttribute('x-placement'),this.popper.style.position='',this.popper.style.top='',this.popper.style.left='',this.popper.style.right='',this.popper.style.bottom='',this.popper.style.willChange='',this.popper.style[H('transform')]=''),this.disableEventListeners(),this.options.removeOnDestroy&&this.popper.parentNode.removeChild(this.popper),this}function A(e){var t=e.ownerDocument;return t?t.defaultView:window}function M(e,t,o,i){var r='BODY'===e.nodeName,p=r?e.ownerDocument.defaultView:e;p.addEventListener(t,o,{passive:!0}),r||M(n(p.parentNode),t,o,i),i.push(p)}function F(e,t,o,i){o.updateBound=i,A(e).addEventListener('resize',o.updateBound,{passive:!0});var r=n(e);return M(r,'scroll',o.updateBound,o.scrollParents),o.scrollElement=r,o.eventsEnabled=!0,o}function I(){this.state.eventsEnabled||(this.state=F(this.reference,this.options,this.state,this.scheduleUpdate))}function R(e,t){return A(e).removeEventListener('resize',t.updateBound),t.scrollParents.forEach(function(e){e.removeEventListener('scroll',t.updateBound)}),t.updateBound=null,t.scrollParents=[],t.scrollElement=null,t.eventsEnabled=!1,t}function U(){this.state.eventsEnabled&&(cancelAnimationFrame(this.scheduleUpdate),this.state=R(this.reference,this.state))}function Y(e){return''!==e&&!isNaN(parseFloat(e))&&isFinite(e)}function j(e,t){Object.keys(t).forEach(function(o){var n='';-1!==['width','height','top','right','bottom','left'].indexOf(o)&&Y(t[o])&&(n='px'),e.style[o]=t[o]+n})}function V(e,t){Object.keys(t).forEach(function(o){var n=t[o];!1===n?e.removeAttribute(o):e.setAttribute(o,t[o])})}function q(e,t){var o=e.offsets,n=o.popper,i=o.reference,r=$,p=function(e){return e},s=r(i.width),d=r(n.width),a=-1!==['left','right'].indexOf(e.placement),l=-1!==e.placement.indexOf('-'),f=t?a||l||s%2==d%2?r:Z:p,m=t?r:p;return{left:f(1==s%2&&1==d%2&&!l&&t?n.left-1:n.left),top:m(n.top),bottom:m(n.bottom),right:f(n.right)}}function K(e,t,o){var n=C(e,function(e){var o=e.name;return o===t}),i=!!n&&e.some(function(e){return e.name===o&&e.enabled&&e.order<n.order});if(!i){var r='`'+t+'`';console.warn('`'+o+'`'+' modifier is required by '+r+' modifier in order to work, be sure to include it before '+r+'!')}return i}function z(e){return'end'===e?'start':'start'===e?'end':e}function G(e){var t=1<arguments.length&&void 0!==arguments[1]&&arguments[1],o=ce.indexOf(e),n=ce.slice(o+1).concat(ce.slice(0,o));return t?n.reverse():n}function _(e,t,o,n){var i=e.match(/((?:\-|\+)?\d*\.?\d*)(.*)/),r=+i[1],p=i[2];if(!r)return e;if(0===p.indexOf('%')){var s;switch(p){case'%p':s=o;break;case'%':case'%r':default:s=n;}var d=g(s);return d[t]/100*r}if('vh'===p||'vw'===p){var a;return a='vh'===p?ee(document.documentElement.clientHeight,window.innerHeight||0):ee(document.documentElement.clientWidth,window.innerWidth||0),a/100*r}return r}function X(e,t,o,n){var i=[0,0],r=-1!==['right','left'].indexOf(n),p=e.split(/(\+|\-)/).map(function(e){return e.trim()}),s=p.indexOf(C(p,function(e){return-1!==e.search(/,|\s/)}));p[s]&&-1===p[s].indexOf(',')&&console.warn('Offsets separated by white space(s) are deprecated, use a comma (,) instead.');var d=/\s*,\s*|\s+/,a=-1===s?[p]:[p.slice(0,s).concat([p[s].split(d)[0]]),[p[s].split(d)[1]].concat(p.slice(s+1))];return a=a.map(function(e,n){var i=(1===n?!r:r)?'height':'width',p=!1;return e.reduce(function(e,t){return''===e[e.length-1]&&-1!==['+','-'].indexOf(t)?(e[e.length-1]=t,p=!0,e):p?(e[e.length-1]+=t,p=!1,e):e.concat(t)},[]).map(function(e){return _(e,i,t,o)})}),a.forEach(function(e,t){e.forEach(function(o,n){Y(o)&&(i[t]+=o*('-'===e[n-1]?-1:1))})}),i}function J(e,t){var o,n=t.offset,i=e.placement,r=e.offsets,p=r.popper,s=r.reference,d=i.split('-')[0];return o=Y(+n)?[+n,0]:X(n,p,s,d),'left'===d?(p.top+=o[0],p.left-=o[1]):'right'===d?(p.top+=o[0],p.left+=o[1]):'top'===d?(p.left+=o[0],p.top-=o[1]):'bottom'===d&&(p.left+=o[0],p.top+=o[1]),e.popper=p,e}for(var Q=Math.min,Z=Math.floor,$=Math.round,ee=Math.max,te='undefined'!=typeof window&&'undefined'!=typeof document,oe=['Edge','Trident','Firefox'],ne=0,ie=0;ie<oe.length;ie+=1)if(te&&0<=navigator.userAgent.indexOf(oe[ie])){ne=1;break}var i=te&&window.Promise,re=i?function(e){var t=!1;return function(){t||(t=!0,window.Promise.resolve().then(function(){t=!1,e()}))}}:function(e){var t=!1;return function(){t||(t=!0,setTimeout(function(){t=!1,e()},ne))}},pe=te&&!!(window.MSInputMethodContext&&document.documentMode),se=te&&/MSIE 10/.test(navigator.userAgent),de=function(e,t){if(!(e instanceof t))throw new TypeError('Cannot call a class as a function')},ae=function(){function e(e,t){for(var o,n=0;n<t.length;n++)o=t[n],o.enumerable=o.enumerable||!1,o.configurable=!0,'value'in o&&(o.writable=!0),Object.defineProperty(e,o.key,o)}return function(t,o,n){return o&&e(t.prototype,o),n&&e(t,n),t}}(),le=function(e,t,o){return t in e?Object.defineProperty(e,t,{value:o,enumerable:!0,configurable:!0,writable:!0}):e[t]=o,e},fe=Object.assign||function(e){for(var t,o=1;o<arguments.length;o++)for(var n in t=arguments[o],t)Object.prototype.hasOwnProperty.call(t,n)&&(e[n]=t[n]);return e},me=te&&/Firefox/i.test(navigator.userAgent),he=['auto-start','auto','auto-end','top-start','top','top-end','right-start','right','right-end','bottom-end','bottom','bottom-start','left-end','left','left-start'],ce=he.slice(3),ge={FLIP:'flip',CLOCKWISE:'clockwise',COUNTERCLOCKWISE:'counterclockwise'},ue=function(){function t(o,n){var i=this,r=2<arguments.length&&void 0!==arguments[2]?arguments[2]:{};de(this,t),this.scheduleUpdate=function(){return requestAnimationFrame(i.update)},this.update=re(this.update.bind(this)),this.options=fe({},t.Defaults,r),this.state={isDestroyed:!1,isCreated:!1,scrollParents:[]},this.reference=o&&o.jquery?o[0]:o,this.popper=n&&n.jquery?n[0]:n,this.options.modifiers={},Object.keys(fe({},t.Defaults.modifiers,r.modifiers)).forEach(function(e){i.options.modifiers[e]=fe({},t.Defaults.modifiers[e]||{},r.modifiers?r.modifiers[e]:{})}),this.modifiers=Object.keys(this.options.modifiers).map(function(e){return fe({name:e},i.options.modifiers[e])}).sort(function(e,t){return e.order-t.order}),this.modifiers.forEach(function(t){t.enabled&&e(t.onLoad)&&t.onLoad(i.reference,i.popper,i.options,t,i.state)}),this.update();var p=this.options.eventsEnabled;p&&this.enableEventListeners(),this.state.eventsEnabled=p}return ae(t,[{key:'update',value:function(){return k.call(this)}},{key:'destroy',value:function(){return B.call(this)}},{key:'enableEventListeners',value:function(){return I.call(this)}},{key:'disableEventListeners',value:function(){return U.call(this)}}]),t}();return ue.Utils=('undefined'==typeof window?global:window).PopperUtils,ue.placements=he,ue.Defaults={placement:'bottom',positionFixed:!1,eventsEnabled:!0,removeOnDestroy:!1,onCreate:function(){},onUpdate:function(){},modifiers:{shift:{order:100,enabled:!0,fn:function(e){var t=e.placement,o=t.split('-')[0],n=t.split('-')[1];if(n){var i=e.offsets,r=i.reference,p=i.popper,s=-1!==['bottom','top'].indexOf(o),d=s?'left':'top',a=s?'width':'height',l={start:le({},d,r[d]),end:le({},d,r[d]+r[a]-p[a])};e.offsets.popper=fe({},p,l[n])}return e}},offset:{order:200,enabled:!0,fn:J,offset:0},preventOverflow:{order:300,enabled:!0,fn:function(e,t){var o=t.boundariesElement||p(e.instance.popper);e.instance.reference===o&&(o=p(o));var n=H('transform'),i=e.instance.popper.style,r=i.top,s=i.left,d=i[n];i.top='',i.left='',i[n]='';var a=v(e.instance.popper,e.instance.reference,t.padding,o,e.positionFixed);i.top=r,i.left=s,i[n]=d,t.boundaries=a;var l=t.priority,f=e.offsets.popper,m={primary:function(e){var o=f[e];return f[e]<a[e]&&!t.escapeWithReference&&(o=ee(f[e],a[e])),le({},e,o)},secondary:function(e){var o='right'===e?'left':'top',n=f[o];return f[e]>a[e]&&!t.escapeWithReference&&(n=Q(f[o],a[e]-('right'===e?f.width:f.height))),le({},o,n)}};return l.forEach(function(e){var t=-1===['left','top'].indexOf(e)?'secondary':'primary';f=fe({},f,m[t](e))}),e.offsets.popper=f,e},priority:['left','right','top','bottom'],padding:5,boundariesElement:'scrollParent'},keepTogether:{order:400,enabled:!0,fn:function(e){var t=e.offsets,o=t.popper,n=t.reference,i=e.placement.split('-')[0],r=Z,p=-1!==['top','bottom'].indexOf(i),s=p?'right':'bottom',d=p?'left':'top',a=p?'width':'height';return o[s]<r(n[d])&&(e.offsets.popper[d]=r(n[d])-o[a]),o[d]>r(n[s])&&(e.offsets.popper[d]=r(n[s])),e}},arrow:{order:500,enabled:!0,fn:function(e,o){var n;if(!K(e.instance.modifiers,'arrow','keepTogether'))return e;var i=o.element;if('string'==typeof i){if(i=e.instance.popper.querySelector(i),!i)return e;}else if(!e.instance.popper.contains(i))return console.warn('WARNING: `arrow.element` must be child of its popper element!'),e;var r=e.placement.split('-')[0],p=e.offsets,s=p.popper,d=p.reference,a=-1!==['left','right'].indexOf(r),l=a?'height':'width',f=a?'Top':'Left',m=f.toLowerCase(),h=a?'left':'top',c=a?'bottom':'right',u=S(i)[l];d[c]-u<s[m]&&(e.offsets.popper[m]-=s[m]-(d[c]-u)),d[m]+u>s[c]&&(e.offsets.popper[m]+=d[m]+u-s[c]),e.offsets.popper=g(e.offsets.popper);var b=d[m]+d[l]/2-u/2,w=t(e.instance.popper),y=parseFloat(w['margin'+f],10),E=parseFloat(w['border'+f+'Width'],10),v=b-e.offsets.popper[m]-y-E;return v=ee(Q(s[l]-u,v),0),e.arrowElement=i,e.offsets.arrow=(n={},le(n,m,$(v)),le(n,h,''),n),e},element:'[x-arrow]'},flip:{order:600,enabled:!0,fn:function(e,t){if(W(e.instance.modifiers,'inner'))return e;if(e.flipped&&e.placement===e.originalPlacement)return e;var o=v(e.instance.popper,e.instance.reference,t.padding,t.boundariesElement,e.positionFixed),n=e.placement.split('-')[0],i=T(n),r=e.placement.split('-')[1]||'',p=[];switch(t.behavior){case ge.FLIP:p=[n,i];break;case ge.CLOCKWISE:p=G(n);break;case ge.COUNTERCLOCKWISE:p=G(n,!0);break;default:p=t.behavior;}return p.forEach(function(s,d){if(n!==s||p.length===d+1)return e;n=e.placement.split('-')[0],i=T(n);var a=e.offsets.popper,l=e.offsets.reference,f=Z,m='left'===n&&f(a.right)>f(l.left)||'right'===n&&f(a.left)<f(l.right)||'top'===n&&f(a.bottom)>f(l.top)||'bottom'===n&&f(a.top)<f(l.bottom),h=f(a.left)<f(o.left),c=f(a.right)>f(o.right),g=f(a.top)<f(o.top),u=f(a.bottom)>f(o.bottom),b='left'===n&&h||'right'===n&&c||'top'===n&&g||'bottom'===n&&u,w=-1!==['top','bottom'].indexOf(n),y=!!t.flipVariations&&(w&&'start'===r&&h||w&&'end'===r&&c||!w&&'start'===r&&g||!w&&'end'===r&&u);(m||b||y)&&(e.flipped=!0,(m||b)&&(n=p[d+1]),y&&(r=z(r)),e.placement=n+(r?'-'+r:''),e.offsets.popper=fe({},e.offsets.popper,D(e.instance.popper,e.offsets.reference,e.placement)),e=P(e.instance.modifiers,e,'flip'))}),e},behavior:'flip',padding:5,boundariesElement:'viewport'},inner:{order:700,enabled:!1,fn:function(e){var t=e.placement,o=t.split('-')[0],n=e.offsets,i=n.popper,r=n.reference,p=-1!==['left','right'].indexOf(o),s=-1===['top','left'].indexOf(o);return i[p?'left':'top']=r[o]-(s?i[p?'width':'height']:0),e.placement=T(t),e.offsets.popper=g(i),e}},hide:{order:800,enabled:!0,fn:function(e){if(!K(e.instance.modifiers,'hide','preventOverflow'))return e;var t=e.offsets.reference,o=C(e.instance.modifiers,function(e){return'preventOverflow'===e.name}).boundaries;if(t.bottom<o.top||t.left>o.right||t.top>o.bottom||t.right<o.left){if(!0===e.hide)return e;e.hide=!0,e.attributes['x-out-of-boundaries']=''}else{if(!1===e.hide)return e;e.hide=!1,e.attributes['x-out-of-boundaries']=!1}return e}},computeStyle:{order:850,enabled:!0,fn:function(e,t){var o=t.x,n=t.y,i=e.offsets.popper,r=C(e.instance.modifiers,function(e){return'applyStyle'===e.name}).gpuAcceleration;void 0!==r&&console.warn('WARNING: `gpuAcceleration` option moved to `computeStyle` modifier and will not be supported in future versions of Popper.js!');var s,d,a=void 0===r?t.gpuAcceleration:r,l=p(e.instance.popper),f=u(l),m={position:i.position},h=q(e,2>window.devicePixelRatio||!me),c='bottom'===o?'top':'bottom',g='right'===n?'left':'right',b=H('transform');if(d='bottom'==c?'HTML'===l.nodeName?-l.clientHeight+h.bottom:-f.height+h.bottom:h.top,s='right'==g?'HTML'===l.nodeName?-l.clientWidth+h.right:-f.width+h.right:h.left,a&&b)m[b]='translate3d('+s+'px, '+d+'px, 0)',m[c]=0,m[g]=0,m.willChange='transform';else{var w='bottom'==c?-1:1,y='right'==g?-1:1;m[c]=d*w,m[g]=s*y,m.willChange=c+', '+g}var E={"x-placement":e.placement};return e.attributes=fe({},E,e.attributes),e.styles=fe({},m,e.styles),e.arrowStyles=fe({},e.offsets.arrow,e.arrowStyles),e},gpuAcceleration:!0,x:'bottom',y:'right'},applyStyle:{order:900,enabled:!0,fn:function(e){return j(e.instance.popper,e.styles),V(e.instance.popper,e.attributes),e.arrowElement&&Object.keys(e.arrowStyles).length&&j(e.arrowElement,e.arrowStyles),e},onLoad:function(e,t,o,n,i){var r=L(i,t,e,o.positionFixed),p=O(o.placement,r,t,e,o.modifiers.flip.boundariesElement,o.modifiers.flip.padding);return t.setAttribute('x-placement',p),j(t,{position:o.positionFixed?'fixed':'absolute'}),o},gpuAcceleration:void 0}}},ue});

/*!
  * Bootstrap v4.5.0 (https://getbootstrap.com/)
  * Copyright 2011-2020 The Bootstrap Authors (https://github.com/twbs/bootstrap/graphs/contributors)
  * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
  */
!function(t,e){"object"==typeof exports&&"undefined"!=typeof module?e(exports,require("jquery"),require("popper.js")):"function"==typeof define&&define.amd?define(["exports","jquery","popper.js"],e):e((t=t||self).bootstrap={},t.jQuery,t.Popper)}(this,(function(t,e,n){"use strict";function i(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}function o(t,e,n){return e&&i(t.prototype,e),n&&i(t,n),t}function s(t,e,n){return e in t?Object.defineProperty(t,e,{value:n,enumerable:!0,configurable:!0,writable:!0}):t[e]=n,t}function r(t,e){var n=Object.keys(t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(t);e&&(i=i.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),n.push.apply(n,i)}return n}function a(t){for(var e=1;e<arguments.length;e++){var n=null!=arguments[e]?arguments[e]:{};e%2?r(Object(n),!0).forEach((function(e){s(t,e,n[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(n)):r(Object(n)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(n,e))}))}return t}e=e&&Object.prototype.hasOwnProperty.call(e,"default")?e.default:e,n=n&&Object.prototype.hasOwnProperty.call(n,"default")?n.default:n;function l(t){var n=this,i=!1;return e(this).one(c.TRANSITION_END,(function(){i=!0})),setTimeout((function(){i||c.triggerTransitionEnd(n)}),t),this}var c={TRANSITION_END:"bsTransitionEnd",getUID:function(t){do{t+=~~(1e6*Math.random())}while(document.getElementById(t));return t},getSelectorFromElement:function(t){var e=t.getAttribute("data-target");if(!e||"#"===e){var n=t.getAttribute("href");e=n&&"#"!==n?n.trim():""}try{return document.querySelector(e)?e:null}catch(t){return null}},getTransitionDurationFromElement:function(t){if(!t)return 0;var n=e(t).css("transition-duration"),i=e(t).css("transition-delay"),o=parseFloat(n),s=parseFloat(i);return o||s?(n=n.split(",")[0],i=i.split(",")[0],1e3*(parseFloat(n)+parseFloat(i))):0},reflow:function(t){return t.offsetHeight},triggerTransitionEnd:function(t){e(t).trigger("transitionend")},supportsTransitionEnd:function(){return Boolean("transitionend")},isElement:function(t){return(t[0]||t).nodeType},typeCheckConfig:function(t,e,n){for(var i in n)if(Object.prototype.hasOwnProperty.call(n,i)){var o=n[i],s=e[i],r=s&&c.isElement(s)?"element":null===(a=s)||"undefined"==typeof a?""+a:{}.toString.call(a).match(/\s([a-z]+)/i)[1].toLowerCase();if(!new RegExp(o).test(r))throw new Error(t.toUpperCase()+': Option "'+i+'" provided type "'+r+'" but expected type "'+o+'".')}var a},findShadowRoot:function(t){if(!document.documentElement.attachShadow)return null;if("function"==typeof t.getRootNode){var e=t.getRootNode();return e instanceof ShadowRoot?e:null}return t instanceof ShadowRoot?t:t.parentNode?c.findShadowRoot(t.parentNode):null},jQueryDetection:function(){if("undefined"==typeof e)throw new TypeError("Bootstrap's JavaScript requires jQuery. jQuery must be included before Bootstrap's JavaScript.");var t=e.fn.jquery.split(" ")[0].split(".");if(t[0]<2&&t[1]<9||1===t[0]&&9===t[1]&&t[2]<1||t[0]>=4)throw new Error("Bootstrap's JavaScript requires at least jQuery v1.9.1 but less than v4.0.0")}};c.jQueryDetection(),e.fn.emulateTransitionEnd=l,e.event.special[c.TRANSITION_END]={bindType:"transitionend",delegateType:"transitionend",handle:function(t){if(e(t.target).is(this))return t.handleObj.handler.apply(this,arguments)}};var h="alert",u=e.fn[h],d=function(){function t(t){this._element=t}var n=t.prototype;return n.close=function(t){var e=this._element;t&&(e=this._getRootElement(t)),this._triggerCloseEvent(e).isDefaultPrevented()||this._removeElement(e)},n.dispose=function(){e.removeData(this._element,"bs.alert"),this._element=null},n._getRootElement=function(t){var n=c.getSelectorFromElement(t),i=!1;return n&&(i=document.querySelector(n)),i||(i=e(t).closest(".alert")[0]),i},n._triggerCloseEvent=function(t){var n=e.Event("close.bs.alert");return e(t).trigger(n),n},n._removeElement=function(t){var n=this;if(e(t).removeClass("show"),e(t).hasClass("fade")){var i=c.getTransitionDurationFromElement(t);e(t).one(c.TRANSITION_END,(function(e){return n._destroyElement(t,e)})).emulateTransitionEnd(i)}else this._destroyElement(t)},n._destroyElement=function(t){e(t).detach().trigger("closed.bs.alert").remove()},t._jQueryInterface=function(n){return this.each((function(){var i=e(this),o=i.data("bs.alert");o||(o=new t(this),i.data("bs.alert",o)),"close"===n&&o[n](this)}))},t._handleDismiss=function(t){return function(e){e&&e.preventDefault(),t.close(this)}},o(t,null,[{key:"VERSION",get:function(){return"4.5.0"}}]),t}();e(document).on("click.bs.alert.data-api",'[data-dismiss="alert"]',d._handleDismiss(new d)),e.fn[h]=d._jQueryInterface,e.fn[h].Constructor=d,e.fn[h].noConflict=function(){return e.fn[h]=u,d._jQueryInterface};var f=e.fn.button,g=function(){function t(t){this._element=t}var n=t.prototype;return n.toggle=function(){var t=!0,n=!0,i=e(this._element).closest('[data-toggle="buttons"]')[0];if(i){var o=this._element.querySelector('input:not([type="hidden"])');if(o){if("radio"===o.type)if(o.checked&&this._element.classList.contains("active"))t=!1;else{var s=i.querySelector(".active");s&&e(s).removeClass("active")}t&&("checkbox"!==o.type&&"radio"!==o.type||(o.checked=!this._element.classList.contains("active")),e(o).trigger("change")),o.focus(),n=!1}}this._element.hasAttribute("disabled")||this._element.classList.contains("disabled")||(n&&this._element.setAttribute("aria-pressed",!this._element.classList.contains("active")),t&&e(this._element).toggleClass("active"))},n.dispose=function(){e.removeData(this._element,"bs.button"),this._element=null},t._jQueryInterface=function(n){return this.each((function(){var i=e(this).data("bs.button");i||(i=new t(this),e(this).data("bs.button",i)),"toggle"===n&&i[n]()}))},o(t,null,[{key:"VERSION",get:function(){return"4.5.0"}}]),t}();e(document).on("click.bs.button.data-api",'[data-toggle^="button"]',(function(t){var n=t.target,i=n;if(e(n).hasClass("btn")||(n=e(n).closest(".btn")[0]),!n||n.hasAttribute("disabled")||n.classList.contains("disabled"))t.preventDefault();else{var o=n.querySelector('input:not([type="hidden"])');if(o&&(o.hasAttribute("disabled")||o.classList.contains("disabled")))return void t.preventDefault();"LABEL"===i.tagName&&o&&"checkbox"===o.type&&t.preventDefault(),g._jQueryInterface.call(e(n),"toggle")}})).on("focus.bs.button.data-api blur.bs.button.data-api",'[data-toggle^="button"]',(function(t){var n=e(t.target).closest(".btn")[0];e(n).toggleClass("focus",/^focus(in)?$/.test(t.type))})),e(window).on("load.bs.button.data-api",(function(){for(var t=[].slice.call(document.querySelectorAll('[data-toggle="buttons"] .btn')),e=0,n=t.length;e<n;e++){var i=t[e],o=i.querySelector('input:not([type="hidden"])');o.checked||o.hasAttribute("checked")?i.classList.add("active"):i.classList.remove("active")}for(var s=0,r=(t=[].slice.call(document.querySelectorAll('[data-toggle="button"]'))).length;s<r;s++){var a=t[s];"true"===a.getAttribute("aria-pressed")?a.classList.add("active"):a.classList.remove("active")}})),e.fn.button=g._jQueryInterface,e.fn.button.Constructor=g,e.fn.button.noConflict=function(){return e.fn.button=f,g._jQueryInterface};var m="carousel",p=".bs.carousel",_=e.fn[m],v={interval:5e3,keyboard:!0,slide:!1,pause:"hover",wrap:!0,touch:!0},b={interval:"(number|boolean)",keyboard:"boolean",slide:"(boolean|string)",pause:"(string|boolean)",wrap:"boolean",touch:"boolean"},y={TOUCH:"touch",PEN:"pen"},E=function(){function t(t,e){this._items=null,this._interval=null,this._activeElement=null,this._isPaused=!1,this._isSliding=!1,this.touchTimeout=null,this.touchStartX=0,this.touchDeltaX=0,this._config=this._getConfig(e),this._element=t,this._indicatorsElement=this._element.querySelector(".carousel-indicators"),this._touchSupported="ontouchstart"in document.documentElement||navigator.maxTouchPoints>0,this._pointerEvent=Boolean(window.PointerEvent||window.MSPointerEvent),this._addEventListeners()}var n=t.prototype;return n.next=function(){this._isSliding||this._slide("next")},n.nextWhenVisible=function(){!document.hidden&&e(this._element).is(":visible")&&"hidden"!==e(this._element).css("visibility")&&this.next()},n.prev=function(){this._isSliding||this._slide("prev")},n.pause=function(t){t||(this._isPaused=!0),this._element.querySelector(".carousel-item-next, .carousel-item-prev")&&(c.triggerTransitionEnd(this._element),this.cycle(!0)),clearInterval(this._interval),this._interval=null},n.cycle=function(t){t||(this._isPaused=!1),this._interval&&(clearInterval(this._interval),this._interval=null),this._config.interval&&!this._isPaused&&(this._interval=setInterval((document.visibilityState?this.nextWhenVisible:this.next).bind(this),this._config.interval))},n.to=function(t){var n=this;this._activeElement=this._element.querySelector(".active.carousel-item");var i=this._getItemIndex(this._activeElement);if(!(t>this._items.length-1||t<0))if(this._isSliding)e(this._element).one("slid.bs.carousel",(function(){return n.to(t)}));else{if(i===t)return this.pause(),void this.cycle();var o=t>i?"next":"prev";this._slide(o,this._items[t])}},n.dispose=function(){e(this._element).off(p),e.removeData(this._element,"bs.carousel"),this._items=null,this._config=null,this._element=null,this._interval=null,this._isPaused=null,this._isSliding=null,this._activeElement=null,this._indicatorsElement=null},n._getConfig=function(t){return t=a(a({},v),t),c.typeCheckConfig(m,t,b),t},n._handleSwipe=function(){var t=Math.abs(this.touchDeltaX);if(!(t<=40)){var e=t/this.touchDeltaX;this.touchDeltaX=0,e>0&&this.prev(),e<0&&this.next()}},n._addEventListeners=function(){var t=this;this._config.keyboard&&e(this._element).on("keydown.bs.carousel",(function(e){return t._keydown(e)})),"hover"===this._config.pause&&e(this._element).on("mouseenter.bs.carousel",(function(e){return t.pause(e)})).on("mouseleave.bs.carousel",(function(e){return t.cycle(e)})),this._config.touch&&this._addTouchEventListeners()},n._addTouchEventListeners=function(){var t=this;if(this._touchSupported){var n=function(e){t._pointerEvent&&y[e.originalEvent.pointerType.toUpperCase()]?t.touchStartX=e.originalEvent.clientX:t._pointerEvent||(t.touchStartX=e.originalEvent.touches[0].clientX)},i=function(e){t._pointerEvent&&y[e.originalEvent.pointerType.toUpperCase()]&&(t.touchDeltaX=e.originalEvent.clientX-t.touchStartX),t._handleSwipe(),"hover"===t._config.pause&&(t.pause(),t.touchTimeout&&clearTimeout(t.touchTimeout),t.touchTimeout=setTimeout((function(e){return t.cycle(e)}),500+t._config.interval))};e(this._element.querySelectorAll(".carousel-item img")).on("dragstart.bs.carousel",(function(t){return t.preventDefault()})),this._pointerEvent?(e(this._element).on("pointerdown.bs.carousel",(function(t){return n(t)})),e(this._element).on("pointerup.bs.carousel",(function(t){return i(t)})),this._element.classList.add("pointer-event")):(e(this._element).on("touchstart.bs.carousel",(function(t){return n(t)})),e(this._element).on("touchmove.bs.carousel",(function(e){return function(e){e.originalEvent.touches&&e.originalEvent.touches.length>1?t.touchDeltaX=0:t.touchDeltaX=e.originalEvent.touches[0].clientX-t.touchStartX}(e)})),e(this._element).on("touchend.bs.carousel",(function(t){return i(t)})))}},n._keydown=function(t){if(!/input|textarea/i.test(t.target.tagName))switch(t.which){case 37:t.preventDefault(),this.prev();break;case 39:t.preventDefault(),this.next()}},n._getItemIndex=function(t){return this._items=t&&t.parentNode?[].slice.call(t.parentNode.querySelectorAll(".carousel-item")):[],this._items.indexOf(t)},n._getItemByDirection=function(t,e){var n="next"===t,i="prev"===t,o=this._getItemIndex(e),s=this._items.length-1;if((i&&0===o||n&&o===s)&&!this._config.wrap)return e;var r=(o+("prev"===t?-1:1))%this._items.length;return-1===r?this._items[this._items.length-1]:this._items[r]},n._triggerSlideEvent=function(t,n){var i=this._getItemIndex(t),o=this._getItemIndex(this._element.querySelector(".active.carousel-item")),s=e.Event("slide.bs.carousel",{relatedTarget:t,direction:n,from:o,to:i});return e(this._element).trigger(s),s},n._setActiveIndicatorElement=function(t){if(this._indicatorsElement){var n=[].slice.call(this._indicatorsElement.querySelectorAll(".active"));e(n).removeClass("active");var i=this._indicatorsElement.children[this._getItemIndex(t)];i&&e(i).addClass("active")}},n._slide=function(t,n){var i,o,s,r=this,a=this._element.querySelector(".active.carousel-item"),l=this._getItemIndex(a),h=n||a&&this._getItemByDirection(t,a),u=this._getItemIndex(h),d=Boolean(this._interval);if("next"===t?(i="carousel-item-left",o="carousel-item-next",s="left"):(i="carousel-item-right",o="carousel-item-prev",s="right"),h&&e(h).hasClass("active"))this._isSliding=!1;else if(!this._triggerSlideEvent(h,s).isDefaultPrevented()&&a&&h){this._isSliding=!0,d&&this.pause(),this._setActiveIndicatorElement(h);var f=e.Event("slid.bs.carousel",{relatedTarget:h,direction:s,from:l,to:u});if(e(this._element).hasClass("slide")){e(h).addClass(o),c.reflow(h),e(a).addClass(i),e(h).addClass(i);var g=parseInt(h.getAttribute("data-interval"),10);g?(this._config.defaultInterval=this._config.defaultInterval||this._config.interval,this._config.interval=g):this._config.interval=this._config.defaultInterval||this._config.interval;var m=c.getTransitionDurationFromElement(a);e(a).one(c.TRANSITION_END,(function(){e(h).removeClass(i+" "+o).addClass("active"),e(a).removeClass("active "+o+" "+i),r._isSliding=!1,setTimeout((function(){return e(r._element).trigger(f)}),0)})).emulateTransitionEnd(m)}else e(a).removeClass("active"),e(h).addClass("active"),this._isSliding=!1,e(this._element).trigger(f);d&&this.cycle()}},t._jQueryInterface=function(n){return this.each((function(){var i=e(this).data("bs.carousel"),o=a(a({},v),e(this).data());"object"==typeof n&&(o=a(a({},o),n));var s="string"==typeof n?n:o.slide;if(i||(i=new t(this,o),e(this).data("bs.carousel",i)),"number"==typeof n)i.to(n);else if("string"==typeof s){if("undefined"==typeof i[s])throw new TypeError('No method named "'+s+'"');i[s]()}else o.interval&&o.ride&&(i.pause(),i.cycle())}))},t._dataApiClickHandler=function(n){var i=c.getSelectorFromElement(this);if(i){var o=e(i)[0];if(o&&e(o).hasClass("carousel")){var s=a(a({},e(o).data()),e(this).data()),r=this.getAttribute("data-slide-to");r&&(s.interval=!1),t._jQueryInterface.call(e(o),s),r&&e(o).data("bs.carousel").to(r),n.preventDefault()}}},o(t,null,[{key:"VERSION",get:function(){return"4.5.0"}},{key:"Default",get:function(){return v}}]),t}();e(document).on("click.bs.carousel.data-api","[data-slide], [data-slide-to]",E._dataApiClickHandler),e(window).on("load.bs.carousel.data-api",(function(){for(var t=[].slice.call(document.querySelectorAll('[data-ride="carousel"]')),n=0,i=t.length;n<i;n++){var o=e(t[n]);E._jQueryInterface.call(o,o.data())}})),e.fn[m]=E._jQueryInterface,e.fn[m].Constructor=E,e.fn[m].noConflict=function(){return e.fn[m]=_,E._jQueryInterface};var w="collapse",T=e.fn[w],C={toggle:!0,parent:""},S={toggle:"boolean",parent:"(string|element)"},D=function(){function t(t,e){this._isTransitioning=!1,this._element=t,this._config=this._getConfig(e),this._triggerArray=[].slice.call(document.querySelectorAll('[data-toggle="collapse"][href="#'+t.id+'"],[data-toggle="collapse"][data-target="#'+t.id+'"]'));for(var n=[].slice.call(document.querySelectorAll('[data-toggle="collapse"]')),i=0,o=n.length;i<o;i++){var s=n[i],r=c.getSelectorFromElement(s),a=[].slice.call(document.querySelectorAll(r)).filter((function(e){return e===t}));null!==r&&a.length>0&&(this._selector=r,this._triggerArray.push(s))}this._parent=this._config.parent?this._getParent():null,this._config.parent||this._addAriaAndCollapsedClass(this._element,this._triggerArray),this._config.toggle&&this.toggle()}var n=t.prototype;return n.toggle=function(){e(this._element).hasClass("show")?this.hide():this.show()},n.show=function(){var n,i,o=this;if(!this._isTransitioning&&!e(this._element).hasClass("show")&&(this._parent&&0===(n=[].slice.call(this._parent.querySelectorAll(".show, .collapsing")).filter((function(t){return"string"==typeof o._config.parent?t.getAttribute("data-parent")===o._config.parent:t.classList.contains("collapse")}))).length&&(n=null),!(n&&(i=e(n).not(this._selector).data("bs.collapse"))&&i._isTransitioning))){var s=e.Event("show.bs.collapse");if(e(this._element).trigger(s),!s.isDefaultPrevented()){n&&(t._jQueryInterface.call(e(n).not(this._selector),"hide"),i||e(n).data("bs.collapse",null));var r=this._getDimension();e(this._element).removeClass("collapse").addClass("collapsing"),this._element.style[r]=0,this._triggerArray.length&&e(this._triggerArray).removeClass("collapsed").attr("aria-expanded",!0),this.setTransitioning(!0);var a="scroll"+(r[0].toUpperCase()+r.slice(1)),l=c.getTransitionDurationFromElement(this._element);e(this._element).one(c.TRANSITION_END,(function(){e(o._element).removeClass("collapsing").addClass("collapse show"),o._element.style[r]="",o.setTransitioning(!1),e(o._element).trigger("shown.bs.collapse")})).emulateTransitionEnd(l),this._element.style[r]=this._element[a]+"px"}}},n.hide=function(){var t=this;if(!this._isTransitioning&&e(this._element).hasClass("show")){var n=e.Event("hide.bs.collapse");if(e(this._element).trigger(n),!n.isDefaultPrevented()){var i=this._getDimension();this._element.style[i]=this._element.getBoundingClientRect()[i]+"px",c.reflow(this._element),e(this._element).addClass("collapsing").removeClass("collapse show");var o=this._triggerArray.length;if(o>0)for(var s=0;s<o;s++){var r=this._triggerArray[s],a=c.getSelectorFromElement(r);if(null!==a)e([].slice.call(document.querySelectorAll(a))).hasClass("show")||e(r).addClass("collapsed").attr("aria-expanded",!1)}this.setTransitioning(!0);this._element.style[i]="";var l=c.getTransitionDurationFromElement(this._element);e(this._element).one(c.TRANSITION_END,(function(){t.setTransitioning(!1),e(t._element).removeClass("collapsing").addClass("collapse").trigger("hidden.bs.collapse")})).emulateTransitionEnd(l)}}},n.setTransitioning=function(t){this._isTransitioning=t},n.dispose=function(){e.removeData(this._element,"bs.collapse"),this._config=null,this._parent=null,this._element=null,this._triggerArray=null,this._isTransitioning=null},n._getConfig=function(t){return(t=a(a({},C),t)).toggle=Boolean(t.toggle),c.typeCheckConfig(w,t,S),t},n._getDimension=function(){return e(this._element).hasClass("width")?"width":"height"},n._getParent=function(){var n,i=this;c.isElement(this._config.parent)?(n=this._config.parent,"undefined"!=typeof this._config.parent.jquery&&(n=this._config.parent[0])):n=document.querySelector(this._config.parent);var o='[data-toggle="collapse"][data-parent="'+this._config.parent+'"]',s=[].slice.call(n.querySelectorAll(o));return e(s).each((function(e,n){i._addAriaAndCollapsedClass(t._getTargetFromElement(n),[n])})),n},n._addAriaAndCollapsedClass=function(t,n){var i=e(t).hasClass("show");n.length&&e(n).toggleClass("collapsed",!i).attr("aria-expanded",i)},t._getTargetFromElement=function(t){var e=c.getSelectorFromElement(t);return e?document.querySelector(e):null},t._jQueryInterface=function(n){return this.each((function(){var i=e(this),o=i.data("bs.collapse"),s=a(a(a({},C),i.data()),"object"==typeof n&&n?n:{});if(!o&&s.toggle&&"string"==typeof n&&/show|hide/.test(n)&&(s.toggle=!1),o||(o=new t(this,s),i.data("bs.collapse",o)),"string"==typeof n){if("undefined"==typeof o[n])throw new TypeError('No method named "'+n+'"');o[n]()}}))},o(t,null,[{key:"VERSION",get:function(){return"4.5.0"}},{key:"Default",get:function(){return C}}]),t}();e(document).on("click.bs.collapse.data-api",'[data-toggle="collapse"]',(function(t){"A"===t.currentTarget.tagName&&t.preventDefault();var n=e(this),i=c.getSelectorFromElement(this),o=[].slice.call(document.querySelectorAll(i));e(o).each((function(){var t=e(this),i=t.data("bs.collapse")?"toggle":n.data();D._jQueryInterface.call(t,i)}))})),e.fn[w]=D._jQueryInterface,e.fn[w].Constructor=D,e.fn[w].noConflict=function(){return e.fn[w]=T,D._jQueryInterface};var k="dropdown",N=e.fn[k],A=new RegExp("38|40|27"),I={offset:0,flip:!0,boundary:"scrollParent",reference:"toggle",display:"dynamic",popperConfig:null},O={offset:"(number|string|function)",flip:"boolean",boundary:"(string|element)",reference:"(string|element)",display:"string",popperConfig:"(null|object)"},j=function(){function t(t,e){this._element=t,this._popper=null,this._config=this._getConfig(e),this._menu=this._getMenuElement(),this._inNavbar=this._detectNavbar(),this._addEventListeners()}var i=t.prototype;return i.toggle=function(){if(!this._element.disabled&&!e(this._element).hasClass("disabled")){var n=e(this._menu).hasClass("show");t._clearMenus(),n||this.show(!0)}},i.show=function(i){if(void 0===i&&(i=!1),!(this._element.disabled||e(this._element).hasClass("disabled")||e(this._menu).hasClass("show"))){var o={relatedTarget:this._element},s=e.Event("show.bs.dropdown",o),r=t._getParentFromElement(this._element);if(e(r).trigger(s),!s.isDefaultPrevented()){if(!this._inNavbar&&i){if("undefined"==typeof n)throw new TypeError("Bootstrap's dropdowns require Popper.js (https://popper.js.org/)");var a=this._element;"parent"===this._config.reference?a=r:c.isElement(this._config.reference)&&(a=this._config.reference,"undefined"!=typeof this._config.reference.jquery&&(a=this._config.reference[0])),"scrollParent"!==this._config.boundary&&e(r).addClass("position-static"),this._popper=new n(a,this._menu,this._getPopperConfig())}"ontouchstart"in document.documentElement&&0===e(r).closest(".navbar-nav").length&&e(document.body).children().on("mouseover",null,e.noop),this._element.focus(),this._element.setAttribute("aria-expanded",!0),e(this._menu).toggleClass("show"),e(r).toggleClass("show").trigger(e.Event("shown.bs.dropdown",o))}}},i.hide=function(){if(!this._element.disabled&&!e(this._element).hasClass("disabled")&&e(this._menu).hasClass("show")){var n={relatedTarget:this._element},i=e.Event("hide.bs.dropdown",n),o=t._getParentFromElement(this._element);e(o).trigger(i),i.isDefaultPrevented()||(this._popper&&this._popper.destroy(),e(this._menu).toggleClass("show"),e(o).toggleClass("show").trigger(e.Event("hidden.bs.dropdown",n)))}},i.dispose=function(){e.removeData(this._element,"bs.dropdown"),e(this._element).off(".bs.dropdown"),this._element=null,this._menu=null,null!==this._popper&&(this._popper.destroy(),this._popper=null)},i.update=function(){this._inNavbar=this._detectNavbar(),null!==this._popper&&this._popper.scheduleUpdate()},i._addEventListeners=function(){var t=this;e(this._element).on("click.bs.dropdown",(function(e){e.preventDefault(),e.stopPropagation(),t.toggle()}))},i._getConfig=function(t){return t=a(a(a({},this.constructor.Default),e(this._element).data()),t),c.typeCheckConfig(k,t,this.constructor.DefaultType),t},i._getMenuElement=function(){if(!this._menu){var e=t._getParentFromElement(this._element);e&&(this._menu=e.querySelector(".dropdown-menu"))}return this._menu},i._getPlacement=function(){var t=e(this._element.parentNode),n="bottom-start";return t.hasClass("dropup")?n=e(this._menu).hasClass("dropdown-menu-right")?"top-end":"top-start":t.hasClass("dropright")?n="right-start":t.hasClass("dropleft")?n="left-start":e(this._menu).hasClass("dropdown-menu-right")&&(n="bottom-end"),n},i._detectNavbar=function(){return e(this._element).closest(".navbar").length>0},i._getOffset=function(){var t=this,e={};return"function"==typeof this._config.offset?e.fn=function(e){return e.offsets=a(a({},e.offsets),t._config.offset(e.offsets,t._element)||{}),e}:e.offset=this._config.offset,e},i._getPopperConfig=function(){var t={placement:this._getPlacement(),modifiers:{offset:this._getOffset(),flip:{enabled:this._config.flip},preventOverflow:{boundariesElement:this._config.boundary}}};return"static"===this._config.display&&(t.modifiers.applyStyle={enabled:!1}),a(a({},t),this._config.popperConfig)},t._jQueryInterface=function(n){return this.each((function(){var i=e(this).data("bs.dropdown");if(i||(i=new t(this,"object"==typeof n?n:null),e(this).data("bs.dropdown",i)),"string"==typeof n){if("undefined"==typeof i[n])throw new TypeError('No method named "'+n+'"');i[n]()}}))},t._clearMenus=function(n){if(!n||3!==n.which&&("keyup"!==n.type||9===n.which))for(var i=[].slice.call(document.querySelectorAll('[data-toggle="dropdown"]')),o=0,s=i.length;o<s;o++){var r=t._getParentFromElement(i[o]),a=e(i[o]).data("bs.dropdown"),l={relatedTarget:i[o]};if(n&&"click"===n.type&&(l.clickEvent=n),a){var c=a._menu;if(e(r).hasClass("show")&&!(n&&("click"===n.type&&/input|textarea/i.test(n.target.tagName)||"keyup"===n.type&&9===n.which)&&e.contains(r,n.target))){var h=e.Event("hide.bs.dropdown",l);e(r).trigger(h),h.isDefaultPrevented()||("ontouchstart"in document.documentElement&&e(document.body).children().off("mouseover",null,e.noop),i[o].setAttribute("aria-expanded","false"),a._popper&&a._popper.destroy(),e(c).removeClass("show"),e(r).removeClass("show").trigger(e.Event("hidden.bs.dropdown",l)))}}}},t._getParentFromElement=function(t){var e,n=c.getSelectorFromElement(t);return n&&(e=document.querySelector(n)),e||t.parentNode},t._dataApiKeydownHandler=function(n){if(!(/input|textarea/i.test(n.target.tagName)?32===n.which||27!==n.which&&(40!==n.which&&38!==n.which||e(n.target).closest(".dropdown-menu").length):!A.test(n.which))&&!this.disabled&&!e(this).hasClass("disabled")){var i=t._getParentFromElement(this),o=e(i).hasClass("show");if(o||27!==n.which){if(n.preventDefault(),n.stopPropagation(),!o||o&&(27===n.which||32===n.which))return 27===n.which&&e(i.querySelector('[data-toggle="dropdown"]')).trigger("focus"),void e(this).trigger("click");var s=[].slice.call(i.querySelectorAll(".dropdown-menu .dropdown-item:not(.disabled):not(:disabled)")).filter((function(t){return e(t).is(":visible")}));if(0!==s.length){var r=s.indexOf(n.target);38===n.which&&r>0&&r--,40===n.which&&r<s.length-1&&r++,r<0&&(r=0),s[r].focus()}}}},o(t,null,[{key:"VERSION",get:function(){return"4.5.0"}},{key:"Default",get:function(){return I}},{key:"DefaultType",get:function(){return O}}]),t}();e(document).on("keydown.bs.dropdown.data-api",'[data-toggle="dropdown"]',j._dataApiKeydownHandler).on("keydown.bs.dropdown.data-api",".dropdown-menu",j._dataApiKeydownHandler).on("click.bs.dropdown.data-api keyup.bs.dropdown.data-api",j._clearMenus).on("click.bs.dropdown.data-api",'[data-toggle="dropdown"]',(function(t){t.preventDefault(),t.stopPropagation(),j._jQueryInterface.call(e(this),"toggle")})).on("click.bs.dropdown.data-api",".dropdown form",(function(t){t.stopPropagation()})),e.fn[k]=j._jQueryInterface,e.fn[k].Constructor=j,e.fn[k].noConflict=function(){return e.fn[k]=N,j._jQueryInterface};var P=e.fn.modal,x={backdrop:!0,keyboard:!0,focus:!0,show:!0},L={backdrop:"(boolean|string)",keyboard:"boolean",focus:"boolean",show:"boolean"},R=function(){function t(t,e){this._config=this._getConfig(e),this._element=t,this._dialog=t.querySelector(".modal-dialog"),this._backdrop=null,this._isShown=!1,this._isBodyOverflowing=!1,this._ignoreBackdropClick=!1,this._isTransitioning=!1,this._scrollbarWidth=0}var n=t.prototype;return n.toggle=function(t){return this._isShown?this.hide():this.show(t)},n.show=function(t){var n=this;if(!this._isShown&&!this._isTransitioning){e(this._element).hasClass("fade")&&(this._isTransitioning=!0);var i=e.Event("show.bs.modal",{relatedTarget:t});e(this._element).trigger(i),this._isShown||i.isDefaultPrevented()||(this._isShown=!0,this._checkScrollbar(),this._setScrollbar(),this._adjustDialog(),this._setEscapeEvent(),this._setResizeEvent(),e(this._element).on("click.dismiss.bs.modal",'[data-dismiss="modal"]',(function(t){return n.hide(t)})),e(this._dialog).on("mousedown.dismiss.bs.modal",(function(){e(n._element).one("mouseup.dismiss.bs.modal",(function(t){e(t.target).is(n._element)&&(n._ignoreBackdropClick=!0)}))})),this._showBackdrop((function(){return n._showElement(t)})))}},n.hide=function(t){var n=this;if(t&&t.preventDefault(),this._isShown&&!this._isTransitioning){var i=e.Event("hide.bs.modal");if(e(this._element).trigger(i),this._isShown&&!i.isDefaultPrevented()){this._isShown=!1;var o=e(this._element).hasClass("fade");if(o&&(this._isTransitioning=!0),this._setEscapeEvent(),this._setResizeEvent(),e(document).off("focusin.bs.modal"),e(this._element).removeClass("show"),e(this._element).off("click.dismiss.bs.modal"),e(this._dialog).off("mousedown.dismiss.bs.modal"),o){var s=c.getTransitionDurationFromElement(this._element);e(this._element).one(c.TRANSITION_END,(function(t){return n._hideModal(t)})).emulateTransitionEnd(s)}else this._hideModal()}}},n.dispose=function(){[window,this._element,this._dialog].forEach((function(t){return e(t).off(".bs.modal")})),e(document).off("focusin.bs.modal"),e.removeData(this._element,"bs.modal"),this._config=null,this._element=null,this._dialog=null,this._backdrop=null,this._isShown=null,this._isBodyOverflowing=null,this._ignoreBackdropClick=null,this._isTransitioning=null,this._scrollbarWidth=null},n.handleUpdate=function(){this._adjustDialog()},n._getConfig=function(t){return t=a(a({},x),t),c.typeCheckConfig("modal",t,L),t},n._triggerBackdropTransition=function(){var t=this;if("static"===this._config.backdrop){var n=e.Event("hidePrevented.bs.modal");if(e(this._element).trigger(n),n.defaultPrevented)return;this._element.classList.add("modal-static");var i=c.getTransitionDurationFromElement(this._element);e(this._element).one(c.TRANSITION_END,(function(){t._element.classList.remove("modal-static")})).emulateTransitionEnd(i),this._element.focus()}else this.hide()},n._showElement=function(t){var n=this,i=e(this._element).hasClass("fade"),o=this._dialog?this._dialog.querySelector(".modal-body"):null;this._element.parentNode&&this._element.parentNode.nodeType===Node.ELEMENT_NODE||document.body.appendChild(this._element),this._element.style.display="block",this._element.removeAttribute("aria-hidden"),this._element.setAttribute("aria-modal",!0),e(this._dialog).hasClass("modal-dialog-scrollable")&&o?o.scrollTop=0:this._element.scrollTop=0,i&&c.reflow(this._element),e(this._element).addClass("show"),this._config.focus&&this._enforceFocus();var s=e.Event("shown.bs.modal",{relatedTarget:t}),r=function(){n._config.focus&&n._element.focus(),n._isTransitioning=!1,e(n._element).trigger(s)};if(i){var a=c.getTransitionDurationFromElement(this._dialog);e(this._dialog).one(c.TRANSITION_END,r).emulateTransitionEnd(a)}else r()},n._enforceFocus=function(){var t=this;e(document).off("focusin.bs.modal").on("focusin.bs.modal",(function(n){document!==n.target&&t._element!==n.target&&0===e(t._element).has(n.target).length&&t._element.focus()}))},n._setEscapeEvent=function(){var t=this;this._isShown?e(this._element).on("keydown.dismiss.bs.modal",(function(e){t._config.keyboard&&27===e.which?(e.preventDefault(),t.hide()):t._config.keyboard||27!==e.which||t._triggerBackdropTransition()})):this._isShown||e(this._element).off("keydown.dismiss.bs.modal")},n._setResizeEvent=function(){var t=this;this._isShown?e(window).on("resize.bs.modal",(function(e){return t.handleUpdate(e)})):e(window).off("resize.bs.modal")},n._hideModal=function(){var t=this;this._element.style.display="none",this._element.setAttribute("aria-hidden",!0),this._element.removeAttribute("aria-modal"),this._isTransitioning=!1,this._showBackdrop((function(){e(document.body).removeClass("modal-open"),t._resetAdjustments(),t._resetScrollbar(),e(t._element).trigger("hidden.bs.modal")}))},n._removeBackdrop=function(){this._backdrop&&(e(this._backdrop).remove(),this._backdrop=null)},n._showBackdrop=function(t){var n=this,i=e(this._element).hasClass("fade")?"fade":"";if(this._isShown&&this._config.backdrop){if(this._backdrop=document.createElement("div"),this._backdrop.className="modal-backdrop",i&&this._backdrop.classList.add(i),e(this._backdrop).appendTo(document.body),e(this._element).on("click.dismiss.bs.modal",(function(t){n._ignoreBackdropClick?n._ignoreBackdropClick=!1:t.target===t.currentTarget&&n._triggerBackdropTransition()})),i&&c.reflow(this._backdrop),e(this._backdrop).addClass("show"),!t)return;if(!i)return void t();var o=c.getTransitionDurationFromElement(this._backdrop);e(this._backdrop).one(c.TRANSITION_END,t).emulateTransitionEnd(o)}else if(!this._isShown&&this._backdrop){e(this._backdrop).removeClass("show");var s=function(){n._removeBackdrop(),t&&t()};if(e(this._element).hasClass("fade")){var r=c.getTransitionDurationFromElement(this._backdrop);e(this._backdrop).one(c.TRANSITION_END,s).emulateTransitionEnd(r)}else s()}else t&&t()},n._adjustDialog=function(){var t=this._element.scrollHeight>document.documentElement.clientHeight;!this._isBodyOverflowing&&t&&(this._element.style.paddingLeft=this._scrollbarWidth+"px"),this._isBodyOverflowing&&!t&&(this._element.style.paddingRight=this._scrollbarWidth+"px")},n._resetAdjustments=function(){this._element.style.paddingLeft="",this._element.style.paddingRight=""},n._checkScrollbar=function(){var t=document.body.getBoundingClientRect();this._isBodyOverflowing=Math.round(t.left+t.right)<window.innerWidth,this._scrollbarWidth=this._getScrollbarWidth()},n._setScrollbar=function(){var t=this;if(this._isBodyOverflowing){var n=[].slice.call(document.querySelectorAll(".fixed-top, .fixed-bottom, .is-fixed, .sticky-top")),i=[].slice.call(document.querySelectorAll(".sticky-top"));e(n).each((function(n,i){var o=i.style.paddingRight,s=e(i).css("padding-right");e(i).data("padding-right",o).css("padding-right",parseFloat(s)+t._scrollbarWidth+"px")})),e(i).each((function(n,i){var o=i.style.marginRight,s=e(i).css("margin-right");e(i).data("margin-right",o).css("margin-right",parseFloat(s)-t._scrollbarWidth+"px")}));var o=document.body.style.paddingRight,s=e(document.body).css("padding-right");e(document.body).data("padding-right",o).css("padding-right",parseFloat(s)+this._scrollbarWidth+"px")}e(document.body).addClass("modal-open")},n._resetScrollbar=function(){var t=[].slice.call(document.querySelectorAll(".fixed-top, .fixed-bottom, .is-fixed, .sticky-top"));e(t).each((function(t,n){var i=e(n).data("padding-right");e(n).removeData("padding-right"),n.style.paddingRight=i||""}));var n=[].slice.call(document.querySelectorAll(".sticky-top"));e(n).each((function(t,n){var i=e(n).data("margin-right");"undefined"!=typeof i&&e(n).css("margin-right",i).removeData("margin-right")}));var i=e(document.body).data("padding-right");e(document.body).removeData("padding-right"),document.body.style.paddingRight=i||""},n._getScrollbarWidth=function(){var t=document.createElement("div");t.className="modal-scrollbar-measure",document.body.appendChild(t);var e=t.getBoundingClientRect().width-t.clientWidth;return document.body.removeChild(t),e},t._jQueryInterface=function(n,i){return this.each((function(){var o=e(this).data("bs.modal"),s=a(a(a({},x),e(this).data()),"object"==typeof n&&n?n:{});if(o||(o=new t(this,s),e(this).data("bs.modal",o)),"string"==typeof n){if("undefined"==typeof o[n])throw new TypeError('No method named "'+n+'"');o[n](i)}else s.show&&o.show(i)}))},o(t,null,[{key:"VERSION",get:function(){return"4.5.0"}},{key:"Default",get:function(){return x}}]),t}();e(document).on("click.bs.modal.data-api",'[data-toggle="modal"]',(function(t){var n,i=this,o=c.getSelectorFromElement(this);o&&(n=document.querySelector(o));var s=e(n).data("bs.modal")?"toggle":a(a({},e(n).data()),e(this).data());"A"!==this.tagName&&"AREA"!==this.tagName||t.preventDefault();var r=e(n).one("show.bs.modal",(function(t){t.isDefaultPrevented()||r.one("hidden.bs.modal",(function(){e(i).is(":visible")&&i.focus()}))}));R._jQueryInterface.call(e(n),s,this)})),e.fn.modal=R._jQueryInterface,e.fn.modal.Constructor=R,e.fn.modal.noConflict=function(){return e.fn.modal=P,R._jQueryInterface};var q=["background","cite","href","itemtype","longdesc","poster","src","xlink:href"],F={"*":["class","dir","id","lang","role",/^aria-[\w-]*$/i],a:["target","href","title","rel"],area:[],b:[],br:[],col:[],code:[],div:[],em:[],hr:[],h1:[],h2:[],h3:[],h4:[],h5:[],h6:[],i:[],img:["src","srcset","alt","title","width","height"],li:[],ol:[],p:[],pre:[],s:[],small:[],span:[],sub:[],sup:[],strong:[],u:[],ul:[]},Q=/^(?:(?:https?|mailto|ftp|tel|file):|[^#&/:?]*(?:[#/?]|$))/gi,B=/^data:(?:image\/(?:bmp|gif|jpeg|jpg|png|tiff|webp)|video\/(?:mpeg|mp4|ogg|webm)|audio\/(?:mp3|oga|ogg|opus));base64,[\d+/a-z]+=*$/i;function H(t,e,n){if(0===t.length)return t;if(n&&"function"==typeof n)return n(t);for(var i=(new window.DOMParser).parseFromString(t,"text/html"),o=Object.keys(e),s=[].slice.call(i.body.querySelectorAll("*")),r=function(t,n){var i=s[t],r=i.nodeName.toLowerCase();if(-1===o.indexOf(i.nodeName.toLowerCase()))return i.parentNode.removeChild(i),"continue";var a=[].slice.call(i.attributes),l=[].concat(e["*"]||[],e[r]||[]);a.forEach((function(t){(function(t,e){var n=t.nodeName.toLowerCase();if(-1!==e.indexOf(n))return-1===q.indexOf(n)||Boolean(t.nodeValue.match(Q)||t.nodeValue.match(B));for(var i=e.filter((function(t){return t instanceof RegExp})),o=0,s=i.length;o<s;o++)if(n.match(i[o]))return!0;return!1})(t,l)||i.removeAttribute(t.nodeName)}))},a=0,l=s.length;a<l;a++)r(a);return i.body.innerHTML}var U="tooltip",M=e.fn[U],W=new RegExp("(^|\\s)bs-tooltip\\S+","g"),V=["sanitize","whiteList","sanitizeFn"],z={animation:"boolean",template:"string",title:"(string|element|function)",trigger:"string",delay:"(number|object)",html:"boolean",selector:"(string|boolean)",placement:"(string|function)",offset:"(number|string|function)",container:"(string|element|boolean)",fallbackPlacement:"(string|array)",boundary:"(string|element)",sanitize:"boolean",sanitizeFn:"(null|function)",whiteList:"object",popperConfig:"(null|object)"},K={AUTO:"auto",TOP:"top",RIGHT:"right",BOTTOM:"bottom",LEFT:"left"},X={animation:!0,template:'<div class="tooltip" role="tooltip"><div class="arrow"></div><div class="tooltip-inner"></div></div>',trigger:"hover focus",title:"",delay:0,html:!1,selector:!1,placement:"top",offset:0,container:!1,fallbackPlacement:"flip",boundary:"scrollParent",sanitize:!0,sanitizeFn:null,whiteList:F,popperConfig:null},Y={HIDE:"hide.bs.tooltip",HIDDEN:"hidden.bs.tooltip",SHOW:"show.bs.tooltip",SHOWN:"shown.bs.tooltip",INSERTED:"inserted.bs.tooltip",CLICK:"click.bs.tooltip",FOCUSIN:"focusin.bs.tooltip",FOCUSOUT:"focusout.bs.tooltip",MOUSEENTER:"mouseenter.bs.tooltip",MOUSELEAVE:"mouseleave.bs.tooltip"},$=function(){function t(t,e){if("undefined"==typeof n)throw new TypeError("Bootstrap's tooltips require Popper.js (https://popper.js.org/)");this._isEnabled=!0,this._timeout=0,this._hoverState="",this._activeTrigger={},this._popper=null,this.element=t,this.config=this._getConfig(e),this.tip=null,this._setListeners()}var i=t.prototype;return i.enable=function(){this._isEnabled=!0},i.disable=function(){this._isEnabled=!1},i.toggleEnabled=function(){this._isEnabled=!this._isEnabled},i.toggle=function(t){if(this._isEnabled)if(t){var n=this.constructor.DATA_KEY,i=e(t.currentTarget).data(n);i||(i=new this.constructor(t.currentTarget,this._getDelegateConfig()),e(t.currentTarget).data(n,i)),i._activeTrigger.click=!i._activeTrigger.click,i._isWithActiveTrigger()?i._enter(null,i):i._leave(null,i)}else{if(e(this.getTipElement()).hasClass("show"))return void this._leave(null,this);this._enter(null,this)}},i.dispose=function(){clearTimeout(this._timeout),e.removeData(this.element,this.constructor.DATA_KEY),e(this.element).off(this.constructor.EVENT_KEY),e(this.element).closest(".modal").off("hide.bs.modal",this._hideModalHandler),this.tip&&e(this.tip).remove(),this._isEnabled=null,this._timeout=null,this._hoverState=null,this._activeTrigger=null,this._popper&&this._popper.destroy(),this._popper=null,this.element=null,this.config=null,this.tip=null},i.show=function(){var t=this;if("none"===e(this.element).css("display"))throw new Error("Please use show on visible elements");var i=e.Event(this.constructor.Event.SHOW);if(this.isWithContent()&&this._isEnabled){e(this.element).trigger(i);var o=c.findShadowRoot(this.element),s=e.contains(null!==o?o:this.element.ownerDocument.documentElement,this.element);if(i.isDefaultPrevented()||!s)return;var r=this.getTipElement(),a=c.getUID(this.constructor.NAME);r.setAttribute("id",a),this.element.setAttribute("aria-describedby",a),this.setContent(),this.config.animation&&e(r).addClass("fade");var l="function"==typeof this.config.placement?this.config.placement.call(this,r,this.element):this.config.placement,h=this._getAttachment(l);this.addAttachmentClass(h);var u=this._getContainer();e(r).data(this.constructor.DATA_KEY,this),e.contains(this.element.ownerDocument.documentElement,this.tip)||e(r).appendTo(u),e(this.element).trigger(this.constructor.Event.INSERTED),this._popper=new n(this.element,r,this._getPopperConfig(h)),e(r).addClass("show"),"ontouchstart"in document.documentElement&&e(document.body).children().on("mouseover",null,e.noop);var d=function(){t.config.animation&&t._fixTransition();var n=t._hoverState;t._hoverState=null,e(t.element).trigger(t.constructor.Event.SHOWN),"out"===n&&t._leave(null,t)};if(e(this.tip).hasClass("fade")){var f=c.getTransitionDurationFromElement(this.tip);e(this.tip).one(c.TRANSITION_END,d).emulateTransitionEnd(f)}else d()}},i.hide=function(t){var n=this,i=this.getTipElement(),o=e.Event(this.constructor.Event.HIDE),s=function(){"show"!==n._hoverState&&i.parentNode&&i.parentNode.removeChild(i),n._cleanTipClass(),n.element.removeAttribute("aria-describedby"),e(n.element).trigger(n.constructor.Event.HIDDEN),null!==n._popper&&n._popper.destroy(),t&&t()};if(e(this.element).trigger(o),!o.isDefaultPrevented()){if(e(i).removeClass("show"),"ontouchstart"in document.documentElement&&e(document.body).children().off("mouseover",null,e.noop),this._activeTrigger.click=!1,this._activeTrigger.focus=!1,this._activeTrigger.hover=!1,e(this.tip).hasClass("fade")){var r=c.getTransitionDurationFromElement(i);e(i).one(c.TRANSITION_END,s).emulateTransitionEnd(r)}else s();this._hoverState=""}},i.update=function(){null!==this._popper&&this._popper.scheduleUpdate()},i.isWithContent=function(){return Boolean(this.getTitle())},i.addAttachmentClass=function(t){e(this.getTipElement()).addClass("bs-tooltip-"+t)},i.getTipElement=function(){return this.tip=this.tip||e(this.config.template)[0],this.tip},i.setContent=function(){var t=this.getTipElement();this.setElementContent(e(t.querySelectorAll(".tooltip-inner")),this.getTitle()),e(t).removeClass("fade show")},i.setElementContent=function(t,n){"object"!=typeof n||!n.nodeType&&!n.jquery?this.config.html?(this.config.sanitize&&(n=H(n,this.config.whiteList,this.config.sanitizeFn)),t.html(n)):t.text(n):this.config.html?e(n).parent().is(t)||t.empty().append(n):t.text(e(n).text())},i.getTitle=function(){var t=this.element.getAttribute("data-original-title");return t||(t="function"==typeof this.config.title?this.config.title.call(this.element):this.config.title),t},i._getPopperConfig=function(t){var e=this;return a(a({},{placement:t,modifiers:{offset:this._getOffset(),flip:{behavior:this.config.fallbackPlacement},arrow:{element:".arrow"},preventOverflow:{boundariesElement:this.config.boundary}},onCreate:function(t){t.originalPlacement!==t.placement&&e._handlePopperPlacementChange(t)},onUpdate:function(t){return e._handlePopperPlacementChange(t)}}),this.config.popperConfig)},i._getOffset=function(){var t=this,e={};return"function"==typeof this.config.offset?e.fn=function(e){return e.offsets=a(a({},e.offsets),t.config.offset(e.offsets,t.element)||{}),e}:e.offset=this.config.offset,e},i._getContainer=function(){return!1===this.config.container?document.body:c.isElement(this.config.container)?e(this.config.container):e(document).find(this.config.container)},i._getAttachment=function(t){return K[t.toUpperCase()]},i._setListeners=function(){var t=this;this.config.trigger.split(" ").forEach((function(n){if("click"===n)e(t.element).on(t.constructor.Event.CLICK,t.config.selector,(function(e){return t.toggle(e)}));else if("manual"!==n){var i="hover"===n?t.constructor.Event.MOUSEENTER:t.constructor.Event.FOCUSIN,o="hover"===n?t.constructor.Event.MOUSELEAVE:t.constructor.Event.FOCUSOUT;e(t.element).on(i,t.config.selector,(function(e){return t._enter(e)})).on(o,t.config.selector,(function(e){return t._leave(e)}))}})),this._hideModalHandler=function(){t.element&&t.hide()},e(this.element).closest(".modal").on("hide.bs.modal",this._hideModalHandler),this.config.selector?this.config=a(a({},this.config),{},{trigger:"manual",selector:""}):this._fixTitle()},i._fixTitle=function(){var t=typeof this.element.getAttribute("data-original-title");(this.element.getAttribute("title")||"string"!==t)&&(this.element.setAttribute("data-original-title",this.element.getAttribute("title")||""),this.element.setAttribute("title",""))},i._enter=function(t,n){var i=this.constructor.DATA_KEY;(n=n||e(t.currentTarget).data(i))||(n=new this.constructor(t.currentTarget,this._getDelegateConfig()),e(t.currentTarget).data(i,n)),t&&(n._activeTrigger["focusin"===t.type?"focus":"hover"]=!0),e(n.getTipElement()).hasClass("show")||"show"===n._hoverState?n._hoverState="show":(clearTimeout(n._timeout),n._hoverState="show",n.config.delay&&n.config.delay.show?n._timeout=setTimeout((function(){"show"===n._hoverState&&n.show()}),n.config.delay.show):n.show())},i._leave=function(t,n){var i=this.constructor.DATA_KEY;(n=n||e(t.currentTarget).data(i))||(n=new this.constructor(t.currentTarget,this._getDelegateConfig()),e(t.currentTarget).data(i,n)),t&&(n._activeTrigger["focusout"===t.type?"focus":"hover"]=!1),n._isWithActiveTrigger()||(clearTimeout(n._timeout),n._hoverState="out",n.config.delay&&n.config.delay.hide?n._timeout=setTimeout((function(){"out"===n._hoverState&&n.hide()}),n.config.delay.hide):n.hide())},i._isWithActiveTrigger=function(){for(var t in this._activeTrigger)if(this._activeTrigger[t])return!0;return!1},i._getConfig=function(t){var n=e(this.element).data();return Object.keys(n).forEach((function(t){-1!==V.indexOf(t)&&delete n[t]})),"number"==typeof(t=a(a(a({},this.constructor.Default),n),"object"==typeof t&&t?t:{})).delay&&(t.delay={show:t.delay,hide:t.delay}),"number"==typeof t.title&&(t.title=t.title.toString()),"number"==typeof t.content&&(t.content=t.content.toString()),c.typeCheckConfig(U,t,this.constructor.DefaultType),t.sanitize&&(t.template=H(t.template,t.whiteList,t.sanitizeFn)),t},i._getDelegateConfig=function(){var t={};if(this.config)for(var e in this.config)this.constructor.Default[e]!==this.config[e]&&(t[e]=this.config[e]);return t},i._cleanTipClass=function(){var t=e(this.getTipElement()),n=t.attr("class").match(W);null!==n&&n.length&&t.removeClass(n.join(""))},i._handlePopperPlacementChange=function(t){this.tip=t.instance.popper,this._cleanTipClass(),this.addAttachmentClass(this._getAttachment(t.placement))},i._fixTransition=function(){var t=this.getTipElement(),n=this.config.animation;null===t.getAttribute("x-placement")&&(e(t).removeClass("fade"),this.config.animation=!1,this.hide(),this.show(),this.config.animation=n)},t._jQueryInterface=function(n){return this.each((function(){var i=e(this).data("bs.tooltip"),o="object"==typeof n&&n;if((i||!/dispose|hide/.test(n))&&(i||(i=new t(this,o),e(this).data("bs.tooltip",i)),"string"==typeof n)){if("undefined"==typeof i[n])throw new TypeError('No method named "'+n+'"');i[n]()}}))},o(t,null,[{key:"VERSION",get:function(){return"4.5.0"}},{key:"Default",get:function(){return X}},{key:"NAME",get:function(){return U}},{key:"DATA_KEY",get:function(){return"bs.tooltip"}},{key:"Event",get:function(){return Y}},{key:"EVENT_KEY",get:function(){return".bs.tooltip"}},{key:"DefaultType",get:function(){return z}}]),t}();e.fn[U]=$._jQueryInterface,e.fn[U].Constructor=$,e.fn[U].noConflict=function(){return e.fn[U]=M,$._jQueryInterface};var J="popover",G=e.fn[J],Z=new RegExp("(^|\\s)bs-popover\\S+","g"),tt=a(a({},$.Default),{},{placement:"right",trigger:"click",content:"",template:'<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>'}),et=a(a({},$.DefaultType),{},{content:"(string|element|function)"}),nt={HIDE:"hide.bs.popover",HIDDEN:"hidden.bs.popover",SHOW:"show.bs.popover",SHOWN:"shown.bs.popover",INSERTED:"inserted.bs.popover",CLICK:"click.bs.popover",FOCUSIN:"focusin.bs.popover",FOCUSOUT:"focusout.bs.popover",MOUSEENTER:"mouseenter.bs.popover",MOUSELEAVE:"mouseleave.bs.popover"},it=function(t){var n,i;function s(){return t.apply(this,arguments)||this}i=t,(n=s).prototype=Object.create(i.prototype),n.prototype.constructor=n,n.__proto__=i;var r=s.prototype;return r.isWithContent=function(){return this.getTitle()||this._getContent()},r.addAttachmentClass=function(t){e(this.getTipElement()).addClass("bs-popover-"+t)},r.getTipElement=function(){return this.tip=this.tip||e(this.config.template)[0],this.tip},r.setContent=function(){var t=e(this.getTipElement());this.setElementContent(t.find(".popover-header"),this.getTitle());var n=this._getContent();"function"==typeof n&&(n=n.call(this.element)),this.setElementContent(t.find(".popover-body"),n),t.removeClass("fade show")},r._getContent=function(){return this.element.getAttribute("data-content")||this.config.content},r._cleanTipClass=function(){var t=e(this.getTipElement()),n=t.attr("class").match(Z);null!==n&&n.length>0&&t.removeClass(n.join(""))},s._jQueryInterface=function(t){return this.each((function(){var n=e(this).data("bs.popover"),i="object"==typeof t?t:null;if((n||!/dispose|hide/.test(t))&&(n||(n=new s(this,i),e(this).data("bs.popover",n)),"string"==typeof t)){if("undefined"==typeof n[t])throw new TypeError('No method named "'+t+'"');n[t]()}}))},o(s,null,[{key:"VERSION",get:function(){return"4.5.0"}},{key:"Default",get:function(){return tt}},{key:"NAME",get:function(){return J}},{key:"DATA_KEY",get:function(){return"bs.popover"}},{key:"Event",get:function(){return nt}},{key:"EVENT_KEY",get:function(){return".bs.popover"}},{key:"DefaultType",get:function(){return et}}]),s}($);e.fn[J]=it._jQueryInterface,e.fn[J].Constructor=it,e.fn[J].noConflict=function(){return e.fn[J]=G,it._jQueryInterface};var ot="scrollspy",st=e.fn[ot],rt={offset:10,method:"auto",target:""},at={offset:"number",method:"string",target:"(string|element)"},lt=function(){function t(t,n){var i=this;this._element=t,this._scrollElement="BODY"===t.tagName?window:t,this._config=this._getConfig(n),this._selector=this._config.target+" .nav-link,"+this._config.target+" .list-group-item,"+this._config.target+" .dropdown-item",this._offsets=[],this._targets=[],this._activeTarget=null,this._scrollHeight=0,e(this._scrollElement).on("scroll.bs.scrollspy",(function(t){return i._process(t)})),this.refresh(),this._process()}var n=t.prototype;return n.refresh=function(){var t=this,n=this._scrollElement===this._scrollElement.window?"offset":"position",i="auto"===this._config.method?n:this._config.method,o="position"===i?this._getScrollTop():0;this._offsets=[],this._targets=[],this._scrollHeight=this._getScrollHeight(),[].slice.call(document.querySelectorAll(this._selector)).map((function(t){var n,s=c.getSelectorFromElement(t);if(s&&(n=document.querySelector(s)),n){var r=n.getBoundingClientRect();if(r.width||r.height)return[e(n)[i]().top+o,s]}return null})).filter((function(t){return t})).sort((function(t,e){return t[0]-e[0]})).forEach((function(e){t._offsets.push(e[0]),t._targets.push(e[1])}))},n.dispose=function(){e.removeData(this._element,"bs.scrollspy"),e(this._scrollElement).off(".bs.scrollspy"),this._element=null,this._scrollElement=null,this._config=null,this._selector=null,this._offsets=null,this._targets=null,this._activeTarget=null,this._scrollHeight=null},n._getConfig=function(t){if("string"!=typeof(t=a(a({},rt),"object"==typeof t&&t?t:{})).target&&c.isElement(t.target)){var n=e(t.target).attr("id");n||(n=c.getUID(ot),e(t.target).attr("id",n)),t.target="#"+n}return c.typeCheckConfig(ot,t,at),t},n._getScrollTop=function(){return this._scrollElement===window?this._scrollElement.pageYOffset:this._scrollElement.scrollTop},n._getScrollHeight=function(){return this._scrollElement.scrollHeight||Math.max(document.body.scrollHeight,document.documentElement.scrollHeight)},n._getOffsetHeight=function(){return this._scrollElement===window?window.innerHeight:this._scrollElement.getBoundingClientRect().height},n._process=function(){var t=this._getScrollTop()+this._config.offset,e=this._getScrollHeight(),n=this._config.offset+e-this._getOffsetHeight();if(this._scrollHeight!==e&&this.refresh(),t>=n){var i=this._targets[this._targets.length-1];this._activeTarget!==i&&this._activate(i)}else{if(this._activeTarget&&t<this._offsets[0]&&this._offsets[0]>0)return this._activeTarget=null,void this._clear();for(var o=this._offsets.length;o--;){this._activeTarget!==this._targets[o]&&t>=this._offsets[o]&&("undefined"==typeof this._offsets[o+1]||t<this._offsets[o+1])&&this._activate(this._targets[o])}}},n._activate=function(t){this._activeTarget=t,this._clear();var n=this._selector.split(",").map((function(e){return e+'[data-target="'+t+'"],'+e+'[href="'+t+'"]'})),i=e([].slice.call(document.querySelectorAll(n.join(","))));i.hasClass("dropdown-item")?(i.closest(".dropdown").find(".dropdown-toggle").addClass("active"),i.addClass("active")):(i.addClass("active"),i.parents(".nav, .list-group").prev(".nav-link, .list-group-item").addClass("active"),i.parents(".nav, .list-group").prev(".nav-item").children(".nav-link").addClass("active")),e(this._scrollElement).trigger("activate.bs.scrollspy",{relatedTarget:t})},n._clear=function(){[].slice.call(document.querySelectorAll(this._selector)).filter((function(t){return t.classList.contains("active")})).forEach((function(t){return t.classList.remove("active")}))},t._jQueryInterface=function(n){return this.each((function(){var i=e(this).data("bs.scrollspy");if(i||(i=new t(this,"object"==typeof n&&n),e(this).data("bs.scrollspy",i)),"string"==typeof n){if("undefined"==typeof i[n])throw new TypeError('No method named "'+n+'"');i[n]()}}))},o(t,null,[{key:"VERSION",get:function(){return"4.5.0"}},{key:"Default",get:function(){return rt}}]),t}();e(window).on("load.bs.scrollspy.data-api",(function(){for(var t=[].slice.call(document.querySelectorAll('[data-spy="scroll"]')),n=t.length;n--;){var i=e(t[n]);lt._jQueryInterface.call(i,i.data())}})),e.fn[ot]=lt._jQueryInterface,e.fn[ot].Constructor=lt,e.fn[ot].noConflict=function(){return e.fn[ot]=st,lt._jQueryInterface};var ct=e.fn.tab,ht=function(){function t(t){this._element=t}var n=t.prototype;return n.show=function(){var t=this;if(!(this._element.parentNode&&this._element.parentNode.nodeType===Node.ELEMENT_NODE&&e(this._element).hasClass("active")||e(this._element).hasClass("disabled"))){var n,i,o=e(this._element).closest(".nav, .list-group")[0],s=c.getSelectorFromElement(this._element);if(o){var r="UL"===o.nodeName||"OL"===o.nodeName?"> li > .active":".active";i=(i=e.makeArray(e(o).find(r)))[i.length-1]}var a=e.Event("hide.bs.tab",{relatedTarget:this._element}),l=e.Event("show.bs.tab",{relatedTarget:i});if(i&&e(i).trigger(a),e(this._element).trigger(l),!l.isDefaultPrevented()&&!a.isDefaultPrevented()){s&&(n=document.querySelector(s)),this._activate(this._element,o);var h=function(){var n=e.Event("hidden.bs.tab",{relatedTarget:t._element}),o=e.Event("shown.bs.tab",{relatedTarget:i});e(i).trigger(n),e(t._element).trigger(o)};n?this._activate(n,n.parentNode,h):h()}}},n.dispose=function(){e.removeData(this._element,"bs.tab"),this._element=null},n._activate=function(t,n,i){var o=this,s=(!n||"UL"!==n.nodeName&&"OL"!==n.nodeName?e(n).children(".active"):e(n).find("> li > .active"))[0],r=i&&s&&e(s).hasClass("fade"),a=function(){return o._transitionComplete(t,s,i)};if(s&&r){var l=c.getTransitionDurationFromElement(s);e(s).removeClass("show").one(c.TRANSITION_END,a).emulateTransitionEnd(l)}else a()},n._transitionComplete=function(t,n,i){if(n){e(n).removeClass("active");var o=e(n.parentNode).find("> .dropdown-menu .active")[0];o&&e(o).removeClass("active"),"tab"===n.getAttribute("role")&&n.setAttribute("aria-selected",!1)}if(e(t).addClass("active"),"tab"===t.getAttribute("role")&&t.setAttribute("aria-selected",!0),c.reflow(t),t.classList.contains("fade")&&t.classList.add("show"),t.parentNode&&e(t.parentNode).hasClass("dropdown-menu")){var s=e(t).closest(".dropdown")[0];if(s){var r=[].slice.call(s.querySelectorAll(".dropdown-toggle"));e(r).addClass("active")}t.setAttribute("aria-expanded",!0)}i&&i()},t._jQueryInterface=function(n){return this.each((function(){var i=e(this),o=i.data("bs.tab");if(o||(o=new t(this),i.data("bs.tab",o)),"string"==typeof n){if("undefined"==typeof o[n])throw new TypeError('No method named "'+n+'"');o[n]()}}))},o(t,null,[{key:"VERSION",get:function(){return"4.5.0"}}]),t}();e(document).on("click.bs.tab.data-api",'[data-toggle="tab"], [data-toggle="pill"], [data-toggle="list"]',(function(t){t.preventDefault(),ht._jQueryInterface.call(e(this),"show")})),e.fn.tab=ht._jQueryInterface,e.fn.tab.Constructor=ht,e.fn.tab.noConflict=function(){return e.fn.tab=ct,ht._jQueryInterface};var ut=e.fn.toast,dt={animation:"boolean",autohide:"boolean",delay:"number"},ft={animation:!0,autohide:!0,delay:500},gt=function(){function t(t,e){this._element=t,this._config=this._getConfig(e),this._timeout=null,this._setListeners()}var n=t.prototype;return n.show=function(){var t=this,n=e.Event("show.bs.toast");if(e(this._element).trigger(n),!n.isDefaultPrevented()){this._config.animation&&this._element.classList.add("fade");var i=function(){t._element.classList.remove("showing"),t._element.classList.add("show"),e(t._element).trigger("shown.bs.toast"),t._config.autohide&&(t._timeout=setTimeout((function(){t.hide()}),t._config.delay))};if(this._element.classList.remove("hide"),c.reflow(this._element),this._element.classList.add("showing"),this._config.animation){var o=c.getTransitionDurationFromElement(this._element);e(this._element).one(c.TRANSITION_END,i).emulateTransitionEnd(o)}else i()}},n.hide=function(){if(this._element.classList.contains("show")){var t=e.Event("hide.bs.toast");e(this._element).trigger(t),t.isDefaultPrevented()||this._close()}},n.dispose=function(){clearTimeout(this._timeout),this._timeout=null,this._element.classList.contains("show")&&this._element.classList.remove("show"),e(this._element).off("click.dismiss.bs.toast"),e.removeData(this._element,"bs.toast"),this._element=null,this._config=null},n._getConfig=function(t){return t=a(a(a({},ft),e(this._element).data()),"object"==typeof t&&t?t:{}),c.typeCheckConfig("toast",t,this.constructor.DefaultType),t},n._setListeners=function(){var t=this;e(this._element).on("click.dismiss.bs.toast",'[data-dismiss="toast"]',(function(){return t.hide()}))},n._close=function(){var t=this,n=function(){t._element.classList.add("hide"),e(t._element).trigger("hidden.bs.toast")};if(this._element.classList.remove("show"),this._config.animation){var i=c.getTransitionDurationFromElement(this._element);e(this._element).one(c.TRANSITION_END,n).emulateTransitionEnd(i)}else n()},t._jQueryInterface=function(n){return this.each((function(){var i=e(this),o=i.data("bs.toast");if(o||(o=new t(this,"object"==typeof n&&n),i.data("bs.toast",o)),"string"==typeof n){if("undefined"==typeof o[n])throw new TypeError('No method named "'+n+'"');o[n](this)}}))},o(t,null,[{key:"VERSION",get:function(){return"4.5.0"}},{key:"DefaultType",get:function(){return dt}},{key:"Default",get:function(){return ft}}]),t}();e.fn.toast=gt._jQueryInterface,e.fn.toast.Constructor=gt,e.fn.toast.noConflict=function(){return e.fn.toast=ut,gt._jQueryInterface},t.Alert=d,t.Button=g,t.Carousel=E,t.Collapse=D,t.Dropdown=j,t.Modal=R,t.Popover=it,t.Scrollspy=lt,t.Tab=ht,t.Toast=gt,t.Tooltip=$,t.Util=c,Object.defineProperty(t,"__esModule",{value:!0})}));

$(document).ready(function(){
  $('.economics_popover').popover({ 
    html : true,
    trigger : 'hover',
    content: function() {
	  data_id = $(this).attr('data-id');
      return $("#" + data_id).html();
    }
  });
});


/*!
 * Datepicker for Bootstrap v1.6.4 (https://github.com/eternicode/bootstrap-datepicker)
 *
 * Copyright 2012 Stefan Petre
 * Improvements by Andrew Rowls
 * Licensed under the Apache License v2.0 (http://www.apache.org/licenses/LICENSE-2.0)
 */(function(factory){
    if (typeof define === "function" && define.amd) {
        define(["jquery"], factory);
    } else if (typeof exports === 'object') {
        factory(require('jquery'));
    } else {
        factory(jQuery);
    }
}(function($, undefined){

	function UTCDate(){
		return new Date(Date.UTC.apply(Date, arguments));
	}
	function UTCToday(){
		var today = new Date();
		return UTCDate(today.getFullYear(), today.getMonth(), today.getDate());
	}
	function isUTCEquals(date1, date2) {
		return (
			date1.getUTCFullYear() === date2.getUTCFullYear() &&
			date1.getUTCMonth() === date2.getUTCMonth() &&
			date1.getUTCDate() === date2.getUTCDate()
		);
	}
	function alias(method){
		return function(){
			return this[method].apply(this, arguments);
		};
	}
	function isValidDate(d) {
		return d && !isNaN(d.getTime());
	}

	var DateArray = (function(){
		var extras = {
			get: function(i){
				return this.slice(i)[0];
			},
			contains: function(d){
				// Array.indexOf is not cross-browser;
				// $.inArray doesn't work with Dates
				var val = d && d.valueOf();
				for (var i=0, l=this.length; i < l; i++)
					if (this[i].valueOf() === val)
						return i;
				return -1;
			},
			remove: function(i){
				this.splice(i,1);
			},
			replace: function(new_array){
				if (!new_array)
					return;
				if (!$.isArray(new_array))
					new_array = [new_array];
				this.clear();
				this.push.apply(this, new_array);
			},
			clear: function(){
				this.length = 0;
			},
			copy: function(){
				var a = new DateArray();
				a.replace(this);
				return a;
			}
		};

		return function(){
			var a = [];
			a.push.apply(a, arguments);
			$.extend(a, extras);
			return a;
		};
	})();


	// Picker object

	var Datepicker = function(element, options){
		$(element).data('datepicker', this);
		this._process_options(options);

		this.dates = new DateArray();
		this.viewDate = this.o.defaultViewDate;
		this.focusDate = null;

		this.element = $(element);
		this.isInput = this.element.is('input');
		this.inputField = this.isInput ? this.element : this.element.find('input');
		this.component = this.element.hasClass('date') ? this.element.find('.add-on, .input-group-addon, .btn') : false;
		this.hasInput = this.component && this.inputField.length;
		if (this.component && this.component.length === 0)
			this.component = false;
		this.isInline = !this.component && this.element.is('div');

		this.picker = $(DPGlobal.template);

		// Checking templates and inserting
		if (this._check_template(this.o.templates.leftArrow)) {
			this.picker.find('.prev').html(this.o.templates.leftArrow);
		}
		if (this._check_template(this.o.templates.rightArrow)) {
			this.picker.find('.next').html(this.o.templates.rightArrow);
		}

		this._buildEvents();
		this._attachEvents();

		if (this.isInline){
			this.picker.addClass('datepicker-inline').appendTo(this.element);
		}
		else {
			this.picker.addClass('datepicker-dropdown dropdown-menu');
		}

		if (this.o.rtl){
			this.picker.addClass('datepicker-rtl');
		}

		this.viewMode = this.o.startView;

		if (this.o.calendarWeeks)
			this.picker.find('thead .datepicker-title, tfoot .today, tfoot .clear')
						.attr('colspan', function(i, val){
							return parseInt(val) + 1;
						});

		this._allow_update = false;

		this.setStartDate(this._o.startDate);
		this.setEndDate(this._o.endDate);
		this.setDaysOfWeekDisabled(this.o.daysOfWeekDisabled);
		this.setDaysOfWeekHighlighted(this.o.daysOfWeekHighlighted);
		this.setDatesDisabled(this.o.datesDisabled);

		this.fillDow();
		this.fillMonths();

		this._allow_update = true;

		this.update();
		this.showMode();

		if (this.isInline){
			this.show();
		}
	};

	Datepicker.prototype = {
		constructor: Datepicker,

		_resolveViewName: function(view, default_value){
			if (view === 0 || view === 'days' || view === 'month') {
				return 0;
			}
			if (view === 1 || view === 'months' || view === 'year') {
				return 1;
			}
			if (view === 2 || view === 'years' || view === 'decade') {
				return 2;
			}
			if (view === 3 || view === 'decades' || view === 'century') {
				return 3;
			}
			if (view === 4 || view === 'centuries' || view === 'millennium') {
				return 4;
			}
			return default_value === undefined ? false : default_value;
		},

		_check_template: function(tmp){
			try {
				// If empty
				if (tmp === undefined || tmp === "") {
					return false;
				}
				// If no html, everything ok
				if ((tmp.match(/[<>]/g) || []).length <= 0) {
					return true;
				}
				// Checking if html is fine
				var jDom = $(tmp);
				return jDom.length > 0;
			}
			catch (ex) {
				return false;
			}
		},

		_process_options: function(opts){
			// Store raw options for reference
			this._o = $.extend({}, this._o, opts);
			// Processed options
			var o = this.o = $.extend({}, this._o);

			// Check if "de-DE" style date is available, if not language should
			// fallback to 2 letter code eg "de"
			var lang = o.language;
			if (!dates[lang]){
				lang = lang.split('-')[0];
				if (!dates[lang])
					lang = defaults.language;
			}
			o.language = lang;

			// Retrieve view index from any aliases
			o.startView = this._resolveViewName(o.startView, 0);
			o.minViewMode = this._resolveViewName(o.minViewMode, 0);
			o.maxViewMode = this._resolveViewName(o.maxViewMode, 4);

			// Check that the start view is between min and max
			o.startView = Math.min(o.startView, o.maxViewMode);
			o.startView = Math.max(o.startView, o.minViewMode);

			// true, false, or Number > 0
			if (o.multidate !== true){
				o.multidate = Number(o.multidate) || false;
				if (o.multidate !== false)
					o.multidate = Math.max(0, o.multidate);
			}
			o.multidateSeparator = String(o.multidateSeparator);

			o.weekStart %= 7;
			o.weekEnd = (o.weekStart + 6) % 7;

			var format = DPGlobal.parseFormat(o.format);
			if (o.startDate !== -Infinity){
				if (!!o.startDate){
					if (o.startDate instanceof Date)
						o.startDate = this._local_to_utc(this._zero_time(o.startDate));
					else
						o.startDate = DPGlobal.parseDate(o.startDate, format, o.language, o.assumeNearbyYear);
				}
				else {
					o.startDate = -Infinity;
				}
			}
			if (o.endDate !== Infinity){
				if (!!o.endDate){
					if (o.endDate instanceof Date)
						o.endDate = this._local_to_utc(this._zero_time(o.endDate));
					else
						o.endDate = DPGlobal.parseDate(o.endDate, format, o.language, o.assumeNearbyYear);
				}
				else {
					o.endDate = Infinity;
				}
			}

			o.daysOfWeekDisabled = o.daysOfWeekDisabled||[];
			if (!$.isArray(o.daysOfWeekDisabled))
				o.daysOfWeekDisabled = o.daysOfWeekDisabled.split(/[,\s]*/);
			o.daysOfWeekDisabled = $.map(o.daysOfWeekDisabled, function(d){
				return parseInt(d, 10);
			});

			o.daysOfWeekHighlighted = o.daysOfWeekHighlighted||[];
			if (!$.isArray(o.daysOfWeekHighlighted))
				o.daysOfWeekHighlighted = o.daysOfWeekHighlighted.split(/[,\s]*/);
			o.daysOfWeekHighlighted = $.map(o.daysOfWeekHighlighted, function(d){
				return parseInt(d, 10);
			});

			o.datesDisabled = o.datesDisabled||[];
			if (!$.isArray(o.datesDisabled)) {
				o.datesDisabled = [
					o.datesDisabled
				];
			}
			o.datesDisabled = $.map(o.datesDisabled,function(d){
				return DPGlobal.parseDate(d, format, o.language, o.assumeNearbyYear);
			});

			var plc = String(o.orientation).toLowerCase().split(/\s+/g),
				_plc = o.orientation.toLowerCase();
			plc = $.grep(plc, function(word){
				return /^auto|left|right|top|bottom$/.test(word);
			});
			o.orientation = {x: 'auto', y: 'auto'};
			if (!_plc || _plc === 'auto')
				; // no action
			else if (plc.length === 1){
				switch (plc[0]){
					case 'top':
					case 'bottom':
						o.orientation.y = plc[0];
						break;
					case 'left':
					case 'right':
						o.orientation.x = plc[0];
						break;
				}
			}
			else {
				_plc = $.grep(plc, function(word){
					return /^left|right$/.test(word);
				});
				o.orientation.x = _plc[0] || 'auto';

				_plc = $.grep(plc, function(word){
					return /^top|bottom$/.test(word);
				});
				o.orientation.y = _plc[0] || 'auto';
			}
			if (o.defaultViewDate) {
				var year = o.defaultViewDate.year || new Date().getFullYear();
				var month = o.defaultViewDate.month || 0;
				var day = o.defaultViewDate.day || 1;
				o.defaultViewDate = UTCDate(year, month, day);
			} else {
				o.defaultViewDate = UTCToday();
			}
		},
		_events: [],
		_secondaryEvents: [],
		_applyEvents: function(evs){
			for (var i=0, el, ch, ev; i < evs.length; i++){
				el = evs[i][0];
				if (evs[i].length === 2){
					ch = undefined;
					ev = evs[i][1];
				}
				else if (evs[i].length === 3){
					ch = evs[i][1];
					ev = evs[i][2];
				}
				el.on(ev, ch);
			}
		},
		_unapplyEvents: function(evs){
			for (var i=0, el, ev, ch; i < evs.length; i++){
				el = evs[i][0];
				if (evs[i].length === 2){
					ch = undefined;
					ev = evs[i][1];
				}
				else if (evs[i].length === 3){
					ch = evs[i][1];
					ev = evs[i][2];
				}
				el.off(ev, ch);
			}
		},
		_buildEvents: function(){
            var events = {
                keyup: $.proxy(function(e){
                    if ($.inArray(e.keyCode, [27, 37, 39, 38, 40, 32, 13, 9]) === -1)
                        this.update();
                }, this),
                keydown: $.proxy(this.keydown, this),
                paste: $.proxy(this.paste, this)
            };

            if (this.o.showOnFocus === true) {
                events.focus = $.proxy(this.show, this);
            }

            if (this.isInput) { // single input
                this._events = [
                    [this.element, events]
                ];
            }
            else if (this.component && this.hasInput) { // component: input + button
                this._events = [
                    // For components that are not readonly, allow keyboard nav
                    [this.inputField, events],
                    [this.component, {
                        click: $.proxy(this.show, this)
                    }]
                ];
            }
			else {
				this._events = [
					[this.element, {
						click: $.proxy(this.show, this),
						keydown: $.proxy(this.keydown, this)
					}]
				];
			}
			this._events.push(
				// Component: listen for blur on element descendants
				[this.element, '*', {
					blur: $.proxy(function(e){
						this._focused_from = e.target;
					}, this)
				}],
				// Input: listen for blur on element
				[this.element, {
					blur: $.proxy(function(e){
						this._focused_from = e.target;
					}, this)
				}]
			);

			if (this.o.immediateUpdates) {
				// Trigger input updates immediately on changed year/month
				this._events.push([this.element, {
					'changeYear changeMonth': $.proxy(function(e){
						this.update(e.date);
					}, this)
				}]);
			}

			this._secondaryEvents = [
				[this.picker, {
					click: $.proxy(this.click, this)
				}],
				[$(window), {
					resize: $.proxy(this.place, this)
				}],
				[$(document), {
					mousedown: $.proxy(function(e){
						// Clicked outside the datepicker, hide it
						if (!(
							this.element.is(e.target) ||
							this.element.find(e.target).length ||
							this.picker.is(e.target) ||
							this.picker.find(e.target).length ||
							this.isInline
						)){
							this.hide();
						}
					}, this)
				}]
			];
		},
		_attachEvents: function(){
			this._detachEvents();
			this._applyEvents(this._events);
		},
		_detachEvents: function(){
			this._unapplyEvents(this._events);
		},
		_attachSecondaryEvents: function(){
			this._detachSecondaryEvents();
			this._applyEvents(this._secondaryEvents);
		},
		_detachSecondaryEvents: function(){
			this._unapplyEvents(this._secondaryEvents);
		},
		_trigger: function(event, altdate){
			var date = altdate || this.dates.get(-1),
				local_date = this._utc_to_local(date);

			this.element.trigger({
				type: event,
				date: local_date,
				dates: $.map(this.dates, this._utc_to_local),
				format: $.proxy(function(ix, format){
					if (arguments.length === 0){
						ix = this.dates.length - 1;
						format = this.o.format;
					}
					else if (typeof ix === 'string'){
						format = ix;
						ix = this.dates.length - 1;
					}
					format = format || this.o.format;
					var date = this.dates.get(ix);
					return DPGlobal.formatDate(date, format, this.o.language);
				}, this)
			});
		},

		show: function(){
			if (this.inputField.prop('disabled') || (this.inputField.prop('readonly') && this.o.enableOnReadonly === false))
				return;
			if (!this.isInline)
				this.picker.appendTo(this.o.container);
			this.place();
			this.picker.show();
			this._attachSecondaryEvents();
			this._trigger('show');
			if ((window.navigator.msMaxTouchPoints || 'ontouchstart' in document) && this.o.disableTouchKeyboard) {
				$(this.element).blur();
			}
			return this;
		},

		hide: function(){
			if (this.isInline || !this.picker.is(':visible'))
				return this;
			this.focusDate = null;
			this.picker.hide().detach();
			this._detachSecondaryEvents();
			this.viewMode = this.o.startView;
			this.showMode();

			if (this.o.forceParse && this.inputField.val())
				this.setValue();
			this._trigger('hide');
			return this;
		},

		destroy: function(){
			this.hide();
			this._detachEvents();
			this._detachSecondaryEvents();
			this.picker.remove();
			delete this.element.data().datepicker;
			if (!this.isInput){
				delete this.element.data().date;
			}
			return this;
		},

		paste: function(evt){
			var dateString;
			if (evt.originalEvent.clipboardData && evt.originalEvent.clipboardData.types
				&& $.inArray('text/plain', evt.originalEvent.clipboardData.types) !== -1) {
				dateString = evt.originalEvent.clipboardData.getData('text/plain');
			}
			else if (window.clipboardData) {
				dateString = window.clipboardData.getData('Text');
			}
			else {
				return;
			}
			this.setDate(dateString);
			this.update();
			evt.preventDefault();
		},

		_utc_to_local: function(utc){
			return utc && new Date(utc.getTime() + (utc.getTimezoneOffset()*60000));
		},
		_local_to_utc: function(local){
			return local && new Date(local.getTime() - (local.getTimezoneOffset()*60000));
		},
		_zero_time: function(local){
			return local && new Date(local.getFullYear(), local.getMonth(), local.getDate());
		},
		_zero_utc_time: function(utc){
			return utc && new Date(Date.UTC(utc.getUTCFullYear(), utc.getUTCMonth(), utc.getUTCDate()));
		},

		getDates: function(){
			return $.map(this.dates, this._utc_to_local);
		},

		getUTCDates: function(){
			return $.map(this.dates, function(d){
				return new Date(d);
			});
		},

		getDate: function(){
			return this._utc_to_local(this.getUTCDate());
		},

		getUTCDate: function(){
			var selected_date = this.dates.get(-1);
			if (typeof selected_date !== 'undefined') {
				return new Date(selected_date);
			} else {
				return null;
			}
		},

		clearDates: function(){
			if (this.inputField) {
				this.inputField.val('');
			}

			this.update();
			this._trigger('changeDate');

			if (this.o.autoclose) {
				this.hide();
			}
		},
		setDates: function(){
			var args = $.isArray(arguments[0]) ? arguments[0] : arguments;
			this.update.apply(this, args);
			this._trigger('changeDate');
			this.setValue();
			return this;
		},

		setUTCDates: function(){
			var args = $.isArray(arguments[0]) ? arguments[0] : arguments;
			this.update.apply(this, $.map(args, this._utc_to_local));
			this._trigger('changeDate');
			this.setValue();
			return this;
		},

		setDate: alias('setDates'),
		setUTCDate: alias('setUTCDates'),
		remove: alias('destroy'),

		setValue: function(){
			var formatted = this.getFormattedDate();
			this.inputField.val(formatted);
			return this;
		},

		getFormattedDate: function(format){
			if (format === undefined)
				format = this.o.format;

			var lang = this.o.language;
			return $.map(this.dates, function(d){
				return DPGlobal.formatDate(d, format, lang);
			}).join(this.o.multidateSeparator);
		},

		getStartDate: function(){
			return this.o.startDate;
		},

		setStartDate: function(startDate){
			this._process_options({startDate: startDate});
			this.update();
			this.updateNavArrows();
			return this;
		},

		getEndDate: function(){
			return this.o.endDate;
		},

		setEndDate: function(endDate){
			this._process_options({endDate: endDate});
			this.update();
			this.updateNavArrows();
			return this;
		},

		setDaysOfWeekDisabled: function(daysOfWeekDisabled){
			this._process_options({daysOfWeekDisabled: daysOfWeekDisabled});
			this.update();
			this.updateNavArrows();
			return this;
		},

		setDaysOfWeekHighlighted: function(daysOfWeekHighlighted){
			this._process_options({daysOfWeekHighlighted: daysOfWeekHighlighted});
			this.update();
			return this;
		},

		setDatesDisabled: function(datesDisabled){
			this._process_options({datesDisabled: datesDisabled});
			this.update();
			this.updateNavArrows();
		},

		place: function(){
			if (this.isInline)
				return this;
			var calendarWidth = this.picker.outerWidth(),
				calendarHeight = this.picker.outerHeight(),
				visualPadding = 10,
				container = $(this.o.container),
				windowWidth = container.width(),
				scrollTop = this.o.container === 'body' ? $(document).scrollTop() : container.scrollTop(),
				appendOffset = container.offset();

			var parentsZindex = [];
			this.element.parents().each(function(){
				var itemZIndex = $(this).css('z-index');
				if (itemZIndex !== 'auto' && itemZIndex !== 0) parentsZindex.push(parseInt(itemZIndex));
			});
			var zIndex = Math.max.apply(Math, parentsZindex) + this.o.zIndexOffset;
			var offset = this.component ? this.component.parent().offset() : this.element.offset();
			var height = this.component ? this.component.outerHeight(true) : this.element.outerHeight(false);
			var width = this.component ? this.component.outerWidth(true) : this.element.outerWidth(false);
			var left = offset.left - appendOffset.left,
				top = offset.top - appendOffset.top;

			if (this.o.container !== 'body') {
				top += scrollTop;
			}

			this.picker.removeClass(
				'datepicker-orient-top datepicker-orient-bottom '+
				'datepicker-orient-right datepicker-orient-left'
			);

			if (this.o.orientation.x !== 'auto'){
				this.picker.addClass('datepicker-orient-' + this.o.orientation.x);
				if (this.o.orientation.x === 'right')
					left -= calendarWidth - width;
			}
			// auto x orientation is best-placement: if it crosses a window
			// edge, fudge it sideways
			else {
				if (offset.left < 0) {
					// component is outside the window on the left side. Move it into visible range
					this.picker.addClass('datepicker-orient-left');
					left -= offset.left - visualPadding;
				} else if (left + calendarWidth > windowWidth) {
					// the calendar passes the widow right edge. Align it to component right side
					this.picker.addClass('datepicker-orient-right');
					left += width - calendarWidth;
				} else {
					// Default to left
					this.picker.addClass('datepicker-orient-left');
				}
			}

			// auto y orientation is best-situation: top or bottom, no fudging,
			// decision based on which shows more of the calendar
			var yorient = this.o.orientation.y,
				top_overflow;
			if (yorient === 'auto'){
				top_overflow = -scrollTop + top - calendarHeight;
				yorient = top_overflow < 0 ? 'bottom' : 'top';
			}

			this.picker.addClass('datepicker-orient-' + yorient);
			if (yorient === 'top')
				top -= calendarHeight + parseInt(this.picker.css('padding-top'));
			else
				top += height;

			if (this.o.rtl) {
				var right = windowWidth - (left + width);
				this.picker.css({
					top: top,
					right: right,
					zIndex: zIndex
				});
			} else {
				this.picker.css({
					top: top,
					left: left,
					zIndex: zIndex
				});
			}
			return this;
		},

		_allow_update: true,
		update: function(){
			if (!this._allow_update)
				return this;

			var oldDates = this.dates.copy(),
				dates = [],
				fromArgs = false;
			if (arguments.length){
				$.each(arguments, $.proxy(function(i, date){
					if (date instanceof Date)
						date = this._local_to_utc(date);
					dates.push(date);
				}, this));
				fromArgs = true;
			}
			else {
				dates = this.isInput
						? this.element.val()
						: this.element.data('date') || this.inputField.val();
				if (dates && this.o.multidate)
					dates = dates.split(this.o.multidateSeparator);
				else
					dates = [dates];
				delete this.element.data().date;
			}

			dates = $.map(dates, $.proxy(function(date){
				return DPGlobal.parseDate(date, this.o.format, this.o.language, this.o.assumeNearbyYear);
			}, this));
			dates = $.grep(dates, $.proxy(function(date){
				return (
					!this.dateWithinRange(date) ||
					!date
				);
			}, this), true);
			this.dates.replace(dates);

			if (this.dates.length)
				this.viewDate = new Date(this.dates.get(-1));
			else if (this.viewDate < this.o.startDate)
				this.viewDate = new Date(this.o.startDate);
			else if (this.viewDate > this.o.endDate)
				this.viewDate = new Date(this.o.endDate);
			else
				this.viewDate = this.o.defaultViewDate;

			if (fromArgs){
				// setting date by clicking
				this.setValue();
			}
			else if (dates.length){
				// setting date by typing
				if (String(oldDates) !== String(this.dates))
					this._trigger('changeDate');
			}
			if (!this.dates.length && oldDates.length)
				this._trigger('clearDate');

			this.fill();
			this.element.change();
			return this;
		},

		fillDow: function(){
			var dowCnt = this.o.weekStart,
				html = '<tr>';
			if (this.o.calendarWeeks){
				this.picker.find('.datepicker-days .datepicker-switch')
					.attr('colspan', function(i, val){
						return parseInt(val) + 1;
					});
				html += '<th class="cw">&#160;</th>';
			}
			while (dowCnt < this.o.weekStart + 7){
				html += '<th class="dow';
        if ($.inArray(dowCnt, this.o.daysOfWeekDisabled) > -1)
          html += ' disabled';
        html += '">'+dates[this.o.language].daysMin[(dowCnt++)%7]+'</th>';
			}
			html += '</tr>';
			this.picker.find('.datepicker-days thead').append(html);
		},

		fillMonths: function(){
      var localDate = this._utc_to_local(this.viewDate);
			var html = '',
			i = 0;
			while (i < 12){
        var focused = localDate && localDate.getMonth() === i ? ' focused' : '';
				html += '<span class="month' + focused + '">' + dates[this.o.language].monthsShort[i++]+'</span>';
			}
			this.picker.find('.datepicker-months td').html(html);
		},

		setRange: function(range){
			if (!range || !range.length)
				delete this.range;
			else
				this.range = $.map(range, function(d){
					return d.valueOf();
				});
			this.fill();
		},

		getClassNames: function(date){
			var cls = [],
				year = this.viewDate.getUTCFullYear(),
				month = this.viewDate.getUTCMonth(),
				today = new Date();
			if (date.getUTCFullYear() < year || (date.getUTCFullYear() === year && date.getUTCMonth() < month)){
				cls.push('old');
			}
			else if (date.getUTCFullYear() > year || (date.getUTCFullYear() === year && date.getUTCMonth() > month)){
				cls.push('new');
			}
			if (this.focusDate && date.valueOf() === this.focusDate.valueOf())
				cls.push('focused');
			// Compare internal UTC date with local today, not UTC today
			if (this.o.todayHighlight &&
				date.getUTCFullYear() === today.getFullYear() &&
				date.getUTCMonth() === today.getMonth() &&
				date.getUTCDate() === today.getDate()){
				cls.push('today');
			}
			if (this.dates.contains(date) !== -1)
				cls.push('active');
			if (!this.dateWithinRange(date)){
				cls.push('disabled');
			}
			if (this.dateIsDisabled(date)){
				cls.push('disabled', 'disabled-date');	
			} 
			if ($.inArray(date.getUTCDay(), this.o.daysOfWeekHighlighted) !== -1){
				cls.push('highlighted');
			}

			if (this.range){
				if (date > this.range[0] && date < this.range[this.range.length-1]){
					cls.push('range');
				}
				if ($.inArray(date.valueOf(), this.range) !== -1){
					cls.push('selected');
				}
				if (date.valueOf() === this.range[0]){
          cls.push('range-start');
        }
        if (date.valueOf() === this.range[this.range.length-1]){
          cls.push('range-end');
        }
			}
			return cls;
		},

		_fill_yearsView: function(selector, cssClass, factor, step, currentYear, startYear, endYear, callback){
			var html, view, year, steps, startStep, endStep, thisYear, i, classes, tooltip, before;

			html      = '';
			view      = this.picker.find(selector);
			year      = parseInt(currentYear / factor, 10) * factor;
			startStep = parseInt(startYear / step, 10) * step;
			endStep   = parseInt(endYear / step, 10) * step;
			steps     = $.map(this.dates, function(d){
				return parseInt(d.getUTCFullYear() / step, 10) * step;
			});

			view.find('.datepicker-switch').text(year + '-' + (year + step * 9));

			thisYear = year - step;
			for (i = -1; i < 11; i += 1) {
				classes = [cssClass];
				tooltip = null;

				if (i === -1) {
					classes.push('old');
				} else if (i === 10) {
					classes.push('new');
				}
				if ($.inArray(thisYear, steps) !== -1) {
					classes.push('active');
				}
				if (thisYear < startStep || thisYear > endStep) {
					classes.push('disabled');
				}
        if (thisYear === this.viewDate.getFullYear()) {
				  classes.push('focused');
        }

				if (callback !== $.noop) {
					before = callback(new Date(thisYear, 0, 1));
					if (before === undefined) {
						before = {};
					} else if (typeof(before) === 'boolean') {
						before = {enabled: before};
					} else if (typeof(before) === 'string') {
						before = {classes: before};
					}
					if (before.enabled === false) {
						classes.push('disabled');
					}
					if (before.classes) {
						classes = classes.concat(before.classes.split(/\s+/));
					}
					if (before.tooltip) {
						tooltip = before.tooltip;
					}
				}

				html += '<span class="' + classes.join(' ') + '"' + (tooltip ? ' title="' + tooltip + '"' : '') + '>' + thisYear + '</span>';
				thisYear += step;
			}
			view.find('td').html(html);
		},

		fill: function(){
			var d = new Date(this.viewDate),
				year = d.getUTCFullYear(),
				month = d.getUTCMonth(),
				startYear = this.o.startDate !== -Infinity ? this.o.startDate.getUTCFullYear() : -Infinity,
				startMonth = this.o.startDate !== -Infinity ? this.o.startDate.getUTCMonth() : -Infinity,
				endYear = this.o.endDate !== Infinity ? this.o.endDate.getUTCFullYear() : Infinity,
				endMonth = this.o.endDate !== Infinity ? this.o.endDate.getUTCMonth() : Infinity,
				todaytxt = dates[this.o.language].today || dates['en'].today || '',
				cleartxt = dates[this.o.language].clear || dates['en'].clear || '',
				titleFormat = dates[this.o.language].titleFormat || dates['en'].titleFormat,
				tooltip,
				before;
			if (isNaN(year) || isNaN(month))
				return;
			this.picker.find('.datepicker-days .datepicker-switch')
						.text(DPGlobal.formatDate(d, titleFormat, this.o.language));
			this.picker.find('tfoot .today')
						.text(todaytxt)
						.toggle(this.o.todayBtn !== false);
			this.picker.find('tfoot .clear')
						.text(cleartxt)
						.toggle(this.o.clearBtn !== false);
			this.picker.find('thead .datepicker-title')
						.text(this.o.title)
						.toggle(this.o.title !== '');
			this.updateNavArrows();
			this.fillMonths();
			var prevMonth = UTCDate(year, month-1, 28),
				day = DPGlobal.getDaysInMonth(prevMonth.getUTCFullYear(), prevMonth.getUTCMonth());
			prevMonth.setUTCDate(day);
			prevMonth.setUTCDate(day - (prevMonth.getUTCDay() - this.o.weekStart + 7)%7);
			var nextMonth = new Date(prevMonth);
			if (prevMonth.getUTCFullYear() < 100){
        nextMonth.setUTCFullYear(prevMonth.getUTCFullYear());
      }
			nextMonth.setUTCDate(nextMonth.getUTCDate() + 42);
			nextMonth = nextMonth.valueOf();
			var html = [];
			var clsName;
			while (prevMonth.valueOf() < nextMonth){
				if (prevMonth.getUTCDay() === this.o.weekStart){
					html.push('<tr>');
					if (this.o.calendarWeeks){
						// ISO 8601: First week contains first thursday.
						// ISO also states week starts on Monday, but we can be more abstract here.
						var
							// Start of current week: based on weekstart/current date
							ws = new Date(+prevMonth + (this.o.weekStart - prevMonth.getUTCDay() - 7) % 7 * 864e5),
							// Thursday of this week
							th = new Date(Number(ws) + (7 + 4 - ws.getUTCDay()) % 7 * 864e5),
							// First Thursday of year, year from thursday
							yth = new Date(Number(yth = UTCDate(th.getUTCFullYear(), 0, 1)) + (7 + 4 - yth.getUTCDay())%7*864e5),
							// Calendar week: ms between thursdays, div ms per day, div 7 days
							calWeek =  (th - yth) / 864e5 / 7 + 1;
						html.push('<td class="cw">'+ calWeek +'</td>');
					}
				}
				clsName = this.getClassNames(prevMonth);
				clsName.push('day');

				if (this.o.beforeShowDay !== $.noop){
					before = this.o.beforeShowDay(this._utc_to_local(prevMonth));
					if (before === undefined)
						before = {};
					else if (typeof(before) === 'boolean')
						before = {enabled: before};
					else if (typeof(before) === 'string')
						before = {classes: before};
					if (before.enabled === false)
						clsName.push('disabled');
					if (before.classes)
						clsName = clsName.concat(before.classes.split(/\s+/));
					if (before.tooltip)
						tooltip = before.tooltip;
				}

				//Check if uniqueSort exists (supported by jquery >=1.12 and >=2.2)
				//Fallback to unique function for older jquery versions
				if ($.isFunction($.uniqueSort)) {
					clsName = $.uniqueSort(clsName);
				} else {
					clsName = $.unique(clsName);
				}

				html.push('<td class="'+clsName.join(' ')+'"' + (tooltip ? ' title="'+tooltip+'"' : '') + '>'+prevMonth.getUTCDate() + '</td>');
				tooltip = null;
				if (prevMonth.getUTCDay() === this.o.weekEnd){
					html.push('</tr>');
				}
				prevMonth.setUTCDate(prevMonth.getUTCDate()+1);
			}
			this.picker.find('.datepicker-days tbody').empty().append(html.join(''));

			var monthsTitle = dates[this.o.language].monthsTitle || dates['en'].monthsTitle || 'Months';
			var months = this.picker.find('.datepicker-months')
						.find('.datepicker-switch')
							.text(this.o.maxViewMode < 2 ? monthsTitle : year)
							.end()
						.find('span').removeClass('active');

			$.each(this.dates, function(i, d){
				if (d.getUTCFullYear() === year)
					months.eq(d.getUTCMonth()).addClass('active');
			});

			if (year < startYear || year > endYear){
				months.addClass('disabled');
			}
			if (year === startYear){
				months.slice(0, startMonth).addClass('disabled');
			}
			if (year === endYear){
				months.slice(endMonth+1).addClass('disabled');
			}

			if (this.o.beforeShowMonth !== $.noop){
				var that = this;
				$.each(months, function(i, month){
          var moDate = new Date(year, i, 1);
          var before = that.o.beforeShowMonth(moDate);
					if (before === undefined)
						before = {};
					else if (typeof(before) === 'boolean')
						before = {enabled: before};
					else if (typeof(before) === 'string')
						before = {classes: before};
					if (before.enabled === false && !$(month).hasClass('disabled'))
					    $(month).addClass('disabled');
					if (before.classes)
					    $(month).addClass(before.classes);
					if (before.tooltip)
					    $(month).prop('title', before.tooltip);
				});
			}

			// Generating decade/years picker
			this._fill_yearsView(
				'.datepicker-years',
				'year',
				10,
				1,
				year,
				startYear,
				endYear,
				this.o.beforeShowYear
			);

			// Generating century/decades picker
			this._fill_yearsView(
				'.datepicker-decades',
				'decade',
				100,
				10,
				year,
				startYear,
				endYear,
				this.o.beforeShowDecade
			);

			// Generating millennium/centuries picker
			this._fill_yearsView(
				'.datepicker-centuries',
				'century',
				1000,
				100,
				year,
				startYear,
				endYear,
				this.o.beforeShowCentury
			);
		},

		updateNavArrows: function(){
			if (!this._allow_update)
				return;

			var d = new Date(this.viewDate),
				year = d.getUTCFullYear(),
				month = d.getUTCMonth();
			switch (this.viewMode){
				case 0:
					if (this.o.startDate !== -Infinity && year <= this.o.startDate.getUTCFullYear() && month <= this.o.startDate.getUTCMonth()){
						this.picker.find('.prev').css({visibility: 'hidden'});
					}
					else {
						this.picker.find('.prev').css({visibility: 'visible'});
					}
					if (this.o.endDate !== Infinity && year >= this.o.endDate.getUTCFullYear() && month >= this.o.endDate.getUTCMonth()){
						this.picker.find('.next').css({visibility: 'hidden'});
					}
					else {
						this.picker.find('.next').css({visibility: 'visible'});
					}
					break;
				case 1:
				case 2:
				case 3:
				case 4:
					if (this.o.startDate !== -Infinity && year <= this.o.startDate.getUTCFullYear() || this.o.maxViewMode < 2){
						this.picker.find('.prev').css({visibility: 'hidden'});
					}
					else {
						this.picker.find('.prev').css({visibility: 'visible'});
					}
					if (this.o.endDate !== Infinity && year >= this.o.endDate.getUTCFullYear() || this.o.maxViewMode < 2){
						this.picker.find('.next').css({visibility: 'hidden'});
					}
					else {
						this.picker.find('.next').css({visibility: 'visible'});
					}
					break;
			}
		},

		click: function(e){
			e.preventDefault();
			e.stopPropagation();

			var target, dir, day, year, month, monthChanged, yearChanged;
			target = $(e.target);

			// Clicked on the switch
			if (target.hasClass('datepicker-switch')){
				this.showMode(1);
			}

			// Clicked on prev or next
			var navArrow = target.closest('.prev, .next');
			if (navArrow.length > 0) {
				dir = DPGlobal.modes[this.viewMode].navStep * (navArrow.hasClass('prev') ? -1 : 1);
				if (this.viewMode === 0){
					this.viewDate = this.moveMonth(this.viewDate, dir);
					this._trigger('changeMonth', this.viewDate);
				} else {
					this.viewDate = this.moveYear(this.viewDate, dir);
					if (this.viewMode === 1){
						this._trigger('changeYear', this.viewDate);
					}
				}
				this.fill();
			}

			// Clicked on today button
			if (target.hasClass('today') && !target.hasClass('day')){
				this.showMode(-2);
				this._setDate(UTCToday(), this.o.todayBtn === 'linked' ? null : 'view');
			}

			// Clicked on clear button
			if (target.hasClass('clear')){
				this.clearDates();
			}

			if (!target.hasClass('disabled')){
				// Clicked on a day
				if (target.hasClass('day')){
					day = parseInt(target.text(), 10) || 1;
					year = this.viewDate.getUTCFullYear();
					month = this.viewDate.getUTCMonth();

					// From last month
					if (target.hasClass('old')){
						if (month === 0) {
							month = 11;
							year = year - 1;
							monthChanged = true;
							yearChanged = true;
						} else {
							month = month - 1;
							monthChanged = true;
 						}
 					}

					// From next month
					if (target.hasClass('new')) {
						if (month === 11){
							month = 0;
							year = year + 1;
							monthChanged = true;
							yearChanged = true;
 						} else {
							month = month + 1;
							monthChanged = true;
 						}
					}
					this._setDate(UTCDate(year, month, day));
					if (yearChanged) {
						this._trigger('changeYear', this.viewDate);
					}
					if (monthChanged) {
						this._trigger('changeMonth', this.viewDate);
					}
				}

				// Clicked on a month
				if (target.hasClass('month')) {
					this.viewDate.setUTCDate(1);
					day = 1;
					month = target.parent().find('span').index(target);
					year = this.viewDate.getUTCFullYear();
					this.viewDate.setUTCMonth(month);
					this._trigger('changeMonth', this.viewDate);
					if (this.o.minViewMode === 1){
						this._setDate(UTCDate(year, month, day));
						this.showMode();
					} else {
						this.showMode(-1);
					}
					this.fill();
				}

				// Clicked on a year
				if (target.hasClass('year')
						|| target.hasClass('decade')
						|| target.hasClass('century')) {
					this.viewDate.setUTCDate(1);

					day = 1;
					month = 0;
					year = parseInt(target.text(), 10)||0;
					this.viewDate.setUTCFullYear(year);

					if (target.hasClass('year')){
						this._trigger('changeYear', this.viewDate);
						if (this.o.minViewMode === 2){
							this._setDate(UTCDate(year, month, day));
						}
					}
					if (target.hasClass('decade')){
						this._trigger('changeDecade', this.viewDate);
						if (this.o.minViewMode === 3){
							this._setDate(UTCDate(year, month, day));
						}
					}
					if (target.hasClass('century')){
						this._trigger('changeCentury', this.viewDate);
						if (this.o.minViewMode === 4){
							this._setDate(UTCDate(year, month, day));
						}
					}

					this.showMode(-1);
					this.fill();
				}
			}

			if (this.picker.is(':visible') && this._focused_from){
				$(this._focused_from).focus();
			}
			delete this._focused_from;
		},

		_toggle_multidate: function(date){
			var ix = this.dates.contains(date);
			if (!date){
				this.dates.clear();
			}

			if (ix !== -1){
				if (this.o.multidate === true || this.o.multidate > 1 || this.o.toggleActive){
					this.dates.remove(ix);
				}
			} else if (this.o.multidate === false) {
				this.dates.clear();
				this.dates.push(date);
			}
			else {
				this.dates.push(date);
			}

			if (typeof this.o.multidate === 'number')
				while (this.dates.length > this.o.multidate)
					this.dates.remove(0);
		},

		_setDate: function(date, which){
			if (!which || which === 'date')
				this._toggle_multidate(date && new Date(date));
			if (!which || which === 'view')
				this.viewDate = date && new Date(date);

			this.fill();
			this.setValue();
			if (!which || which !== 'view') {
				this._trigger('changeDate');
			}
			if (this.inputField){
				this.inputField.change();
			}
			if (this.o.autoclose && (!which || which === 'date')){
				this.hide();
			}
		},

		moveDay: function(date, dir){
			var newDate = new Date(date);
			newDate.setUTCDate(date.getUTCDate() + dir);

			return newDate;
		},

		moveWeek: function(date, dir){
			return this.moveDay(date, dir * 7);
		},

		moveMonth: function(date, dir){
			if (!isValidDate(date))
				return this.o.defaultViewDate;
			if (!dir)
				return date;
			var new_date = new Date(date.valueOf()),
				day = new_date.getUTCDate(),
				month = new_date.getUTCMonth(),
				mag = Math.abs(dir),
				new_month, test;
			dir = dir > 0 ? 1 : -1;
			if (mag === 1){
				test = dir === -1
					// If going back one month, make sure month is not current month
					// (eg, Mar 31 -> Feb 31 == Feb 28, not Mar 02)
					? function(){
						return new_date.getUTCMonth() === month;
					}
					// If going forward one month, make sure month is as expected
					// (eg, Jan 31 -> Feb 31 == Feb 28, not Mar 02)
					: function(){
						return new_date.getUTCMonth() !== new_month;
					};
				new_month = month + dir;
				new_date.setUTCMonth(new_month);
				// Dec -> Jan (12) or Jan -> Dec (-1) -- limit expected date to 0-11
				if (new_month < 0 || new_month > 11)
					new_month = (new_month + 12) % 12;
			}
			else {
				// For magnitudes >1, move one month at a time...
				for (var i=0; i < mag; i++)
					// ...which might decrease the day (eg, Jan 31 to Feb 28, etc)...
					new_date = this.moveMonth(new_date, dir);
				// ...then reset the day, keeping it in the new month
				new_month = new_date.getUTCMonth();
				new_date.setUTCDate(day);
				test = function(){
					return new_month !== new_date.getUTCMonth();
				};
			}
			// Common date-resetting loop -- if date is beyond end of month, make it
			// end of month
			while (test()){
				new_date.setUTCDate(--day);
				new_date.setUTCMonth(new_month);
			}
			return new_date;
		},

		moveYear: function(date, dir){
			return this.moveMonth(date, dir*12);
		},

		moveAvailableDate: function(date, dir, fn){
			do {
				date = this[fn](date, dir);

				if (!this.dateWithinRange(date))
					return false;

				fn = 'moveDay';
			}
			while (this.dateIsDisabled(date));

			return date;
		},

		weekOfDateIsDisabled: function(date){
			return $.inArray(date.getUTCDay(), this.o.daysOfWeekDisabled) !== -1;
		},

		dateIsDisabled: function(date){
			return (
				this.weekOfDateIsDisabled(date) ||
				$.grep(this.o.datesDisabled, function(d){
					return isUTCEquals(date, d);
				}).length > 0
			);
		},

		dateWithinRange: function(date){
			return date >= this.o.startDate && date <= this.o.endDate;
		},

		keydown: function(e){
			if (!this.picker.is(':visible')){
				if (e.keyCode === 40 || e.keyCode === 27) { // allow down to re-show picker
					this.show();
					e.stopPropagation();
        }
				return;
			}
			var dateChanged = false,
				dir, newViewDate,
				focusDate = this.focusDate || this.viewDate;
			switch (e.keyCode){
				case 27: // escape
					if (this.focusDate){
						this.focusDate = null;
						this.viewDate = this.dates.get(-1) || this.viewDate;
						this.fill();
					}
					else
						this.hide();
					e.preventDefault();
					e.stopPropagation();
					break;
				case 37: // left
				case 38: // up
				case 39: // right
				case 40: // down
					if (!this.o.keyboardNavigation || this.o.daysOfWeekDisabled.length === 7)
						break;
					dir = e.keyCode === 37 || e.keyCode === 38 ? -1 : 1;
          if (this.viewMode === 0) {
  					if (e.ctrlKey){
  						newViewDate = this.moveAvailableDate(focusDate, dir, 'moveYear');

  						if (newViewDate)
  							this._trigger('changeYear', this.viewDate);
  					}
  					else if (e.shiftKey){
  						newViewDate = this.moveAvailableDate(focusDate, dir, 'moveMonth');

  						if (newViewDate)
  							this._trigger('changeMonth', this.viewDate);
  					}
  					else if (e.keyCode === 37 || e.keyCode === 39){
  						newViewDate = this.moveAvailableDate(focusDate, dir, 'moveDay');
  					}
  					else if (!this.weekOfDateIsDisabled(focusDate)){
  						newViewDate = this.moveAvailableDate(focusDate, dir, 'moveWeek');
  					}
          } else if (this.viewMode === 1) {
            if (e.keyCode === 38 || e.keyCode === 40) {
              dir = dir * 4;
            }
            newViewDate = this.moveAvailableDate(focusDate, dir, 'moveMonth');
          } else if (this.viewMode === 2) {
            if (e.keyCode === 38 || e.keyCode === 40) {
              dir = dir * 4;
            }
            newViewDate = this.moveAvailableDate(focusDate, dir, 'moveYear');
          }
					if (newViewDate){
						this.focusDate = this.viewDate = newViewDate;
						this.setValue();
						this.fill();
						e.preventDefault();
					}
					break;
				case 13: // enter
					if (!this.o.forceParse)
						break;
					focusDate = this.focusDate || this.dates.get(-1) || this.viewDate;
					if (this.o.keyboardNavigation) {
						this._toggle_multidate(focusDate);
						dateChanged = true;
					}
					this.focusDate = null;
					this.viewDate = this.dates.get(-1) || this.viewDate;
					this.setValue();
					this.fill();
					if (this.picker.is(':visible')){
						e.preventDefault();
						e.stopPropagation();
						if (this.o.autoclose)
							this.hide();
					}
					break;
				case 9: // tab
					this.focusDate = null;
					this.viewDate = this.dates.get(-1) || this.viewDate;
					this.fill();
					this.hide();
					break;
			}
			if (dateChanged){
				if (this.dates.length)
					this._trigger('changeDate');
				else
					this._trigger('clearDate');
				if (this.inputField){
					this.inputField.change();
				}
			}
		},

		showMode: function(dir){
			if (dir){
				this.viewMode = Math.max(this.o.minViewMode, Math.min(this.o.maxViewMode, this.viewMode + dir));
			}
			this.picker
				.children('div')
				.hide()
				.filter('.datepicker-' + DPGlobal.modes[this.viewMode].clsName)
					.show();
			this.updateNavArrows();
		}
	};

	var DateRangePicker = function(element, options){
		$(element).data('datepicker', this);
		this.element = $(element);
		this.inputs = $.map(options.inputs, function(i){
			return i.jquery ? i[0] : i;
		});
		delete options.inputs;

		datepickerPlugin.call($(this.inputs), options)
			.on('changeDate', $.proxy(this.dateUpdated, this));

		this.pickers = $.map(this.inputs, function(i){
			return $(i).data('datepicker');
		});
		this.updateDates();
	};
	DateRangePicker.prototype = {
		updateDates: function(){
			this.dates = $.map(this.pickers, function(i){
				return i.getUTCDate();
			});
			this.updateRanges();
		},
		updateRanges: function(){
			var range = $.map(this.dates, function(d){
				return d.valueOf();
			});
			$.each(this.pickers, function(i, p){
				p.setRange(range);
			});
		},
		dateUpdated: function(e){
			// `this.updating` is a workaround for preventing infinite recursion
			// between `changeDate` triggering and `setUTCDate` calling.  Until
			// there is a better mechanism.
			if (this.updating)
				return;
			this.updating = true;

			var dp = $(e.target).data('datepicker');

			if (typeof(dp) === "undefined") {
				return;
			}

			var new_date = dp.getUTCDate(),
				i = $.inArray(e.target, this.inputs),
				j = i - 1,
				k = i + 1,
				l = this.inputs.length;
			if (i === -1)
				return;

			$.each(this.pickers, function(i, p){
				if (!p.getUTCDate())
					p.setUTCDate(new_date);
			});

			if (new_date < this.dates[j]){
				// Date being moved earlier/left
				while (j >= 0 && new_date < this.dates[j]){
					this.pickers[j--].setUTCDate(new_date);
				}
			}
			else if (new_date > this.dates[k]){
				// Date being moved later/right
				while (k < l && new_date > this.dates[k]){
					this.pickers[k++].setUTCDate(new_date);
				}
			}
			this.updateDates();

			delete this.updating;
		},
		remove: function(){
			$.map(this.pickers, function(p){ p.remove(); });
			delete this.element.data().datepicker;
		}
	};

	function opts_from_el(el, prefix){
		// Derive options from element data-attrs
		var data = $(el).data(),
			out = {}, inkey,
			replace = new RegExp('^' + prefix.toLowerCase() + '([A-Z])');
		prefix = new RegExp('^' + prefix.toLowerCase());
		function re_lower(_,a){
			return a.toLowerCase();
		}
		for (var key in data)
			if (prefix.test(key)){
				inkey = key.replace(replace, re_lower);
				out[inkey] = data[key];
			}
		return out;
	}

	function opts_from_locale(lang){
		// Derive options from locale plugins
		var out = {};
		// Check if "de-DE" style date is available, if not language should
		// fallback to 2 letter code eg "de"
		if (!dates[lang]){
			lang = lang.split('-')[0];
			if (!dates[lang])
				return;
		}
		var d = dates[lang];
		$.each(locale_opts, function(i,k){
			if (k in d)
				out[k] = d[k];
		});
		return out;
	}

	var old = $.fn.datepicker;
	var datepickerPlugin = function(option){
		var args = Array.apply(null, arguments);
		args.shift();
		var internal_return;
		this.each(function(){
			var $this = $(this),
				data = $this.data('datepicker'),
				options = typeof option === 'object' && option;
			if (!data){
				var elopts = opts_from_el(this, 'date'),
					// Preliminary otions
					xopts = $.extend({}, defaults, elopts, options),
					locopts = opts_from_locale(xopts.language),
					// Options priority: js args, data-attrs, locales, defaults
					opts = $.extend({}, defaults, locopts, elopts, options);
				if ($this.hasClass('input-daterange') || opts.inputs){
					$.extend(opts, {
						inputs: opts.inputs || $this.find('input').toArray()
					});
					data = new DateRangePicker(this, opts);
				}
				else {
					data = new Datepicker(this, opts);
				}
				$this.data('datepicker', data);
			}
			if (typeof option === 'string' && typeof data[option] === 'function'){
				internal_return = data[option].apply(data, args);
			}
		});

		if (
			internal_return === undefined ||
			internal_return instanceof Datepicker ||
			internal_return instanceof DateRangePicker
		)
			return this;

		if (this.length > 1)
			throw new Error('Using only allowed for the collection of a single element (' + option + ' function)');
		else
			return internal_return;
	};
	$.fn.datepicker = datepickerPlugin;

	var defaults = $.fn.datepicker.defaults = {
		assumeNearbyYear: false,
		autoclose: false,
		beforeShowDay: $.noop,
		beforeShowMonth: $.noop,
		beforeShowYear: $.noop,
		beforeShowDecade: $.noop,
		beforeShowCentury: $.noop,
		calendarWeeks: false,
		clearBtn: false,
		toggleActive: false,
		daysOfWeekDisabled: [],
		daysOfWeekHighlighted: [],
		datesDisabled: [],
		endDate: Infinity,
		forceParse: true,
		format: 'mm/dd/yyyy',
		keyboardNavigation: true,
		language: 'en',
		minViewMode: 0,
		maxViewMode: 4,
		multidate: false,
		multidateSeparator: ',',
		orientation: "auto",
		rtl: false,
		startDate: -Infinity,
		startView: 0,
		todayBtn: false,
		todayHighlight: false,
		weekStart: 0,
		disableTouchKeyboard: false,
		enableOnReadonly: true,
		showOnFocus: true,
		zIndexOffset: 10,
		container: 'body',
		immediateUpdates: false,
		title: '',
		templates: {
			leftArrow: '&laquo;',
			rightArrow: '&raquo;'
		}
	};
	var locale_opts = $.fn.datepicker.locale_opts = [
		'format',
		'rtl',
		'weekStart'
	];
	$.fn.datepicker.Constructor = Datepicker;
	var dates = $.fn.datepicker.dates = {
		en: {
			days: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
			daysShort: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
			daysMin: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"],
			months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
			monthsShort: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
			today: "Today",
			clear: "Clear",
			titleFormat: "MM yyyy"
		}
	};

	var DPGlobal = {
		modes: [
			{
				clsName: 'days',
				navFnc: 'Month',
				navStep: 1
			},
			{
				clsName: 'months',
				navFnc: 'FullYear',
				navStep: 1
			},
			{
				clsName: 'years',
				navFnc: 'FullYear',
				navStep: 10
			},
			{
				clsName: 'decades',
				navFnc: 'FullDecade',
				navStep: 100
			},
			{
				clsName: 'centuries',
				navFnc: 'FullCentury',
				navStep: 1000
		}],
		isLeapYear: function(year){
			return (((year % 4 === 0) && (year % 100 !== 0)) || (year % 400 === 0));
		},
		getDaysInMonth: function(year, month){
			return [31, (DPGlobal.isLeapYear(year) ? 29 : 28), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][month];
		},
		validParts: /dd?|DD?|mm?|MM?|yy(?:yy)?/g,
		nonpunctuation: /[^ -\/:-@\u5e74\u6708\u65e5\[-`{-~\t\n\r]+/g,
		parseFormat: function(format){
			if (typeof format.toValue === 'function' && typeof format.toDisplay === 'function')
                return format;
            // IE treats \0 as a string end in inputs (truncating the value),
			// so it's a bad format delimiter, anyway
			var separators = format.replace(this.validParts, '\0').split('\0'),
				parts = format.match(this.validParts);
			if (!separators || !separators.length || !parts || parts.length === 0){
				throw new Error("Invalid date format.");
			}
			return {separators: separators, parts: parts};
		},
		parseDate: function(date, format, language, assumeNearby){
			if (!date)
				return undefined;
			if (date instanceof Date)
				return date;
			if (typeof format === 'string')
				format = DPGlobal.parseFormat(format);
			if (format.toValue)
                return format.toValue(date, format, language);
            var part_re = /([\-+]\d+)([dmwy])/,
				parts = date.match(/([\-+]\d+)([dmwy])/g),
				fn_map = {
					d: 'moveDay',
					m: 'moveMonth',
					w: 'moveWeek',
					y: 'moveYear'
				},
				dateAliases = {
					yesterday: '-1d',
					today: '+0d',
					tomorrow: '+1d'
				},
				part, dir, i, fn;
			if (/^[\-+]\d+[dmwy]([\s,]+[\-+]\d+[dmwy])*$/.test(date)){
				date = new Date();
				for (i=0; i < parts.length; i++){
					part = part_re.exec(parts[i]);
					dir = parseInt(part[1]);
					fn = fn_map[part[2]];
					date = Datepicker.prototype[fn](date, dir);
				}
				return UTCDate(date.getUTCFullYear(), date.getUTCMonth(), date.getUTCDate());
			}

			if (typeof dateAliases[date] !== 'undefined') {
				date = dateAliases[date];
				parts = date.match(/([\-+]\d+)([dmwy])/g);

				if (/^[\-+]\d+[dmwy]([\s,]+[\-+]\d+[dmwy])*$/.test(date)){
					date = new Date();
				  	for (i=0; i < parts.length; i++){
						part = part_re.exec(parts[i]);
						dir = parseInt(part[1]);
						fn = fn_map[part[2]];
						date = Datepicker.prototype[fn](date, dir);
				  	}

			  		return UTCDate(date.getUTCFullYear(), date.getUTCMonth(), date.getUTCDate());
				}
			}

			parts = date && date.match(this.nonpunctuation) || [];
			date = new Date();

			function applyNearbyYear(year, threshold){
				if (threshold === true)
					threshold = 10;

				// if year is 2 digits or less, than the user most likely is trying to get a recent century
				if (year < 100){
					year += 2000;
					// if the new year is more than threshold years in advance, use last century
					if (year > ((new Date()).getFullYear()+threshold)){
						year -= 100;
					}
				}

				return year;
			}

			var parsed = {},
				setters_order = ['yyyy', 'yy', 'M', 'MM', 'm', 'mm', 'd', 'dd'],
				setters_map = {
					yyyy: function(d,v){
						return d.setUTCFullYear(assumeNearby ? applyNearbyYear(v, assumeNearby) : v);
					},
					yy: function(d,v){
						return d.setUTCFullYear(assumeNearby ? applyNearbyYear(v, assumeNearby) : v);
					},
					m: function(d,v){
						if (isNaN(d))
							return d;
						v -= 1;
						while (v < 0) v += 12;
						v %= 12;
						d.setUTCMonth(v);
						while (d.getUTCMonth() !== v)
							d.setUTCDate(d.getUTCDate()-1);
						return d;
					},
					d: function(d,v){
						return d.setUTCDate(v);
					}
				},
				val, filtered;
			setters_map['M'] = setters_map['MM'] = setters_map['mm'] = setters_map['m'];
			setters_map['dd'] = setters_map['d'];
			date = UTCToday();
			var fparts = format.parts.slice();
			// Remove noop parts
			if (parts.length !== fparts.length){
				fparts = $(fparts).filter(function(i,p){
					return $.inArray(p, setters_order) !== -1;
				}).toArray();
			}
			// Process remainder
			function match_part(){
				var m = this.slice(0, parts[i].length),
					p = parts[i].slice(0, m.length);
				return m.toLowerCase() === p.toLowerCase();
			}
			if (parts.length === fparts.length){
				var cnt;
				for (i=0, cnt = fparts.length; i < cnt; i++){
					val = parseInt(parts[i], 10);
					part = fparts[i];
					if (isNaN(val)){
						switch (part){
							case 'MM':
								filtered = $(dates[language].months).filter(match_part);
								val = $.inArray(filtered[0], dates[language].months) + 1;
								break;
							case 'M':
								filtered = $(dates[language].monthsShort).filter(match_part);
								val = $.inArray(filtered[0], dates[language].monthsShort) + 1;
								break;
						}
					}
					parsed[part] = val;
				}
				var _date, s;
				for (i=0; i < setters_order.length; i++){
					s = setters_order[i];
					if (s in parsed && !isNaN(parsed[s])){
						_date = new Date(date);
						setters_map[s](_date, parsed[s]);
						if (!isNaN(_date))
							date = _date;
					}
				}
			}
			return date;
		},
		formatDate: function(date, format, language){
			if (!date)
				return '';
			if (typeof format === 'string')
				format = DPGlobal.parseFormat(format);
			if (format.toDisplay)
                return format.toDisplay(date, format, language);
            var val = {
				d: date.getUTCDate(),
				D: dates[language].daysShort[date.getUTCDay()],
				DD: dates[language].days[date.getUTCDay()],
				m: date.getUTCMonth() + 1,
				M: dates[language].monthsShort[date.getUTCMonth()],
				MM: dates[language].months[date.getUTCMonth()],
				yy: date.getUTCFullYear().toString().substring(2),
				yyyy: date.getUTCFullYear()
			};
			val.dd = (val.d < 10 ? '0' : '') + val.d;
			val.mm = (val.m < 10 ? '0' : '') + val.m;
			date = [];
			var seps = $.extend([], format.separators);
			for (var i=0, cnt = format.parts.length; i <= cnt; i++){
				if (seps.length)
					date.push(seps.shift());
				date.push(val[format.parts[i]]);
			}
			return date.join('');
		},
		headTemplate: '<thead>'+
			              '<tr>'+
			                '<th colspan="7" class="datepicker-title"></th>'+
			              '</tr>'+
							'<tr>'+
								'<th class="prev">&laquo;</th>'+
								'<th colspan="5" class="datepicker-switch"></th>'+
								'<th class="next">&raquo;</th>'+
							'</tr>'+
						'</thead>',
		contTemplate: '<tbody><tr><td colspan="7"></td></tr></tbody>',
		footTemplate: '<tfoot>'+
							'<tr>'+
								'<th colspan="7" class="today"></th>'+
							'</tr>'+
							'<tr>'+
								'<th colspan="7" class="clear"></th>'+
							'</tr>'+
						'</tfoot>'
	};
	DPGlobal.template = '<div class="datepicker">'+
							'<div class="datepicker-days">'+
								'<table class="table-condensed">'+
									DPGlobal.headTemplate+
									'<tbody></tbody>'+
									DPGlobal.footTemplate+
								'</table>'+
							'</div>'+
							'<div class="datepicker-months">'+
								'<table class="table-condensed">'+
									DPGlobal.headTemplate+
									DPGlobal.contTemplate+
									DPGlobal.footTemplate+
								'</table>'+
							'</div>'+
							'<div class="datepicker-years">'+
								'<table class="table-condensed">'+
									DPGlobal.headTemplate+
									DPGlobal.contTemplate+
									DPGlobal.footTemplate+
								'</table>'+
							'</div>'+
							'<div class="datepicker-decades">'+
								'<table class="table-condensed">'+
									DPGlobal.headTemplate+
									DPGlobal.contTemplate+
									DPGlobal.footTemplate+
								'</table>'+
							'</div>'+
							'<div class="datepicker-centuries">'+
								'<table class="table-condensed">'+
									DPGlobal.headTemplate+
									DPGlobal.contTemplate+
									DPGlobal.footTemplate+
								'</table>'+
							'</div>'+
						'</div>';

	$.fn.datepicker.DPGlobal = DPGlobal;


	/* DATEPICKER NO CONFLICT
	* =================== */

	$.fn.datepicker.noConflict = function(){
		$.fn.datepicker = old;
		return this;
	};

	/* DATEPICKER VERSION
	 * =================== */
	$.fn.datepicker.version = '1.6.4';

	/* DATEPICKER DATA-API
	* ================== */

	$(document).on(
		'focus.datepicker.data-api click.datepicker.data-api',
		'[data-provide="datepicker"]',
		function(e){
			var $this = $(this);
			if ($this.data('datepicker'))
				return;
			e.preventDefault();
			// component click requires us to explicitly show it
			datepickerPlugin.call($this, 'show');
		}
	);
	$(function(){
		datepickerPlugin.call($('[data-provide="datepicker-inline"]'));
	});

}));
/*!
 * Bootstrap-select v1.13.6 (https://developer.snapappointments.com/bootstrap-select)
 *
 * Copyright 2012-2019 SnapAppointments, LLC
 * Licensed under MIT (https://github.com/snapappointments/bootstrap-select/blob/master/LICENSE)
 */

!function(e,t){void 0===e&&void 0!==window&&(e=window),"function"==typeof define&&define.amd?define(["jquery"],function(e){return t(e)}):"object"==typeof module&&module.exports?module.exports=t(require("jquery")):t(e.jQuery)}(this,function(e){!function(O){"use strict";var d=["sanitize","whiteList","sanitizeFn"],r=["background","cite","href","itemtype","longdesc","poster","src","xlink:href"],e={"*":["class","dir","id","lang","role","tabindex","style",/^aria-[\w-]*$/i],a:["target","href","title","rel"],area:[],b:[],br:[],col:[],code:[],div:[],em:[],hr:[],h1:[],h2:[],h3:[],h4:[],h5:[],h6:[],i:[],img:["src","alt","title","width","height"],li:[],ol:[],p:[],pre:[],s:[],small:[],span:[],sub:[],sup:[],strong:[],u:[],ul:[]},l=/^(?:(?:https?|mailto|ftp|tel|file):|[^&:/?#]*(?:[/?#]|$))/gi,a=/^data:(?:image\/(?:bmp|gif|jpeg|jpg|png|tiff|webp)|video\/(?:mpeg|mp4|ogg|webm)|audio\/(?:mp3|oga|ogg|opus));base64,[a-z0-9+/]+=*$/i;function v(e,t){var i=e.nodeName.toLowerCase();if(-1!==O.inArray(i,t))return-1===O.inArray(i,r)||Boolean(e.nodeValue.match(l)||e.nodeValue.match(a));for(var n=O(t).filter(function(e,t){return t instanceof RegExp}),s=0,o=n.length;s<o;s++)if(i.match(n[s]))return!0;return!1}function P(e,t,i){if(i&&"function"==typeof i)return i(e);for(var n=Object.keys(t),s=0,o=e.length;s<o;s++)for(var r=e[s].querySelectorAll("*"),l=0,a=r.length;l<a;l++){var c=r[l],d=c.nodeName.toLowerCase();if(-1!==n.indexOf(d))for(var h=[].slice.call(c.attributes),p=[].concat(t["*"]||[],t[d]||[]),u=0,f=h.length;u<f;u++){var m=h[u];v(m,p)||c.removeAttribute(m.nodeName)}else c.parentNode.removeChild(c)}}"classList"in document.createElement("_")||function(e){if("Element"in e){var t="classList",i="prototype",n=e.Element[i],s=Object,o=function(){var i=O(this);return{add:function(e){return i.addClass(e)},remove:function(e){return i.removeClass(e)},toggle:function(e,t){return i.toggleClass(e,t)},contains:function(e){return i.hasClass(e)}}};if(s.defineProperty){var r={get:o,enumerable:!0,configurable:!0};try{s.defineProperty(n,t,r)}catch(e){void 0!==e.number&&-2146823252!==e.number||(r.enumerable=!1,s.defineProperty(n,t,r))}}else s[i].__defineGetter__&&n.__defineGetter__(t,o)}}(window);var t,c,i,n=document.createElement("_");if(n.classList.toggle("c3",!1),n.classList.contains("c3")){var s=DOMTokenList.prototype.toggle;DOMTokenList.prototype.toggle=function(e,t){return 1 in arguments&&!this.contains(e)==!t?t:s.call(this,e)}}function S(e){var t,i=[],n=e.selectedOptions;if(e.multiple)for(var s=0,o=n.length;s<o;s++)t=n[s],i.push(t.value||t.text);else i=e.value;return i}n=null,String.prototype.startsWith||(t=function(){try{var e={},t=Object.defineProperty,i=t(e,e,e)&&t}catch(e){}return i}(),c={}.toString,i=function(e){if(null==this)throw new TypeError;var t=String(this);if(e&&"[object RegExp]"==c.call(e))throw new TypeError;var i=t.length,n=String(e),s=n.length,o=1<arguments.length?arguments[1]:void 0,r=o?Number(o):0;r!=r&&(r=0);var l=Math.min(Math.max(r,0),i);if(i<s+l)return!1;for(var a=-1;++a<s;)if(t.charCodeAt(l+a)!=n.charCodeAt(a))return!1;return!0},t?t(String.prototype,"startsWith",{value:i,configurable:!0,writable:!0}):String.prototype.startsWith=i),Object.keys||(Object.keys=function(e,t,i){for(t in i=[],e)i.hasOwnProperty.call(e,t)&&i.push(t);return i}),HTMLSelectElement.prototype.hasOwnProperty("selectedOptions")||Object.defineProperty(HTMLSelectElement.prototype,"selectedOptions",{get:function(){return this.querySelectorAll(":checked")}});var o={useDefault:!1,_set:O.valHooks.select.set};O.valHooks.select.set=function(e,t){return t&&!o.useDefault&&O(e).data("selected",!0),o._set.apply(this,arguments)};var E=null,h=function(){try{return new Event("change"),!0}catch(e){return!1}}();function $(e,t,i,n){for(var s=["content","subtext","tokens"],o=!1,r=0;r<s.length;r++){var l=s[r],a=e[l];if(a&&(a=a.toString(),"content"===l&&(a=a.replace(/<[^>]+>/g,"")),n&&(a=g(a)),a=a.toUpperCase(),o="contains"===i?0<=a.indexOf(t):a.startsWith(t)))break}return o}function T(e){return parseInt(e,10)||0}O.fn.triggerNative=function(e){var t,i=this[0];i.dispatchEvent?(h?t=new Event(e,{bubbles:!0}):(t=document.createEvent("Event")).initEvent(e,!0,!1),i.dispatchEvent(t)):i.fireEvent?((t=document.createEventObject()).eventType=e,i.fireEvent("on"+e,t)):this.trigger(e)};var p={"\xc0":"A","\xc1":"A","\xc2":"A","\xc3":"A","\xc4":"A","\xc5":"A","\xe0":"a","\xe1":"a","\xe2":"a","\xe3":"a","\xe4":"a","\xe5":"a","\xc7":"C","\xe7":"c","\xd0":"D","\xf0":"d","\xc8":"E","\xc9":"E","\xca":"E","\xcb":"E","\xe8":"e","\xe9":"e","\xea":"e","\xeb":"e","\xcc":"I","\xcd":"I","\xce":"I","\xcf":"I","\xec":"i","\xed":"i","\xee":"i","\xef":"i","\xd1":"N","\xf1":"n","\xd2":"O","\xd3":"O","\xd4":"O","\xd5":"O","\xd6":"O","\xd8":"O","\xf2":"o","\xf3":"o","\xf4":"o","\xf5":"o","\xf6":"o","\xf8":"o","\xd9":"U","\xda":"U","\xdb":"U","\xdc":"U","\xf9":"u","\xfa":"u","\xfb":"u","\xfc":"u","\xdd":"Y","\xfd":"y","\xff":"y","\xc6":"Ae","\xe6":"ae","\xde":"Th","\xfe":"th","\xdf":"ss","\u0100":"A","\u0102":"A","\u0104":"A","\u0101":"a","\u0103":"a","\u0105":"a","\u0106":"C","\u0108":"C","\u010a":"C","\u010c":"C","\u0107":"c","\u0109":"c","\u010b":"c","\u010d":"c","\u010e":"D","\u0110":"D","\u010f":"d","\u0111":"d","\u0112":"E","\u0114":"E","\u0116":"E","\u0118":"E","\u011a":"E","\u0113":"e","\u0115":"e","\u0117":"e","\u0119":"e","\u011b":"e","\u011c":"G","\u011e":"G","\u0120":"G","\u0122":"G","\u011d":"g","\u011f":"g","\u0121":"g","\u0123":"g","\u0124":"H","\u0126":"H","\u0125":"h","\u0127":"h","\u0128":"I","\u012a":"I","\u012c":"I","\u012e":"I","\u0130":"I","\u0129":"i","\u012b":"i","\u012d":"i","\u012f":"i","\u0131":"i","\u0134":"J","\u0135":"j","\u0136":"K","\u0137":"k","\u0138":"k","\u0139":"L","\u013b":"L","\u013d":"L","\u013f":"L","\u0141":"L","\u013a":"l","\u013c":"l","\u013e":"l","\u0140":"l","\u0142":"l","\u0143":"N","\u0145":"N","\u0147":"N","\u014a":"N","\u0144":"n","\u0146":"n","\u0148":"n","\u014b":"n","\u014c":"O","\u014e":"O","\u0150":"O","\u014d":"o","\u014f":"o","\u0151":"o","\u0154":"R","\u0156":"R","\u0158":"R","\u0155":"r","\u0157":"r","\u0159":"r","\u015a":"S","\u015c":"S","\u015e":"S","\u0160":"S","\u015b":"s","\u015d":"s","\u015f":"s","\u0161":"s","\u0162":"T","\u0164":"T","\u0166":"T","\u0163":"t","\u0165":"t","\u0167":"t","\u0168":"U","\u016a":"U","\u016c":"U","\u016e":"U","\u0170":"U","\u0172":"U","\u0169":"u","\u016b":"u","\u016d":"u","\u016f":"u","\u0171":"u","\u0173":"u","\u0174":"W","\u0175":"w","\u0176":"Y","\u0177":"y","\u0178":"Y","\u0179":"Z","\u017b":"Z","\u017d":"Z","\u017a":"z","\u017c":"z","\u017e":"z","\u0132":"IJ","\u0133":"ij","\u0152":"Oe","\u0153":"oe","\u0149":"'n","\u017f":"s"},u=/[\xc0-\xd6\xd8-\xf6\xf8-\xff\u0100-\u017f]/g,f=RegExp("[\\u0300-\\u036f\\ufe20-\\ufe2f\\u20d0-\\u20ff\\u1ab0-\\u1aff\\u1dc0-\\u1dff]","g");function m(e){return p[e]}function g(e){return(e=e.toString())&&e.replace(u,m).replace(f,"")}var b,w,x,I,k,U=(b={"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#x27;","`":"&#x60;"},w=function(e){return b[e]},x="(?:"+Object.keys(b).join("|")+")",I=RegExp(x),k=RegExp(x,"g"),function(e){return e=null==e?"":""+e,I.test(e)?e.replace(k,w):e}),y={32:" ",48:"0",49:"1",50:"2",51:"3",52:"4",53:"5",54:"6",55:"7",56:"8",57:"9",59:";",65:"A",66:"B",67:"C",68:"D",69:"E",70:"F",71:"G",72:"H",73:"I",74:"J",75:"K",76:"L",77:"M",78:"N",79:"O",80:"P",81:"Q",82:"R",83:"S",84:"T",85:"U",86:"V",87:"W",88:"X",89:"Y",90:"Z",96:"0",97:"1",98:"2",99:"3",100:"4",101:"5",102:"6",103:"7",104:"8",105:"9"},C=27,z=13,L=32,A=9,H=38,D=40,N={success:!1,major:"3"};try{N.full=(O.fn.dropdown.Constructor.VERSION||"").split(" ")[0].split("."),N.major=N.full[0],N.success=!0}catch(e){console.warn("There was an issue retrieving Bootstrap's version. Ensure Bootstrap is being loaded before bootstrap-select and there is no namespace collision. If loading Bootstrap asynchronously, the version may need to be manually specified via $.fn.selectpicker.Constructor.BootstrapVersion.",e)}var R=0,W=".bs.select",V={DISABLED:"disabled",DIVIDER:"divider",SHOW:"open",DROPUP:"dropup",MENU:"dropdown-menu",MENURIGHT:"dropdown-menu-right",MENULEFT:"dropdown-menu-left",BUTTONCLASS:"btn-default",POPOVERHEADER:"popover-title"},B={MENU:"."+V.MENU};"4"===N.major&&(V.DIVIDER="dropdown-divider",V.SHOW="show",V.BUTTONCLASS="btn-light",V.POPOVERHEADER="popover-header");var j={span:document.createElement("span"),i:document.createElement("i"),subtext:document.createElement("small"),a:document.createElement("a"),li:document.createElement("li"),whitespace:document.createTextNode("\xa0"),fragment:document.createDocumentFragment()};j.a.setAttribute("role","option"),j.subtext.className="text-muted",j.text=j.span.cloneNode(!1),j.text.className="text";var M=new RegExp(H+"|"+D),F=new RegExp("^"+A+"$|"+C),_=function(e,t,i){var n=j.li.cloneNode(!1);return e&&(1===e.nodeType||11===e.nodeType?n.appendChild(e):n.innerHTML=e),void 0!==t&&""!==t&&(n.className=t),null!=i&&n.classList.add("optgroup-"+i),n},G=function(e,t,i){var n=j.a.cloneNode(!0);return e&&(11===e.nodeType?n.appendChild(e):n.insertAdjacentHTML("beforeend",e)),void 0!==t&&""!==t&&(n.className=t),"4"===N.major&&n.classList.add("dropdown-item"),i&&n.setAttribute("style",i),n},q=function(e,t){var i,n,s=j.text.cloneNode(!1);if(e.optionContent)s.innerHTML=e.optionContent;else{if(s.textContent=e.text,e.optionIcon){var o=j.whitespace.cloneNode(!1);(n=(!0===t?j.i:j.span).cloneNode(!1)).className=e.iconBase+" "+e.optionIcon,j.fragment.appendChild(n),j.fragment.appendChild(o)}e.optionSubtext&&((i=j.subtext.cloneNode(!1)).textContent=e.optionSubtext,s.appendChild(i))}if(!0===t)for(;0<s.childNodes.length;)j.fragment.appendChild(s.childNodes[0]);else j.fragment.appendChild(s);return j.fragment},K=function(e){var t,i,n=j.text.cloneNode(!1);if(n.innerHTML=e.labelEscaped,e.labelIcon){var s=j.whitespace.cloneNode(!1);(i=j.span.cloneNode(!1)).className=e.iconBase+" "+e.labelIcon,j.fragment.appendChild(i),j.fragment.appendChild(s)}return e.labelSubtext&&((t=j.subtext.cloneNode(!1)).textContent=e.labelSubtext,n.appendChild(t)),j.fragment.appendChild(n),j.fragment},Y=function(e,t){var i=this;o.useDefault||(O.valHooks.select.set=o._set,o.useDefault=!0),this.$element=O(e),this.$newElement=null,this.$button=null,this.$menu=null,this.options=t,this.selectpicker={main:{map:{newIndex:{},originalIndex:{}}},current:{map:{}},search:{map:{}},view:{},keydown:{keyHistory:"",resetKeyHistory:{start:function(){return setTimeout(function(){i.selectpicker.keydown.keyHistory=""},800)}}}},null===this.options.title&&(this.options.title=this.$element.attr("title"));var n=this.options.windowPadding;"number"==typeof n&&(this.options.windowPadding=[n,n,n,n]),this.val=Y.prototype.val,this.render=Y.prototype.render,this.refresh=Y.prototype.refresh,this.setStyle=Y.prototype.setStyle,this.selectAll=Y.prototype.selectAll,this.deselectAll=Y.prototype.deselectAll,this.destroy=Y.prototype.destroy,this.remove=Y.prototype.remove,this.show=Y.prototype.show,this.hide=Y.prototype.hide,this.init()};function Z(e){var l,a=arguments,c=e;if([].shift.apply(a),!N.success){try{N.full=(O.fn.dropdown.Constructor.VERSION||"").split(" ")[0].split(".")}catch(e){N.full=Y.BootstrapVersion.split(" ")[0].split(".")}N.major=N.full[0],N.success=!0,"4"===N.major&&(V.DIVIDER="dropdown-divider",V.SHOW="show",V.BUTTONCLASS="btn-light",Y.DEFAULTS.style=V.BUTTONCLASS="btn-light",V.POPOVERHEADER="popover-header")}var t=this.each(function(){var e=O(this);if(e.is("select")){var t=e.data("selectpicker"),i="object"==typeof c&&c;if(t){if(i)for(var n in i)i.hasOwnProperty(n)&&(t.options[n]=i[n])}else{var s=e.data();for(var o in s)s.hasOwnProperty(o)&&-1!==O.inArray(o,d)&&delete s[o];var r=O.extend({},Y.DEFAULTS,O.fn.selectpicker.defaults||{},s,i);r.template=O.extend({},Y.DEFAULTS.template,O.fn.selectpicker.defaults?O.fn.selectpicker.defaults.template:{},s.template,i.template),e.data("selectpicker",t=new Y(this,r))}"string"==typeof c&&(l=t[c]instanceof Function?t[c].apply(t,a):t.options[c])}});return void 0!==l?l:t}Y.VERSION="1.13.6",Y.BootstrapVersion=N.major,Y.DEFAULTS={noneSelectedText:"Nothing selected",noneResultsText:"No results matched {0}",countSelectedText:function(e,t){return 1==e?"{0} item selected":"{0} items selected"},maxOptionsText:function(e,t){return[1==e?"Limit reached ({n} item max)":"Limit reached ({n} items max)",1==t?"Group limit reached ({n} item max)":"Group limit reached ({n} items max)"]},selectAllText:"Select All",deselectAllText:"Deselect All",doneButton:!1,doneButtonText:"Close",multipleSeparator:", ",styleBase:"btn",style:V.BUTTONCLASS,size:"auto",title:null,selectedTextFormat:"values",width:!1,container:!1,hideDisabled:!1,showSubtext:!1,showIcon:!0,showContent:!0,dropupAuto:!0,header:!1,liveSearch:!1,liveSearchPlaceholder:null,liveSearchNormalize:!1,liveSearchStyle:"contains",actionsBox:!1,iconBase:"glyphicon",tickIcon:"glyphicon-ok",showTick:!1,template:{caret:'<span class="caret"></span>'},maxOptions:!1,mobile:!1,selectOnTab:!1,dropdownAlignRight:!1,windowPadding:0,virtualScroll:600,display:!1,sanitize:!0,sanitizeFn:null,whiteList:e},"4"===N.major&&(Y.DEFAULTS.style="btn-light",Y.DEFAULTS.iconBase="",Y.DEFAULTS.tickIcon="bs-ok-default"),Y.prototype={constructor:Y,init:function(){var i=this,e=this.$element.attr("id");this.selectId=R++,this.$element[0].classList.add("bs-select-hidden"),this.multiple=this.$element.prop("multiple"),this.autofocus=this.$element.prop("autofocus"),this.$newElement=this.createDropdown(),this.$element.after(this.$newElement).prependTo(this.$newElement),this.$button=this.$newElement.children("button"),this.$menu=this.$newElement.children(B.MENU),this.$menuInner=this.$menu.children(".inner"),this.$searchbox=this.$menu.find("input"),this.$element[0].classList.remove("bs-select-hidden"),!0===this.options.dropdownAlignRight&&this.$menu[0].classList.add(V.MENURIGHT),void 0!==e&&this.$button.attr("data-id",e),this.checkDisabled(),this.clickListener(),this.options.liveSearch&&this.liveSearchListener(),this.render(),this.setStyle(),this.setWidth(),this.options.container?this.selectPosition():this.$element.on("hide"+W,function(){if(i.isVirtual()){var e=i.$menuInner[0],t=e.firstChild.cloneNode(!1);e.replaceChild(t,e.firstChild),e.scrollTop=0}}),this.$menu.data("this",this),this.$newElement.data("this",this),this.options.mobile&&this.mobile(),this.$newElement.on({"hide.bs.dropdown":function(e){i.$menuInner.attr("aria-expanded",!1),i.$element.trigger("hide"+W,e)},"hidden.bs.dropdown":function(e){i.$element.trigger("hidden"+W,e)},"show.bs.dropdown":function(e){i.$menuInner.attr("aria-expanded",!0),i.$element.trigger("show"+W,e)},"shown.bs.dropdown":function(e){i.$element.trigger("shown"+W,e)}}),i.$element[0].hasAttribute("required")&&this.$element.on("invalid",function(){i.$button[0].classList.add("bs-invalid"),i.$element.on("shown"+W+".invalid",function(){i.$element.val(i.$element.val()).off("shown"+W+".invalid")}).on("rendered"+W,function(){this.validity.valid&&i.$button[0].classList.remove("bs-invalid"),i.$element.off("rendered"+W)}),i.$button.on("blur"+W,function(){i.$element.trigger("focus").trigger("blur"),i.$button.off("blur"+W)})}),setTimeout(function(){i.createLi(),i.$element.trigger("loaded"+W)})},createDropdown:function(){var e,t=this.multiple||this.options.showTick?" show-tick":"",i=this.autofocus?" autofocus":"",n="",s="",o="",r="";return this.options.header&&(n='<div class="'+V.POPOVERHEADER+'"><button type="button" class="close" aria-hidden="true">&times;</button>'+this.options.header+"</div>"),this.options.liveSearch&&(s='<div class="bs-searchbox"><input type="text" class="form-control" autocomplete="off"'+(null===this.options.liveSearchPlaceholder?"":' placeholder="'+U(this.options.liveSearchPlaceholder)+'"')+' role="textbox" aria-label="Search"></div>'),this.multiple&&this.options.actionsBox&&(o='<div class="bs-actionsbox"><div class="btn-group btn-group-sm btn-block"><button type="button" class="actions-btn bs-select-all btn '+V.BUTTONCLASS+'">'+this.options.selectAllText+'</button><button type="button" class="actions-btn bs-deselect-all btn '+V.BUTTONCLASS+'">'+this.options.deselectAllText+"</button></div></div>"),this.multiple&&this.options.doneButton&&(r='<div class="bs-donebutton"><div class="btn-group btn-block"><button type="button" class="btn btn-sm '+V.BUTTONCLASS+'">'+this.options.doneButtonText+"</button></div></div>"),e='<div class="dropdown bootstrap-select'+t+'"><button type="button" class="'+this.options.styleBase+' dropdown-toggle" '+("static"===this.options.display?'data-display="static"':"")+'data-toggle="dropdown"'+i+' role="button"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner"></div></div> </div>'+("4"===N.major?"":'<span class="bs-caret">'+this.options.template.caret+"</span>")+'</button><div class="'+V.MENU+" "+("4"===N.major?"":V.SHOW)+'" role="combobox">'+n+s+o+'<div class="inner '+V.SHOW+'" role="listbox" aria-expanded="false" tabindex="-1"><ul class="'+V.MENU+" inner "+("4"===N.major?V.SHOW:"")+'"></ul></div>'+r+"</div></div>",O(e)},setPositionData:function(){this.selectpicker.view.canHighlight=[];for(var e=0;e<this.selectpicker.current.data.length;e++){var t=this.selectpicker.current.data[e],i=!0;"divider"===t.type?(i=!1,t.height=this.sizeInfo.dividerHeight):"optgroup-label"===t.type?(i=!1,t.height=this.sizeInfo.dropdownHeaderHeight):t.height=this.sizeInfo.liHeight,t.disabled&&(i=!1),this.selectpicker.view.canHighlight.push(i),t.position=(0===e?0:this.selectpicker.current.data[e-1].position)+t.height}},isVirtual:function(){return!1!==this.options.virtualScroll&&this.selectpicker.main.elements.length>=this.options.virtualScroll||!0===this.options.virtualScroll},createView:function(L,e){e=e||0;var A=this;this.selectpicker.current=L?this.selectpicker.search:this.selectpicker.main;var H,D,N=[];function i(e,t){var i,n,s,o,r,l,a,c,d,h,p=A.selectpicker.current.elements.length,u=[],f=!0,m=A.isVirtual();A.selectpicker.view.scrollTop=e,!0===m&&A.sizeInfo.hasScrollBar&&A.$menu[0].offsetWidth>A.sizeInfo.totalMenuWidth&&(A.sizeInfo.menuWidth=A.$menu[0].offsetWidth,A.sizeInfo.totalMenuWidth=A.sizeInfo.menuWidth+A.sizeInfo.scrollBarWidth,A.$menu.css("min-width",A.sizeInfo.menuWidth)),i=Math.ceil(A.sizeInfo.menuInnerHeight/A.sizeInfo.liHeight*1.5),n=Math.round(p/i)||1;for(var v=0;v<n;v++){var g=(v+1)*i;if(v===n-1&&(g=p),u[v]=[v*i+(v?1:0),g],!p)break;void 0===r&&e<=A.selectpicker.current.data[g-1].position-A.sizeInfo.menuInnerHeight&&(r=v)}if(void 0===r&&(r=0),l=[A.selectpicker.view.position0,A.selectpicker.view.position1],s=Math.max(0,r-1),o=Math.min(n-1,r+1),A.selectpicker.view.position0=Math.max(0,u[s][0])||0,A.selectpicker.view.position1=Math.min(p,u[o][1])||0,a=l[0]!==A.selectpicker.view.position0||l[1]!==A.selectpicker.view.position1,void 0!==A.activeIndex&&(D=A.selectpicker.current.elements[A.selectpicker.current.map.newIndex[A.prevActiveIndex]],N=A.selectpicker.current.elements[A.selectpicker.current.map.newIndex[A.activeIndex]],H=A.selectpicker.current.elements[A.selectpicker.current.map.newIndex[A.selectedIndex]],t&&(A.activeIndex!==A.selectedIndex&&N&&N.length&&(N.classList.remove("active"),N.firstChild&&N.firstChild.classList.remove("active")),A.activeIndex=void 0),A.activeIndex&&A.activeIndex!==A.selectedIndex&&H&&H.length&&(H.classList.remove("active"),H.firstChild&&H.firstChild.classList.remove("active"))),void 0!==A.prevActiveIndex&&A.prevActiveIndex!==A.activeIndex&&A.prevActiveIndex!==A.selectedIndex&&D&&D.length&&(D.classList.remove("active"),D.firstChild&&D.firstChild.classList.remove("active")),(t||a)&&(c=A.selectpicker.view.visibleElements?A.selectpicker.view.visibleElements.slice():[],A.selectpicker.view.visibleElements=A.selectpicker.current.elements.slice(A.selectpicker.view.position0,A.selectpicker.view.position1),A.setOptionStatus(),(L||!1===m&&t)&&(d=c,h=A.selectpicker.view.visibleElements,f=!(d.length===h.length&&d.every(function(e,t){return e===h[t]}))),(t||!0===m)&&f)){var b,w,x=A.$menuInner[0],I=document.createDocumentFragment(),k=x.firstChild.cloneNode(!1),$=!0===m?A.selectpicker.view.visibleElements:A.selectpicker.current.elements,y=[];x.replaceChild(k,x.firstChild);v=0;for(var S=$.length;v<S;v++){var E,C,z=$[v];A.options.sanitize&&(E=z.lastChild)&&(C=A.selectpicker.current.data[v+A.selectpicker.view.position0].data)&&C.content&&!C.sanitized&&(y.push(E),C.sanitized=!0),I.appendChild(z)}A.options.sanitize&&y.length&&P(y,A.options.whiteList,A.options.sanitizeFn),!0===m&&(b=0===A.selectpicker.view.position0?0:A.selectpicker.current.data[A.selectpicker.view.position0-1].position,w=A.selectpicker.view.position1>p-1?0:A.selectpicker.current.data[p-1].position-A.selectpicker.current.data[A.selectpicker.view.position1-1].position,x.firstChild.style.marginTop=b+"px",x.firstChild.style.marginBottom=w+"px"),x.firstChild.appendChild(I)}if(A.prevActiveIndex=A.activeIndex,A.options.liveSearch){if(L&&t){var O,T=0;A.selectpicker.view.canHighlight[T]||(T=1+A.selectpicker.view.canHighlight.slice(1).indexOf(!0)),O=A.selectpicker.view.visibleElements[T],A.selectpicker.view.currentActive&&(A.selectpicker.view.currentActive.classList.remove("active"),A.selectpicker.view.currentActive.firstChild&&A.selectpicker.view.currentActive.firstChild.classList.remove("active")),O&&(O.classList.add("active"),O.firstChild&&O.firstChild.classList.add("active")),A.activeIndex=A.selectpicker.current.map.originalIndex[T]}}else A.$menuInner.trigger("focus")}this.setPositionData(),i(e,!0),this.$menuInner.off("scroll.createView").on("scroll.createView",function(e,t){A.noScroll||i(this.scrollTop,t),A.noScroll=!1}),O(window).off("resize"+W+"."+this.selectId+".createView").on("resize"+W+"."+this.selectId+".createView",function(){A.$newElement.hasClass(V.SHOW)&&i(A.$menuInner[0].scrollTop)})},setPlaceholder:function(){var e=!1;if(this.options.title&&!this.multiple){this.selectpicker.view.titleOption||(this.selectpicker.view.titleOption=document.createElement("option")),e=!0;var t=this.$element[0],i=!1,n=!this.selectpicker.view.titleOption.parentNode;if(n)this.selectpicker.view.titleOption.className="bs-title-option",this.selectpicker.view.titleOption.value="",i=void 0===O(t.options[t.selectedIndex]).attr("selected")&&void 0===this.$element.data("selected");(n||0!==this.selectpicker.view.titleOption.index)&&t.insertBefore(this.selectpicker.view.titleOption,t.firstChild),i&&(t.selectedIndex=0)}return e},createLi:function(){var e,t,i=this,n=i.options.iconBase,s=':not([hidden]):not([data-hidden="true"])',o=[],r=0,l=[],a=0,c=0,d=-1;this.options.hideDisabled&&(s+=":not(:disabled)"),(i.options.showTick||i.multiple)&&((e=j.span.cloneNode(!1)).className=n+" "+i.options.tickIcon+" check-mark",j.a.appendChild(e)),this.setPlaceholder()&&d--;for(var h=this.$element[0].options,p=0,u=h.length;p<u;p++){var f=h[p];if(d++,!f.classList.contains("bs-title-option")){var m,v,g,b,w={content:f.getAttribute("data-content"),tokens:f.getAttribute("data-tokens"),subtext:f.getAttribute("data-subtext"),icon:f.getAttribute("data-icon"),hidden:"true"===f.getAttribute("data-hidden"),divider:"true"===f.getAttribute("data-divider")},x=f.className||"",I=f.style.cssText,k=I?U(I):"",$=w.content,y=f.textContent,S=f.parentNode,E=f.nextElementSibling,C=f.previousElementSibling,z="OPTGROUP"===S.tagName,O=z&&S.disabled,T=f.disabled||O,L=C&&"OPTGROUP"===C.tagName,A={hidden:"true"===S.getAttribute("data-hidden")};if(!0===w.hidden||f.hidden||z&&(!0===A.hidden||S.hidden)||i.options.hideDisabled&&(T||O))m=f.prevHiddenIndex,E&&(E.prevHiddenIndex=void 0!==m?m:p),d--;else{if(E&&void 0!==E.prevHiddenIndex&&(E.prevHiddenIndex=void 0),z&&!0!==w.divider){var H=" "+S.className||"",D=f.previousElementSibling;if(void 0!==(m=f.prevHiddenIndex)&&(D=h[m].previousElementSibling),!D){a+=1,A.subtext=S.getAttribute("data-subtext"),A.icon=S.getAttribute("data-icon");var N=S.label,P=U(N),R=A.subtext,W=A.icon;0!==p&&0<o.length&&(d++,o.push(_(!1,V.DIVIDER,a+"div")),l.push({type:"divider",optID:a})),d++,g=K({labelEscaped:P,labelSubtext:R,labelIcon:W,iconBase:n}),o.push(_(g,"dropdown-header"+H,a)),l.push({content:P,subtext:R,type:"optgroup-label",optID:a}),c=d-1}v=q({text:y,optionContent:$,optionSubtext:w.subtext,optionIcon:w.icon,iconBase:n}),o.push(_(G(v,"opt "+x+H,k),"",a)),l.push({content:$||y,subtext:w.subtext,tokens:w.tokens,type:"option",optID:a,headerIndex:c,lastIndex:c+S.querySelectorAll("option"+s).length,originalIndex:p,data:w})}else if(!0===w.divider)o.push(_(!1,V.DIVIDER)),l.push({type:"divider",originalIndex:p,data:w});else{if(i.options.hideDisabled)if(L)C.querySelectorAll("option:disabled").length===C.children.length&&(L=!1);else if(void 0!==(m=f.prevHiddenIndex))if((b=h[m].previousElementSibling)&&"OPTGROUP"===b.tagName&&!b.disabled)b.querySelectorAll("option:disabled").length<b.children.length&&(L=!0);L&&l.length&&"divider"!==l[l.length-1].type&&(d++,o.push(_(!1,V.DIVIDER,a+"div")),l.push({type:"divider",optID:a})),v=q({text:y,optionContent:$,optionSubtext:w.subtext,optionIcon:w.icon,iconBase:n}),o.push(_(G(v,x,k))),l.push({content:$||y,subtext:w.subtext,tokens:w.tokens,type:"option",originalIndex:p,data:w})}i.selectpicker.main.map.newIndex[p]=d,i.selectpicker.main.map.originalIndex[d]=p;var B=l[l.length-1];B.disabled=T;var M=0;B.content&&(M+=B.content.length),B.subtext&&(M+=B.subtext.length),w.icon&&(M+=1),r<M&&(r=M,t=o[o.length-1])}}}this.selectpicker.main.elements=o,this.selectpicker.main.data=l,this.selectpicker.current=this.selectpicker.main,this.selectpicker.view.widestOption=t},findLis:function(){return this.$menuInner.find(".inner > li")},render:function(){this.setPlaceholder();var e,t,i=this,n=this.$element[0].selectedOptions,s=n.length,o=this.$button.find(".filter-option-inner-inner")[0],r=document.createTextNode(this.options.multipleSeparator),l=j.fragment.cloneNode(!1),a=!1;if(this.togglePlaceholder(),this.tabIndex(),"static"===this.options.selectedTextFormat)l=q({text:this.options.title},!0);else if((e=this.multiple&&-1!==this.options.selectedTextFormat.indexOf("count")&&1<s)&&(e=1<(t=this.options.selectedTextFormat.split(">")).length&&s>t[1]||1===t.length&&2<=s),!1===e){for(var c=0;c<s&&c<50;c++){var d=n[c],h={},p={content:d.getAttribute("data-content"),subtext:d.getAttribute("data-subtext"),icon:d.getAttribute("data-icon")};this.multiple&&0<c&&l.appendChild(r.cloneNode(!1)),d.title?h.text=d.title:p.content&&i.options.showContent?(h.optionContent=p.content.toString(),a=!0):(i.options.showIcon&&(h.optionIcon=p.icon,h.iconBase=this.options.iconBase),i.options.showSubtext&&!i.multiple&&p.subtext&&(h.optionSubtext=" "+p.subtext),h.text=d.textContent.trim()),l.appendChild(q(h,!0))}49<s&&l.appendChild(document.createTextNode("..."))}else{var u=':not([hidden]):not([data-hidden="true"]):not([data-divider="true"])';this.options.hideDisabled&&(u+=":not(:disabled)");var f=this.$element[0].querySelectorAll("select > option"+u+", optgroup"+u+" option"+u).length,m="function"==typeof this.options.countSelectedText?this.options.countSelectedText(s,f):this.options.countSelectedText;l=q({text:m.replace("{0}",s.toString()).replace("{1}",f.toString())},!0)}null==this.options.title&&(this.options.title=this.$element.attr("title")),l.childNodes.length||(l=q({text:void 0!==this.options.title?this.options.title:this.options.noneSelectedText},!0)),this.$button[0].title=l.textContent.replace(/<[^>]*>?/g,"").trim(),this.options.sanitize&&a&&P([l],i.options.whiteList,i.options.sanitizeFn),o.innerHTML="",o.appendChild(l),this.$element.trigger("rendered"+W)},setStyle:function(e,t){var i=this.$button[0];this.$element.attr("class")&&this.$newElement.addClass(this.$element.attr("class").replace(/selectpicker|mobile-device|bs-select-hidden|validate\[.*\]/gi,""));var n=e||this.options.style;"add"==t?i.classList.add(n):"remove"==t?i.classList.remove(n):(i.classList.remove(this.options.style),i.classList.add(n))},liHeight:function(e){if(e||!1!==this.options.size&&!this.sizeInfo){this.sizeInfo||(this.sizeInfo={});var t=document.createElement("div"),i=document.createElement("div"),n=document.createElement("div"),s=document.createElement("ul"),o=document.createElement("li"),r=document.createElement("li"),l=document.createElement("li"),a=document.createElement("a"),c=document.createElement("span"),d=this.options.header&&0<this.$menu.find("."+V.POPOVERHEADER).length?this.$menu.find("."+V.POPOVERHEADER)[0].cloneNode(!0):null,h=this.options.liveSearch?document.createElement("div"):null,p=this.options.actionsBox&&this.multiple&&0<this.$menu.find(".bs-actionsbox").length?this.$menu.find(".bs-actionsbox")[0].cloneNode(!0):null,u=this.options.doneButton&&this.multiple&&0<this.$menu.find(".bs-donebutton").length?this.$menu.find(".bs-donebutton")[0].cloneNode(!0):null,f=this.$element.find("option")[0];if(this.sizeInfo.selectWidth=this.$newElement[0].offsetWidth,c.className="text",a.className="dropdown-item "+(f?f.className:""),t.className=this.$menu[0].parentNode.className+" "+V.SHOW,t.style.width=this.sizeInfo.selectWidth+"px","auto"===this.options.width&&(i.style.minWidth=0),i.className=V.MENU+" "+V.SHOW,n.className="inner "+V.SHOW,s.className=V.MENU+" inner "+("4"===N.major?V.SHOW:""),o.className=V.DIVIDER,r.className="dropdown-header",c.appendChild(document.createTextNode("\u200b")),a.appendChild(c),l.appendChild(a),r.appendChild(c.cloneNode(!0)),this.selectpicker.view.widestOption&&s.appendChild(this.selectpicker.view.widestOption.cloneNode(!0)),s.appendChild(l),s.appendChild(o),s.appendChild(r),d&&i.appendChild(d),h){var m=document.createElement("input");h.className="bs-searchbox",m.className="form-control",h.appendChild(m),i.appendChild(h)}p&&i.appendChild(p),n.appendChild(s),i.appendChild(n),u&&i.appendChild(u),t.appendChild(i),document.body.appendChild(t);var v,g=a.offsetHeight,b=r?r.offsetHeight:0,w=d?d.offsetHeight:0,x=h?h.offsetHeight:0,I=p?p.offsetHeight:0,k=u?u.offsetHeight:0,$=O(o).outerHeight(!0),y=!!window.getComputedStyle&&window.getComputedStyle(i),S=i.offsetWidth,E=y?null:O(i),C={vert:T(y?y.paddingTop:E.css("paddingTop"))+T(y?y.paddingBottom:E.css("paddingBottom"))+T(y?y.borderTopWidth:E.css("borderTopWidth"))+T(y?y.borderBottomWidth:E.css("borderBottomWidth")),horiz:T(y?y.paddingLeft:E.css("paddingLeft"))+T(y?y.paddingRight:E.css("paddingRight"))+T(y?y.borderLeftWidth:E.css("borderLeftWidth"))+T(y?y.borderRightWidth:E.css("borderRightWidth"))},z={vert:C.vert+T(y?y.marginTop:E.css("marginTop"))+T(y?y.marginBottom:E.css("marginBottom"))+2,horiz:C.horiz+T(y?y.marginLeft:E.css("marginLeft"))+T(y?y.marginRight:E.css("marginRight"))+2};n.style.overflowY="scroll",v=i.offsetWidth-S,document.body.removeChild(t),this.sizeInfo.liHeight=g,this.sizeInfo.dropdownHeaderHeight=b,this.sizeInfo.headerHeight=w,this.sizeInfo.searchHeight=x,this.sizeInfo.actionsHeight=I,this.sizeInfo.doneButtonHeight=k,this.sizeInfo.dividerHeight=$,this.sizeInfo.menuPadding=C,this.sizeInfo.menuExtras=z,this.sizeInfo.menuWidth=S,this.sizeInfo.totalMenuWidth=this.sizeInfo.menuWidth,this.sizeInfo.scrollBarWidth=v,this.sizeInfo.selectHeight=this.$newElement[0].offsetHeight,this.setPositionData()}},getSelectPosition:function(){var e,t=O(window),i=this.$newElement.offset(),n=O(this.options.container);this.options.container&&n.length&&!n.is("body")?((e=n.offset()).top+=parseInt(n.css("borderTopWidth")),e.left+=parseInt(n.css("borderLeftWidth"))):e={top:0,left:0};var s=this.options.windowPadding;this.sizeInfo.selectOffsetTop=i.top-e.top-t.scrollTop(),this.sizeInfo.selectOffsetBot=t.height()-this.sizeInfo.selectOffsetTop-this.sizeInfo.selectHeight-e.top-s[2],this.sizeInfo.selectOffsetLeft=i.left-e.left-t.scrollLeft(),this.sizeInfo.selectOffsetRight=t.width()-this.sizeInfo.selectOffsetLeft-this.sizeInfo.selectWidth-e.left-s[1],this.sizeInfo.selectOffsetTop-=s[0],this.sizeInfo.selectOffsetLeft-=s[3]},setMenuSize:function(e){this.getSelectPosition();var t,i,n,s,o,r,l,a=this.sizeInfo.selectWidth,c=this.sizeInfo.liHeight,d=this.sizeInfo.headerHeight,h=this.sizeInfo.searchHeight,p=this.sizeInfo.actionsHeight,u=this.sizeInfo.doneButtonHeight,f=this.sizeInfo.dividerHeight,m=this.sizeInfo.menuPadding,v=0;if(this.options.dropupAuto&&(l=c*this.selectpicker.current.elements.length+m.vert,this.$newElement.toggleClass(V.DROPUP,this.sizeInfo.selectOffsetTop-this.sizeInfo.selectOffsetBot>this.sizeInfo.menuExtras.vert&&l+this.sizeInfo.menuExtras.vert+50>this.sizeInfo.selectOffsetBot)),"auto"===this.options.size)s=3<this.selectpicker.current.elements.length?3*this.sizeInfo.liHeight+this.sizeInfo.menuExtras.vert-2:0,i=this.sizeInfo.selectOffsetBot-this.sizeInfo.menuExtras.vert,n=s+d+h+p+u,r=Math.max(s-m.vert,0),this.$newElement.hasClass(V.DROPUP)&&(i=this.sizeInfo.selectOffsetTop-this.sizeInfo.menuExtras.vert),t=(o=i)-d-h-p-u-m.vert;else if(this.options.size&&"auto"!=this.options.size&&this.selectpicker.current.elements.length>this.options.size){for(var g=0;g<this.options.size;g++)"divider"===this.selectpicker.current.data[g].type&&v++;t=(i=c*this.options.size+v*f+m.vert)-m.vert,o=i+d+h+p+u,n=r=""}"auto"===this.options.dropdownAlignRight&&this.$menu.toggleClass(V.MENURIGHT,this.sizeInfo.selectOffsetLeft>this.sizeInfo.selectOffsetRight&&this.sizeInfo.selectOffsetRight<this.sizeInfo.totalMenuWidth-a),this.$menu.css({"max-height":o+"px",overflow:"hidden","min-height":n+"px"}),this.$menuInner.css({"max-height":t+"px","overflow-y":"auto","min-height":r+"px"}),this.sizeInfo.menuInnerHeight=Math.max(t,1),this.selectpicker.current.data.length&&this.selectpicker.current.data[this.selectpicker.current.data.length-1].position>this.sizeInfo.menuInnerHeight&&(this.sizeInfo.hasScrollBar=!0,this.sizeInfo.totalMenuWidth=this.sizeInfo.menuWidth+this.sizeInfo.scrollBarWidth,this.$menu.css("min-width",this.sizeInfo.totalMenuWidth)),this.dropdown&&this.dropdown._popper&&this.dropdown._popper.update()},setSize:function(e){if(this.liHeight(e),this.options.header&&this.$menu.css("padding-top",0),!1!==this.options.size){var t,i=this,n=O(window),s=0;this.setMenuSize(),this.options.liveSearch&&this.$searchbox.off("input.setMenuSize propertychange.setMenuSize").on("input.setMenuSize propertychange.setMenuSize",function(){return i.setMenuSize()}),"auto"===this.options.size?n.off("resize"+W+"."+this.selectId+".setMenuSize scroll"+W+"."+this.selectId+".setMenuSize").on("resize"+W+"."+this.selectId+".setMenuSize scroll"+W+"."+this.selectId+".setMenuSize",function(){return i.setMenuSize()}):this.options.size&&"auto"!=this.options.size&&this.selectpicker.current.elements.length>this.options.size&&n.off("resize"+W+"."+this.selectId+".setMenuSize scroll"+W+"."+this.selectId+".setMenuSize"),e?s=this.$menuInner[0].scrollTop:i.multiple||"number"==typeof(t=i.selectpicker.main.map.newIndex[i.$element[0].selectedIndex])&&!1!==i.options.size&&(s=(s=i.sizeInfo.liHeight*t)-i.sizeInfo.menuInnerHeight/2+i.sizeInfo.liHeight/2),i.createView(!1,s)}},setWidth:function(){var i=this;"auto"===this.options.width?requestAnimationFrame(function(){i.$menu.css("min-width","0"),i.liHeight(),i.setMenuSize();var e=i.$newElement.clone().appendTo("body"),t=e.css("width","auto").children("button").outerWidth();e.remove(),i.sizeInfo.selectWidth=Math.max(i.sizeInfo.totalMenuWidth,t),i.$newElement.css("width",i.sizeInfo.selectWidth+"px")}):"fit"===this.options.width?(this.$menu.css("min-width",""),this.$newElement.css("width","").addClass("fit-width")):this.options.width?(this.$menu.css("min-width",""),this.$newElement.css("width",this.options.width)):(this.$menu.css("min-width",""),this.$newElement.css("width","")),this.$newElement.hasClass("fit-width")&&"fit"!==this.options.width&&this.$newElement[0].classList.remove("fit-width")},selectPosition:function(){this.$bsContainer=O('<div class="bs-container" />');var n,s,o,r=this,l=O(this.options.container),e=function(e){var t={},i=r.options.display||!!O.fn.dropdown.Constructor.Default&&O.fn.dropdown.Constructor.Default.display;r.$bsContainer.addClass(e.attr("class").replace(/form-control|fit-width/gi,"")).toggleClass(V.DROPUP,e.hasClass(V.DROPUP)),n=e.offset(),l.is("body")?s={top:0,left:0}:((s=l.offset()).top+=parseInt(l.css("borderTopWidth"))-l.scrollTop(),s.left+=parseInt(l.css("borderLeftWidth"))-l.scrollLeft()),o=e.hasClass(V.DROPUP)?0:e[0].offsetHeight,(N.major<4||"static"===i)&&(t.top=n.top-s.top+o,t.left=n.left-s.left),t.width=e[0].offsetWidth,r.$bsContainer.css(t)};this.$button.on("click.bs.dropdown.data-api",function(){r.isDisabled()||(e(r.$newElement),r.$bsContainer.appendTo(r.options.container).toggleClass(V.SHOW,!r.$button.hasClass(V.SHOW)).append(r.$menu))}),O(window).off("resize"+W+"."+this.selectId+" scroll"+W+"."+this.selectId).on("resize"+W+"."+this.selectId+" scroll"+W+"."+this.selectId,function(){r.$newElement.hasClass(V.SHOW)&&e(r.$newElement)}),this.$element.on("hide"+W,function(){r.$menu.data("height",r.$menu.height()),r.$bsContainer.detach()})},setOptionStatus:function(){var e=this,t=this.$element[0].options;if(e.noScroll=!1,e.selectpicker.view.visibleElements&&e.selectpicker.view.visibleElements.length)for(var i=0;i<e.selectpicker.view.visibleElements.length;i++){var n=e.selectpicker.current.map.originalIndex[i+e.selectpicker.view.position0],s=t[n];if(s){var o=this.selectpicker.main.map.newIndex[n],r=this.selectpicker.main.elements[o];e.setDisabled(n,s.disabled||"OPTGROUP"===s.parentNode.tagName&&s.parentNode.disabled,o,r),e.setSelected(n,s.selected,o,r)}}},setSelected:function(e,t,i,n){var s,o,r,l=void 0!==this.activeIndex,a=this.activeIndex===e||t&&!this.multiple&&!l;i||(i=this.selectpicker.main.map.newIndex[e]),n||(n=this.selectpicker.main.elements[i]),r=n.firstChild,t&&(this.selectedIndex=e),n.classList.toggle("selected",t),n.classList.toggle("active",a),a&&(this.selectpicker.view.currentActive=n,this.activeIndex=e),r&&(r.classList.toggle("selected",t),r.classList.toggle("active",a),r.setAttribute("aria-selected",t)),a||!l&&t&&void 0!==this.prevActiveIndex&&(s=this.selectpicker.main.map.newIndex[this.prevActiveIndex],(o=this.selectpicker.main.elements[s]).classList.remove("active"),o.firstChild&&o.firstChild.classList.remove("active"))},setDisabled:function(e,t,i,n){var s;i||(i=this.selectpicker.main.map.newIndex[e]),n||(n=this.selectpicker.main.elements[i]),s=n.firstChild,n.classList.toggle(V.DISABLED,t),s&&("4"===N.major&&s.classList.toggle(V.DISABLED,t),s.setAttribute("aria-disabled",t),t?s.setAttribute("tabindex",-1):s.setAttribute("tabindex",0))},isDisabled:function(){return this.$element[0].disabled},checkDisabled:function(){var e=this;this.isDisabled()?(this.$newElement[0].classList.add(V.DISABLED),this.$button.addClass(V.DISABLED).attr("tabindex",-1).attr("aria-disabled",!0)):(this.$button[0].classList.contains(V.DISABLED)&&(this.$newElement[0].classList.remove(V.DISABLED),this.$button.removeClass(V.DISABLED).attr("aria-disabled",!1)),-1!=this.$button.attr("tabindex")||this.$element.data("tabindex")||this.$button.removeAttr("tabindex")),this.$button.on("click",function(){return!e.isDisabled()})},togglePlaceholder:function(){var e=this.$element[0],t=e.selectedIndex,i=-1===t;i||e.options[t].value||(i=!0),this.$button.toggleClass("bs-placeholder",i)},tabIndex:function(){this.$element.data("tabindex")!==this.$element.attr("tabindex")&&-98!==this.$element.attr("tabindex")&&"-98"!==this.$element.attr("tabindex")&&(this.$element.data("tabindex",this.$element.attr("tabindex")),this.$button.attr("tabindex",this.$element.data("tabindex"))),this.$element.attr("tabindex",-98)},clickListener:function(){var y=this,t=O(document);function e(){y.options.liveSearch?y.$searchbox.trigger("focus"):y.$menuInner.trigger("focus")}function i(){y.dropdown&&y.dropdown._popper&&y.dropdown._popper.state.isCreated?e():requestAnimationFrame(i)}t.data("spaceSelect",!1),this.$button.on("keyup",function(e){/(32)/.test(e.keyCode.toString(10))&&t.data("spaceSelect")&&(e.preventDefault(),t.data("spaceSelect",!1))}),this.$newElement.on("show.bs.dropdown",function(){3<N.major&&!y.dropdown&&(y.dropdown=y.$button.data("bs.dropdown"),y.dropdown._menu=y.$menu[0])}),this.$button.on("click.bs.dropdown.data-api",function(){y.$newElement.hasClass(V.SHOW)||y.setSize()}),this.$element.on("shown"+W,function(){y.$menuInner[0].scrollTop!==y.selectpicker.view.scrollTop&&(y.$menuInner[0].scrollTop=y.selectpicker.view.scrollTop),3<N.major?requestAnimationFrame(i):e()}),this.$menuInner.on("click","li a",function(e,t){var i=O(this),n=y.isVirtual()?y.selectpicker.view.position0:0,s=y.selectpicker.current.map.originalIndex[i.parent().index()+n],o=S(y.$element[0]),r=y.$element.prop("selectedIndex"),l=!0;if(y.multiple&&1!==y.options.maxOptions&&e.stopPropagation(),e.preventDefault(),!y.isDisabled()&&!i.parent().hasClass(V.DISABLED)){var a=y.$element.find("option"),c=a.eq(s),d=c.prop("selected"),h=c.parent("optgroup"),p=h.find("option"),u=y.options.maxOptions,f=h.data("maxOptions")||!1;if(s===y.activeIndex&&(t=!0),t||(y.prevActiveIndex=y.activeIndex,y.activeIndex=void 0),y.multiple){if(c.prop("selected",!d),y.setSelected(s,!d),i.trigger("blur"),!1!==u||!1!==f){var m=u<a.filter(":selected").length,v=f<h.find("option:selected").length;if(u&&m||f&&v)if(u&&1==u){a.prop("selected",!1),c.prop("selected",!0);for(var g=0;g<a.length;g++)y.setSelected(g,!1);y.setSelected(s,!0)}else if(f&&1==f){h.find("option:selected").prop("selected",!1),c.prop("selected",!0);for(g=0;g<p.length;g++){var b=p[g];y.setSelected(a.index(b),!1)}y.setSelected(s,!0)}else{var w="string"==typeof y.options.maxOptionsText?[y.options.maxOptionsText,y.options.maxOptionsText]:y.options.maxOptionsText,x="function"==typeof w?w(u,f):w,I=x[0].replace("{n}",u),k=x[1].replace("{n}",f),$=O('<div class="notify"></div>');x[2]&&(I=I.replace("{var}",x[2][1<u?0:1]),k=k.replace("{var}",x[2][1<f?0:1])),c.prop("selected",!1),y.$menu.append($),u&&m&&($.append(O("<div>"+I+"</div>")),l=!1,y.$element.trigger("maxReached"+W)),f&&v&&($.append(O("<div>"+k+"</div>")),l=!1,y.$element.trigger("maxReachedGrp"+W)),setTimeout(function(){y.setSelected(s,!1)},10),$.delay(750).fadeOut(300,function(){O(this).remove()})}}}else a.prop("selected",!1),c.prop("selected",!0),y.setSelected(s,!0);!y.multiple||y.multiple&&1===y.options.maxOptions?y.$button.trigger("focus"):y.options.liveSearch&&y.$searchbox.trigger("focus"),l&&(o!=S(y.$element[0])&&y.multiple||r!=y.$element.prop("selectedIndex")&&!y.multiple)&&(E=[s,c.prop("selected"),o],y.$element.triggerNative("change"))}}),this.$menu.on("click","li."+V.DISABLED+" a, ."+V.POPOVERHEADER+", ."+V.POPOVERHEADER+" :not(.close)",function(e){e.currentTarget==this&&(e.preventDefault(),e.stopPropagation(),y.options.liveSearch&&!O(e.target).hasClass("close")?y.$searchbox.trigger("focus"):y.$button.trigger("focus"))}),this.$menuInner.on("click",".divider, .dropdown-header",function(e){e.preventDefault(),e.stopPropagation(),y.options.liveSearch?y.$searchbox.trigger("focus"):y.$button.trigger("focus")}),this.$menu.on("click","."+V.POPOVERHEADER+" .close",function(){y.$button.trigger("click")}),this.$searchbox.on("click",function(e){e.stopPropagation()}),this.$menu.on("click",".actions-btn",function(e){y.options.liveSearch?y.$searchbox.trigger("focus"):y.$button.trigger("focus"),e.preventDefault(),e.stopPropagation(),O(this).hasClass("bs-select-all")?y.selectAll():y.deselectAll()}),this.$element.on({change:function(){y.render(),y.$element.trigger("changed"+W,E),E=null},focus:function(){y.options.mobile||y.$button.trigger("focus")}})},liveSearchListener:function(){var u=this,f=document.createElement("li");this.$button.on("click.bs.dropdown.data-api",function(){u.$searchbox.val()&&u.$searchbox.val("")}),this.$searchbox.on("click.bs.dropdown.data-api focus.bs.dropdown.data-api touchend.bs.dropdown.data-api",function(e){e.stopPropagation()}),this.$searchbox.on("input propertychange",function(){var e=u.$searchbox.val();if(u.selectpicker.search.map.newIndex={},u.selectpicker.search.map.originalIndex={},u.selectpicker.search.elements=[],u.selectpicker.search.data=[],e){var t=[],i=e.toUpperCase(),n={},s=[],o=u._searchStyle(),r=u.options.liveSearchNormalize;r&&(i=g(i)),u._$lisSelected=u.$menuInner.find(".selected");for(var l=0;l<u.selectpicker.main.data.length;l++){var a=u.selectpicker.main.data[l];n[l]||(n[l]=$(a,i,o,r)),n[l]&&void 0!==a.headerIndex&&-1===s.indexOf(a.headerIndex)&&(0<a.headerIndex&&(n[a.headerIndex-1]=!0,s.push(a.headerIndex-1)),n[a.headerIndex]=!0,s.push(a.headerIndex),n[a.lastIndex+1]=!0),n[l]&&"optgroup-label"!==a.type&&s.push(l)}l=0;for(var c=s.length;l<c;l++){var d=s[l],h=s[l-1],p=(a=u.selectpicker.main.data[d],u.selectpicker.main.data[h]);("divider"!==a.type||"divider"===a.type&&p&&"divider"!==p.type&&c-1!==l)&&(u.selectpicker.search.data.push(a),t.push(u.selectpicker.main.elements[d]),a.hasOwnProperty("originalIndex")&&(u.selectpicker.search.map.newIndex[a.originalIndex]=t.length-1,u.selectpicker.search.map.originalIndex[t.length-1]=a.originalIndex))}u.activeIndex=void 0,u.noScroll=!0,u.$menuInner.scrollTop(0),u.selectpicker.search.elements=t,u.createView(!0),t.length||(f.className="no-results",f.innerHTML=u.options.noneResultsText.replace("{0}",'"'+U(e)+'"'),u.$menuInner[0].firstChild.appendChild(f))}else u.$menuInner.scrollTop(0),u.createView(!1)})},_searchStyle:function(){return this.options.liveSearchStyle||"contains"},val:function(e){return void 0!==e?(this.$element.val(e).triggerNative("change"),this.$element):this.$element.val()},changeAll:function(e){if(this.multiple){void 0===e&&(e=!0);var t=this.$element[0],i=t.options,n=0,s=0,o=S(t);t.classList.add("bs-select-hidden");for(var r=0,l=this.selectpicker.current.elements.length;r<l;r++){var a=this.selectpicker.current.data[r],c=i[this.selectpicker.current.map.originalIndex[r]];c&&!c.disabled&&"divider"!==a.type&&(c.selected&&n++,(c.selected=e)&&s++)}t.classList.remove("bs-select-hidden"),n!==s&&(this.setOptionStatus(),this.togglePlaceholder(),E=[null,null,o],this.$element.triggerNative("change"))}},selectAll:function(){return this.changeAll(!0)},deselectAll:function(){return this.changeAll(!1)},toggle:function(e){(e=e||window.event)&&e.stopPropagation(),this.$button.trigger("click.bs.dropdown.data-api")},keydown:function(e){var t,i,n,s,o,r=O(this),l=r.hasClass("dropdown-toggle"),a=(l?r.closest(".dropdown"):r.closest(B.MENU)).data("this"),c=a.findLis(),d=!1,h=e.which===A&&!l&&!a.options.selectOnTab,p=M.test(e.which)||h,u=a.$menuInner[0].scrollTop,f=a.isVirtual(),m=!0===f?a.selectpicker.view.position0:0;if(!(i=a.$newElement.hasClass(V.SHOW))&&(p||48<=e.which&&e.which<=57||96<=e.which&&e.which<=105||65<=e.which&&e.which<=90)&&(a.$button.trigger("click.bs.dropdown.data-api"),a.options.liveSearch))a.$searchbox.trigger("focus");else{if(e.which===C&&i&&(e.preventDefault(),a.$button.trigger("click.bs.dropdown.data-api").trigger("focus")),p){if(!c.length)return;void 0===(t=!0===f?c.index(c.filter(".active")):a.selectpicker.current.map.newIndex[a.activeIndex])&&(t=-1),-1!==t&&((n=a.selectpicker.current.elements[t+m]).classList.remove("active"),n.firstChild&&n.firstChild.classList.remove("active")),e.which===H?(-1!==t&&t--,t+m<0&&(t+=c.length),a.selectpicker.view.canHighlight[t+m]||-1===(t=a.selectpicker.view.canHighlight.slice(0,t+m).lastIndexOf(!0)-m)&&(t=c.length-1)):(e.which===D||h)&&(++t+m>=a.selectpicker.view.canHighlight.length&&(t=0),a.selectpicker.view.canHighlight[t+m]||(t=t+1+a.selectpicker.view.canHighlight.slice(t+m+1).indexOf(!0))),e.preventDefault();var v=m+t;e.which===H?0===m&&t===c.length-1?(a.$menuInner[0].scrollTop=a.$menuInner[0].scrollHeight,v=a.selectpicker.current.elements.length-1):d=(o=(s=a.selectpicker.current.data[v]).position-s.height)<u:(e.which===D||h)&&(0===t?v=a.$menuInner[0].scrollTop=0:d=u<(o=(s=a.selectpicker.current.data[v]).position-a.sizeInfo.menuInnerHeight)),(n=a.selectpicker.current.elements[v])&&(n.classList.add("active"),n.firstChild&&n.firstChild.classList.add("active")),a.activeIndex=a.selectpicker.current.map.originalIndex[v],a.selectpicker.view.currentActive=n,d&&(a.$menuInner[0].scrollTop=o),a.options.liveSearch?a.$searchbox.trigger("focus"):r.trigger("focus")}else if(!r.is("input")&&!F.test(e.which)||e.which===L&&a.selectpicker.keydown.keyHistory){var g,b,w=[];e.preventDefault(),a.selectpicker.keydown.keyHistory+=y[e.which],a.selectpicker.keydown.resetKeyHistory.cancel&&clearTimeout(a.selectpicker.keydown.resetKeyHistory.cancel),a.selectpicker.keydown.resetKeyHistory.cancel=a.selectpicker.keydown.resetKeyHistory.start(),b=a.selectpicker.keydown.keyHistory,/^(.)\1+$/.test(b)&&(b=b.charAt(0));for(var x=0;x<a.selectpicker.current.data.length;x++){var I=a.selectpicker.current.data[x];$(I,b,"startsWith",!0)&&a.selectpicker.view.canHighlight[x]&&(I.index=x,w.push(I.originalIndex))}if(w.length){var k=0;c.removeClass("active").find("a").removeClass("active"),1===b.length&&(-1===(k=w.indexOf(a.activeIndex))||k===w.length-1?k=0:k++),g=a.selectpicker.current.map.newIndex[w[k]],d=0<u-(s=a.selectpicker.current.data[g]).position?(o=s.position-s.height,!0):(o=s.position-a.sizeInfo.menuInnerHeight,s.position>u+a.sizeInfo.menuInnerHeight),(n=a.selectpicker.current.elements[g]).classList.add("active"),n.firstChild&&n.firstChild.classList.add("active"),a.activeIndex=w[k],n.firstChild.trigger("focus"),d&&(a.$menuInner[0].scrollTop=o),r.trigger("focus")}}i&&(e.which===L&&!a.selectpicker.keydown.keyHistory||e.which===z||e.which===A&&a.options.selectOnTab)&&(e.which!==L&&e.preventDefault(),a.options.liveSearch&&e.which===L||(a.$menuInner.find(".active a").trigger("click",!0),r.trigger("focus"),a.options.liveSearch||(e.preventDefault(),O(document).data("spaceSelect",!0))))}},mobile:function(){this.$element[0].classList.add("mobile-device")},refresh:function(){var e=O.extend({},this.options,this.$element.data());this.options=e,this.selectpicker.main.map.newIndex={},this.selectpicker.main.map.originalIndex={},this.checkDisabled(),this.render(),this.createLi(),this.setStyle(),this.setWidth(),this.setSize(!0),this.$element.trigger("refreshed"+W)},hide:function(){this.$newElement.hide()},show:function(){this.$newElement.show()},remove:function(){this.$newElement.remove(),this.$element.remove()},destroy:function(){this.$newElement.before(this.$element).remove(),this.$bsContainer?this.$bsContainer.remove():this.$menu.remove(),this.$element.off(W).removeData("selectpicker").removeClass("bs-select-hidden selectpicker"),O(window).off(W+"."+this.selectId)}};var J=O.fn.selectpicker;O.fn.selectpicker=Z,O.fn.selectpicker.Constructor=Y,O.fn.selectpicker.noConflict=function(){return O.fn.selectpicker=J,this},O(document).off("keydown.bs.dropdown.data-api").on("keydown"+W,'.bootstrap-select [data-toggle="dropdown"], .bootstrap-select [role="listbox"], .bootstrap-select .bs-searchbox input',Y.prototype.keydown).on("focusin.modal",'.bootstrap-select [data-toggle="dropdown"], .bootstrap-select [role="listbox"], .bootstrap-select .bs-searchbox input',function(e){e.stopPropagation()}),O(window).on("load"+W+".data-api",function(){O(".selectpicker").each(function(){var e=O(this);Z.call(e,e.data())})})}(e)});

/*
 *	TypeWatch 2.0 - Original by Denny Ferrassoli / Refactored by Charles Christolini
 *
 *	Examples/Docs: www.dennydotnet.com
 *	
 *  Copyright(c) 2007 Denny Ferrassoli - DennyDotNet.com
 *  Coprright(c) 2008 Charles Christolini - BinaryPie.com
 *  
 *  Dual licensed under the MIT and GPL licenses:
 *  http://www.opensource.org/licenses/mit-license.php
 *  http://www.gnu.org/licenses/gpl.html
*/

(function(jQuery) {
	jQuery.fn.typeWatch = function(o){
		// Options
		var options = jQuery.extend({
			wait : 750,
			callback : function() { },
			highlight : true,
			captureLength : 2
		}, o);
			
		function checkElement(timer, override) {
			var elTxt = jQuery(timer.el).val();
		
			// Fire if text > options.captureLength AND text != saved txt OR if override AND text > options.captureLength
			if ((elTxt.length > options.captureLength && elTxt.toUpperCase() != timer.text) 
			|| (override && elTxt.length > options.captureLength)) {
				timer.text = elTxt.toUpperCase();
				timer.cb(elTxt);
			}
		};
		
		function watchElement(elem) {			
			// Must be text or textarea
			if (elem.type.toUpperCase() == "TEXT" || elem.nodeName.toUpperCase() == "TEXTAREA") {

				// Allocate timer element
				var timer = {
					timer : null, 
					text : jQuery(elem).val().toUpperCase(),
					cb : options.callback, 
					el : elem, 
					wait : options.wait
				};

				// Set focus action (highlight)
				if (options.highlight) {
					jQuery(elem).focus(
						function() {
							this.select();
						});
				}

				// Key watcher / clear and reset the timer
				var startWatch = function(evt) {
					var timerWait = timer.wait;
					var overrideBool = false;
					
					if (evt.keyCode == 13 && this.type.toUpperCase() == "TEXT") {
						timerWait = 1;
						overrideBool = true;
					}
					
					var timerCallbackFx = function()
					{
						checkElement(timer, overrideBool)
					}
					
					// Clear timer					
					clearTimeout(timer.timer);
					timer.timer = setTimeout(timerCallbackFx, timerWait);				
										
				};
				
				jQuery(elem).keydown(startWatch);
			}
		};
		
		// Watch Each Element
		return this.each(function(index){
			watchElement(this);
		});
		
	};

})(jQuery);
function get_inner_content(toggler) {
  content = toggler.innerText;
  if(content == undefined) {
    content = toggler.textContent;
  }
  return(content);
}

function csrf_data() {
  var csrf_token = $('meta[name=csrf-token]').attr('content'), csrf_param = $('meta[name=csrf-param]').attr('content');
  return("csrf-token="+csrf_token+"&csrf-param="+csrf_param);
}

function authenticity_token() {
  var csrf_token = $('meta[name=csrf-token]').attr('content');
  return("authenticity_token="+encodeURIComponent(csrf_token));
}

function extracted_controller() {
  controller_end = window.location.pathname.indexOf("/", 1);
  return(window.location.pathname.substring(1, controller_end));
}

function extracted_id() {
  id_start = window.location.pathname.indexOf("/", 1) + 1;
  id_end = window.location.pathname.indexOf("/", id_start);
  if(id_end == -1) id_end = window.location.pathname.length;
  id = window.location.pathname.substring(id_start, id_end);
  return(id);
}

function extracted_controller_and_id() {
  return window.location.pathname.substring(1, window.location.pathname.length).replace('/edit', '').replace('/', '-');
}

function extracted_id_and_name_string(name) {
  id = extracted_id();
  data = 'id=' + encodeURIComponent(id);
  alternate_id = document.getElementById('alternate_id');
  if(alternate_id) {
	data += "&alternate_id=" + alternate_id.value;
  }
  if(name) {
	data += "&name=" + name;
  }
  data += "&pathname=" + window.location.pathname
  return data;
}

function ajax_request(url, value, value_label, name) {
  data = extracted_id_and_name_string(name) + '&' + value_label + '=' + encodeURIComponent(value);
  data = data + "&" + authenticity_token();
  complete_url = url + '/' + id;
  jQuery.ajax({data:data, dataType:'script', type:'post', url:complete_url});
}

function send_ajax_uri(uri) {
  jQuery.ajax({dataType:'script', type:'post', url:uri});
}

$.fn.extend({
    popoverClosable: function (options) {
        var defaults = {
					container: 'body',
					template:
                '<div class="popover"><div class="arrow"></div>\
									<div class="popover-header">\
									<button type="button" class="close" data-dismiss="popover" aria-hidden="true">&times;</button>\
									<h3 class="popover-title"></h3>\
									</div>\
									<div class="popover-content"></div>\
								</div>'
        };
        options = $.extend({}, defaults, options);
        var $popover_togglers = this;
        $popover_togglers.popover(options);
        $popover_togglers.on('click', function (e) {
            e.preventDefault();
            $popover_togglers.not(this).popover('hide');
        });
        $('html').on('click', '[data-dismiss="popover"]', function (e) {
            $popover_togglers.popover('hide');
        });
    }
});

// $(function () {
//     $('[data-toggle="popover"]').popoverClosable();
// });

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
});
$(function () {
    $.fn.popover.Constructor.Default.whiteList.table = [];
    $.fn.popover.Constructor.Default.whiteList.tbody = [];
    $.fn.popover.Constructor.Default.whiteList.th = [];
    $.fn.popover.Constructor.Default.whiteList.tr = [];
    $.fn.popover.Constructor.Default.whiteList.td = [];
    $.fn.popover.Constructor.Default.whiteList.div = [];
    $.fn.popover.Constructor.Default.whiteList.tbody = [];
    $.fn.popover.Constructor.Default.whiteList.thead = [];
    $('[data-toggle="popover"]').popover();
});
// $(function(){
//   window.prettyPrint && prettyPrint();
//   $('.date-picker-on#datepicker_search, #datepicker_search_1, #datepicker_search_3, #datepicker_search_4, #datepicker_1, #datepicker_2, #datepicker_3, #datepicker_4, #datepicker_5, #datepicker_6, #datepicker_7,\
//      #datepicker_8, #datepicker_9, #datepicker_10, #datepicker_11, #datepicker_12, #datepicker_13, #datepicker_14, #datepicker_15, #datepicker_16, #datepicker_17, #datepicker_18, #datepicker_19,\
//      #datepicker_20, #datepicker_21, #datepicker_22, #datepicker_23, #datepicker_24, #datepicker_25, #datepicker_26, #datepicker_27, #datepicker_28, #datepicker_29, #datepicker_30, .datepicker_one').datepicker({
//     format: 'mm/dd/yyyy',
//     autoclose: 'true'
//   });
// });

$(function(){
  window.prettyPrint && prettyPrint();
  $('.single-date').datepicker({
    format: 'mm/dd/yyyy',
    autoclose: 'true',
    todayHighlight: true,
    forceParse: false,
    zIndexOffset: '1100'
  }).on('input', function() {
    $(this).data('datepicker').hide();
  });
});

// $('.input-daterange').datepicker({
//     autoclose: true,
//     todayHighlight: true,
//     forceParse: false,
//     zIndexOffset: '1100'
// });


// $(document).ready(function() {
// 	var $dateStart = $('#datepicker-start-1');
// 	var $dateEnd = $('#datepicker-end-1');
//  
// 	$dateStart
// 		.datepicker({
// 			todayHighlight: true,
// 			startDate: new Date()
// 		})
// 		.on('changeDate', function(ev){
// 			$dateStart
// 				.datepicker('hide');
//  
// 			$dateEnd
// 				.datepicker('setStartDate', ev.date)
// 				.trigger('focus');
// 		});
//  
// 			$dateEnd
// 				.datepicker()
// 				.on('changeDate', function(ev){
// 			
// 			$dateStart
// 				.datepicker('setEndDate', ev.date);
//  
// 			$dateEnd
// 				.datepicker('hide');
// 			});
// 	});
// 	
// 	$(document).ready(function() {
// 	var $dateStart = $('#datepicker-start-2');
// 	var $dateEnd = $('#datepicker-end-2');
//  
// 	$dateStart
// 		.datepicker({
// 			todayHighlight: true,
// 			startDate: new Date()
// 		})
// 		.on('changeDate', function(ev){
// 			$dateStart
// 				.datepicker('hide');
//  
// 			$dateEnd
// 				.datepicker('setStartDate', ev.date)
// 				.trigger('focus');
// 		});
//  
// 			$dateEnd
// 				.datepicker()
// 				.on('changeDate', function(ev){
// 			
// 			$dateStart
// 				.datepicker('setEndDate', ev.date);
//  
// 			$dateEnd
// 				.datepicker('hide');
// 			});
// 	});
// 
// $(document).ready(function() {
// 	var $dateStart = $('#datepicker-start-3');
// 	var $dateEnd = $('#datepicker-end-3');
//  
// 	$dateStart
// 		.datepicker({
// 			todayHighlight: true,
// 			startDate: new Date()
// 		})
// 		.on('changeDate', function(ev){
// 			$dateStart
// 				.datepicker('hide');
//  
// 			$dateEnd
// 				.datepicker('setStartDate', ev.date)
// 				.trigger('focus');
// 		});
//  
// 			$dateEnd
// 				.datepicker()
// 				.on('changeDate', function(ev){
// 			
// 			$dateStart
// 				.datepicker('setEndDate', ev.date);
//  
// 			$dateEnd
// 				.datepicker('hide');
// 			});
// 	});
// 
// $(document).ready(function() {
// 	var $dateStart = $('#datepicker-start-4');
// 	var $dateEnd = $('#datepicker-end-4');
//  
// 	$dateStart
// 		.datepicker({
// 			todayHighlight: true,
// 			startDate: new Date()
// 		})
// 		.on('changeDate', function(ev){
// 			$dateStart
// 				.datepicker('hide');
//  
// 			$dateEnd
// 				.datepicker('setStartDate', ev.date)
// 				.trigger('focus');
// 		});
//  
// 			$dateEnd
// 				.datepicker()
// 				.on('changeDate', function(ev){
// 			
// 			$dateStart
// 				.datepicker('setEndDate', ev.date);
//  
// 			$dateEnd
// 				.datepicker('hide');
// 			});
// 	});
// 
// $(document).ready(function() {
// 	var $dateStart = $('#datepicker-start-5');
// 	var $dateEnd = $('#datepicker-end-5');
//  
// 	$dateStart
// 		.datepicker({
// 			todayHighlight: true,
// 			startDate: new Date()
// 		})
// 		.on('changeDate', function(ev){
// 			$dateStart
// 				.datepicker('hide');
//  
// 			$dateEnd
// 				.datepicker('setStartDate', ev.date)
// 				.trigger('focus');
// 		});
//  
// 			$dateEnd
// 				.datepicker()
// 				.on('changeDate', function(ev){
// 			
// 			$dateStart
// 				.datepicker('setEndDate', ev.date);
//  
// 			$dateEnd
// 				.datepicker('hide');
// 			});
// 	});
// 
// $(document).ready(function() {
// 	var $dateStart = $('#datepicker-start-6');
// 	var $dateEnd = $('#datepicker-end-6');
//  
// 	$dateStart
// 		.datepicker({
// 			todayHighlight: true,
// 			startDate: new Date()
// 		})
// 		.on('changeDate', function(ev){
// 			$dateStart
// 				.datepicker('hide');
//  
// 			$dateEnd
// 				.datepicker('setStartDate', ev.date)
// 				.trigger('focus');
// 		});
//  
// 			$dateEnd
// 				.datepicker()
// 				.on('changeDate', function(ev){
// 			
// 			$dateStart
// 				.datepicker('setEndDate', ev.date);
//  
// 			$dateEnd
// 				.datepicker('hide');
// 			});
// 	});
/*
 Highcharts JS v7.2.1 (2019-10-31)

 (c) 2009-2018 Torstein Honsi

 License: www.highcharts.com/license
*/
(function(P,M){"object"===typeof module&&module.exports?(M["default"]=M,module.exports=P.document?M(P):M):"function"===typeof define&&define.amd?define("highcharts/highcharts",function(){return M(P)}):(P.Highcharts&&P.Highcharts.error(16,!0),P.Highcharts=M(P))})("undefined"!==typeof window?window:this,function(P){function M(c,f,F,G){c.hasOwnProperty(f)||(c[f]=G.apply(null,F))}var I={};M(I,"parts/Globals.js",[],function(){var c="undefined"!==typeof P?P:"undefined"!==typeof window?window:{},f=c.document,
F=c.navigator&&c.navigator.userAgent||"",G=f&&f.createElementNS&&!!f.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect,z=/(edge|msie|trident)/i.test(F)&&!c.opera,B=-1!==F.indexOf("Firefox"),t=-1!==F.indexOf("Chrome"),v=B&&4>parseInt(F.split("Firefox/")[1],10);return{product:"Highcharts",version:"7.2.1",deg2rad:2*Math.PI/360,doc:f,hasBidiBug:v,hasTouch:!!c.TouchEvent,isMS:z,isWebKit:-1!==F.indexOf("AppleWebKit"),isFirefox:B,isChrome:t,isSafari:!t&&-1!==F.indexOf("Safari"),isTouchDevice:/(Mobile|Android|Windows Phone)/.test(F),
SVG_NS:"http://www.w3.org/2000/svg",chartCount:0,seriesTypes:{},symbolSizes:{},svg:G,win:c,marginNames:["plotTop","marginRight","marginBottom","plotLeft"],noop:function(){},charts:[],dateFormats:{}}});M(I,"parts/Utilities.js",[I["parts/Globals.js"]],function(c){function f(a,d){return parseInt(a,d||10)}function F(a){return"string"===typeof a}function G(a){a=Object.prototype.toString.call(a);return"[object Array]"===a||"[object Array Iterator]"===a}function z(a,d){return!!a&&"object"===typeof a&&(!d||
!G(a))}function B(a){return z(a)&&"number"===typeof a.nodeType}function t(a){var d=a&&a.constructor;return!(!z(a,!0)||B(a)||!d||!d.name||"Object"===d.name)}function v(a){return"number"===typeof a&&!isNaN(a)&&Infinity>a&&-Infinity<a}function C(a){return"undefined"!==typeof a&&null!==a}function H(a,d,e){var b;F(d)?C(e)?a.setAttribute(d,e):a&&a.getAttribute&&((b=a.getAttribute(d))||"class"!==d||(b=a.getAttribute(d+"Name"))):n(d,function(d,e){a.setAttribute(e,d)});return b}function y(a,d){var e;a||(a=
{});for(e in d)a[e]=d[e];return a}function h(){for(var a=arguments,d=a.length,e=0;e<d;e++){var b=a[e];if("undefined"!==typeof b&&null!==b)return b}}function n(a,d,e){for(var b in a)Object.hasOwnProperty.call(a,b)&&d.call(e||a[b],a[b],b,a)}c.timers=[];var q=c.charts,g=c.doc,b=c.win;c.error=function(a,d,e,l){var g=v(a),h=g?"Highcharts error #"+a+": www.highcharts.com/errors/"+a+"/":a.toString(),p=function(){if(d)throw Error(h);b.console&&console.log(h)};if("undefined"!==typeof l){var u="";g&&(h+="?");
c.objectEach(l,function(a,d){u+="\n"+d+": "+a;g&&(h+=encodeURI(d)+"="+encodeURI(a))});h+=u}e?c.fireEvent(e,"displayError",{code:a,message:h,params:l},p):p()};c.Fx=function(a,d,e){this.options=d;this.elem=a;this.prop=e};c.Fx.prototype={dSetter:function(){var a=this.paths[0],d=this.paths[1],e=[],b=this.now,g=a.length;if(1===b)e=this.toD;else if(g===d.length&&1>b)for(;g--;){var c=parseFloat(a[g]);e[g]=isNaN(c)||"A"===d[g-4]||"A"===d[g-5]?d[g]:b*parseFloat(""+(d[g]-c))+c}else e=d;this.elem.attr("d",e,
null,!0)},update:function(){var a=this.elem,d=this.prop,e=this.now,b=this.options.step;if(this[d+"Setter"])this[d+"Setter"]();else a.attr?a.element&&a.attr(d,e,null,!0):a.style[d]=e+this.unit;b&&b.call(a,e,this)},run:function(a,d,e){var l=this,g=l.options,h=function(a){return h.stopped?!1:l.step(a)},p=b.requestAnimationFrame||function(a){setTimeout(a,13)},u=function(){for(var a=0;a<c.timers.length;a++)c.timers[a]()||c.timers.splice(a--,1);c.timers.length&&p(u)};a!==d||this.elem["forceAnimate:"+this.prop]?
(this.startTime=+new Date,this.start=a,this.end=d,this.unit=e,this.now=this.start,this.pos=0,h.elem=this.elem,h.prop=this.prop,h()&&1===c.timers.push(h)&&p(u)):(delete g.curAnim[this.prop],g.complete&&0===Object.keys(g.curAnim).length&&g.complete.call(this.elem))},step:function(a){var d=+new Date,e=this.options,b=this.elem,g=e.complete,c=e.duration,p=e.curAnim;if(b.attr&&!b.element)a=!1;else if(a||d>=c+this.startTime){this.now=this.end;this.pos=1;this.update();var u=p[this.prop]=!0;n(p,function(a){!0!==
a&&(u=!1)});u&&g&&g.call(b);a=!1}else this.pos=e.easing((d-this.startTime)/c),this.now=this.start+(this.end-this.start)*this.pos,this.update(),a=!0;return a},initPath:function(a,d,e){function b(a){for(A=a.length;A--;){var d="M"===a[A]||"L"===a[A];var e=/[a-zA-Z]/.test(a[A+3]);d&&e&&a.splice(A+1,0,a[A+1],a[A+2],a[A+1],a[A+2])}}function g(a,d){for(;a.length<h;){a[0]=d[h-a.length];var e=a.slice(0,r);[].splice.apply(a,[0,0].concat(e));w&&(e=a.slice(a.length-r),[].splice.apply(a,[a.length,0].concat(e)),
A--)}a[0]="M"}function c(a,d){for(var e=(h-a.length)/r;0<e&&e--;)x=a.slice().splice(a.length/m-r,r*m),x[0]=d[h-r-e*r],k&&(x[r-6]=x[r-2],x[r-5]=x[r-1]),[].splice.apply(a,[a.length/m,0].concat(x)),w&&e--}d=d||"";var p=a.startX,u=a.endX,k=-1<d.indexOf("C"),r=k?7:3,x,A;d=d.split(" ");e=e.slice();var w=a.isArea,m=w?2:1;k&&(b(d),b(e));if(p&&u){for(A=0;A<p.length;A++)if(p[A]===u[0]){var K=A;break}else if(p[0]===u[u.length-p.length+A]){K=A;var J=!0;break}else if(p[p.length-1]===u[u.length-p.length+A]){K=
p.length-A;break}"undefined"===typeof K&&(d=[])}if(d.length&&v(K)){var h=e.length+K*m*r;J?(g(d,e),c(e,d)):(g(e,d),c(d,e))}return[d,e]},fillSetter:function(){c.Fx.prototype.strokeSetter.apply(this,arguments)},strokeSetter:function(){this.elem.attr(this.prop,c.color(this.start).tweenTo(c.color(this.end),this.pos),null,!0)}};c.merge=function(){var a,d=arguments,e={},b=function(a,d){"object"!==typeof a&&(a={});n(d,function(e,k){!z(e,!0)||t(e)||B(e)?a[k]=d[k]:a[k]=b(a[k]||{},e)});return a};!0===d[0]&&
(e=d[1],d=Array.prototype.slice.call(d,2));var g=d.length;for(a=0;a<g;a++)e=b(e,d[a]);return e};c.clearTimeout=function(a){C(a)&&clearTimeout(a)};c.css=function(a,d){c.isMS&&!c.svg&&d&&"undefined"!==typeof d.opacity&&(d.filter="alpha(opacity="+100*d.opacity+")");y(a.style,d)};c.createElement=function(a,d,e,b,L){a=g.createElement(a);var l=c.css;d&&y(a,d);L&&l(a,{padding:"0",border:"none",margin:"0"});e&&l(a,e);b&&b.appendChild(a);return a};c.extendClass=function(a,d){var e=function(){};e.prototype=
new a;y(e.prototype,d);return e};c.pad=function(a,d,e){return Array((d||2)+1-String(a).replace("-","").length).join(e||"0")+a};c.relativeLength=function(a,d,e){return/%$/.test(a)?d*parseFloat(a)/100+(e||0):parseFloat(a)};c.wrap=function(a,d,e){var b=a[d];a[d]=function(){var a=Array.prototype.slice.call(arguments),d=arguments,l=this;l.proceed=function(){b.apply(l,arguments.length?arguments:d)};a.unshift(b);a=e.apply(this,a);l.proceed=null;return a}};c.datePropsToTimestamps=function(a){n(a,function(d,
e){z(d)&&"function"===typeof d.getTime?a[e]=d.getTime():(z(d)||G(d))&&c.datePropsToTimestamps(d)})};c.formatSingle=function(a,d,e){var b=/\.([0-9])/,g=c.defaultOptions.lang;/f$/.test(a)?(e=(e=a.match(b))?e[1]:-1,null!==d&&(d=c.numberFormat(d,e,g.decimalPoint,-1<a.indexOf(",")?g.thousandsSep:""))):d=(e||c.time).dateFormat(a,d);return d};c.format=function(a,d,e){for(var b="{",g=!1,h,p,u,k,r=[],x;a;){b=a.indexOf(b);if(-1===b)break;h=a.slice(0,b);if(g){h=h.split(":");p=h.shift().split(".");k=p.length;
x=d;for(u=0;u<k;u++)x&&(x=x[p[u]]);h.length&&(x=c.formatSingle(h.join(":"),x,e));r.push(x)}else r.push(h);a=a.slice(b+1);b=(g=!g)?"}":"{"}r.push(a);return r.join("")};c.getMagnitude=function(a){return Math.pow(10,Math.floor(Math.log(a)/Math.LN10))};c.normalizeTickInterval=function(a,d,e,b,g){var l=a;e=h(e,1);var p=a/e;d||(d=g?[1,1.2,1.5,2,2.5,3,4,5,6,8,10]:[1,2,2.5,5,10],!1===b&&(1===e?d=d.filter(function(a){return 0===a%1}):.1>=e&&(d=[1/e])));for(b=0;b<d.length&&!(l=d[b],g&&l*e>=a||!g&&p<=(d[b]+
(d[b+1]||d[b]))/2);b++);return l=c.correctFloat(l*e,-Math.round(Math.log(.001)/Math.LN10))};c.stableSort=function(a,d){var b=a.length,l,g;for(g=0;g<b;g++)a[g].safeI=g;a.sort(function(a,b){l=d(a,b);return 0===l?a.safeI-b.safeI:l});for(g=0;g<b;g++)delete a[g].safeI};c.correctFloat=function(a,d){return parseFloat(a.toPrecision(d||14))};c.animObject=function(a){return z(a)?c.merge(a):{duration:a?500:0}};c.timeUnits={millisecond:1,second:1E3,minute:6E4,hour:36E5,day:864E5,week:6048E5,month:24192E5,year:314496E5};
c.numberFormat=function(a,d,b,l){a=+a||0;d=+d;var e=c.defaultOptions.lang,g=(a.toString().split(".")[1]||"").split("e")[0].length,p=a.toString().split("e");if(-1===d)d=Math.min(g,20);else if(!v(d))d=2;else if(d&&p[1]&&0>p[1]){var u=d+ +p[1];0<=u?(p[0]=(+p[0]).toExponential(u).split("e")[0],d=u):(p[0]=p[0].split(".")[0]||0,a=20>d?(p[0]*Math.pow(10,p[1])).toFixed(d):0,p[1]=0)}var k=(Math.abs(p[1]?p[0]:a)+Math.pow(10,-Math.max(d,g)-1)).toFixed(d);g=String(f(k));u=3<g.length?g.length%3:0;b=h(b,e.decimalPoint);
l=h(l,e.thousandsSep);a=(0>a?"-":"")+(u?g.substr(0,u)+l:"");a+=g.substr(u).replace(/(\d{3})(?=\d)/g,"$1"+l);d&&(a+=b+k.slice(-d));p[1]&&0!==+a&&(a+="e"+p[1]);return a};Math.easeInOutSine=function(a){return-.5*(Math.cos(Math.PI*a)-1)};c.getStyle=function(a,d,e){if("width"===d)return d=Math.min(a.offsetWidth,a.scrollWidth),e=a.getBoundingClientRect&&a.getBoundingClientRect().width,e<d&&e>=d-1&&(d=Math.floor(e)),Math.max(0,d-c.getStyle(a,"padding-left")-c.getStyle(a,"padding-right"));if("height"===d)return Math.max(0,
Math.min(a.offsetHeight,a.scrollHeight)-c.getStyle(a,"padding-top")-c.getStyle(a,"padding-bottom"));b.getComputedStyle||c.error(27,!0);if(a=b.getComputedStyle(a,void 0))a=a.getPropertyValue(d),h(e,"opacity"!==d)&&(a=f(a));return a};c.inArray=function(a,d,b){return d.indexOf(a,b)};c.find=Array.prototype.find?function(a,d){return a.find(d)}:function(a,d){var b,l=a.length;for(b=0;b<l;b++)if(d(a[b],b))return a[b]};c.keys=Object.keys;c.offset=function(a){var d=g.documentElement;a=a.parentElement||a.parentNode?
a.getBoundingClientRect():{top:0,left:0};return{top:a.top+(b.pageYOffset||d.scrollTop)-(d.clientTop||0),left:a.left+(b.pageXOffset||d.scrollLeft)-(d.clientLeft||0)}};c.stop=function(a,b){for(var d=c.timers.length;d--;)c.timers[d].elem!==a||b&&b!==c.timers[d].prop||(c.timers[d].stopped=!0)};n({map:"map",each:"forEach",grep:"filter",reduce:"reduce",some:"some"},function(a,b){c[b]=function(b){return Array.prototype[a].apply(b,[].slice.call(arguments,1))}});c.addEvent=function(a,b,e,l){void 0===l&&(l=
{});var d=a.addEventListener||c.addEventListenerPolyfill;var g="function"===typeof a&&a.prototype?a.prototype.protoEvents=a.prototype.protoEvents||{}:a.hcEvents=a.hcEvents||{};c.Point&&a instanceof c.Point&&a.series&&a.series.chart&&(a.series.chart.runTrackerClick=!0);d&&d.call(a,b,e,!1);g[b]||(g[b]=[]);g[b].push({fn:e,order:"number"===typeof l.order?l.order:Infinity});g[b].sort(function(a,b){return a.order-b.order});return function(){c.removeEvent(a,b,e)}};c.removeEvent=function(a,b,e){function d(b,
d){var e=a.removeEventListener||c.removeEventListenerPolyfill;e&&e.call(a,b,d,!1)}function g(e){var l;if(a.nodeName){if(b){var k={};k[b]=!0}else k=e;n(k,function(a,b){if(e[b])for(l=e[b].length;l--;)d(b,e[b][l].fn)})}}var h;["protoEvents","hcEvents"].forEach(function(l,c){var k=(c=c?a:a.prototype)&&c[l];k&&(b?(h=k[b]||[],e?(k[b]=h.filter(function(a){return e!==a.fn}),d(b,e)):(g(k),k[b]=[])):(g(k),c[l]={}))})};c.fireEvent=function(a,b,e,l){var d;e=e||{};if(g.createEvent&&(a.dispatchEvent||a.fireEvent)){var c=
g.createEvent("Events");c.initEvent(b,!0,!0);y(c,e);a.dispatchEvent?a.dispatchEvent(c):a.fireEvent(b,c)}else e.target||y(e,{preventDefault:function(){e.defaultPrevented=!0},target:a,type:b}),function(b,l){void 0===b&&(b=[]);void 0===l&&(l=[]);var k=0,r=0,g=b.length+l.length;for(d=0;d<g;d++)!1===(b[k]?l[r]?b[k].order<=l[r].order?b[k++]:l[r++]:b[k++]:l[r++]).fn.call(a,e)&&e.preventDefault()}(a.protoEvents&&a.protoEvents[b],a.hcEvents&&a.hcEvents[b]);l&&!e.defaultPrevented&&l.call(a,e)};c.animate=function(a,
b,e){var d,g="",h,p;if(!z(e)){var u=arguments;e={duration:u[2],easing:u[3],complete:u[4]}}v(e.duration)||(e.duration=400);e.easing="function"===typeof e.easing?e.easing:Math[e.easing]||Math.easeInOutSine;e.curAnim=c.merge(b);n(b,function(k,l){c.stop(a,l);p=new c.Fx(a,e,l);h=null;"d"===l?(p.paths=p.initPath(a,a.d,b.d),p.toD=b.d,d=0,h=1):a.attr?d=a.attr(l):(d=parseFloat(c.getStyle(a,l))||0,"opacity"!==l&&(g="px"));h||(h=k);h&&h.match&&h.match("px")&&(h=h.replace(/px/g,""));p.run(d,h,g)})};c.seriesType=
function(a,b,e,l,g){var d=c.getOptions(),p=c.seriesTypes;d.plotOptions[a]=c.merge(d.plotOptions[b],e);p[a]=c.extendClass(p[b]||function(){},l);p[a].prototype.type=a;g&&(p[a].prototype.pointClass=c.extendClass(c.Point,g));return p[a]};c.uniqueKey=function(){var a=Math.random().toString(36).substring(2,9),b=0;return function(){return"highcharts-"+a+"-"+b++}}();c.isFunction=function(a){return"function"===typeof a};b.jQuery&&(b.jQuery.fn.highcharts=function(){var a=[].slice.call(arguments);if(this[0])return a[0]?
(new (c[F(a[0])?a.shift():"Chart"])(this[0],a[0],a[1]),this):q[H(this[0],"data-highcharts-chart")]});return{arrayMax:function(a){for(var b=a.length,e=a[0];b--;)a[b]>e&&(e=a[b]);return e},arrayMin:function(a){for(var b=a.length,e=a[0];b--;)a[b]<e&&(e=a[b]);return e},attr:H,defined:C,destroyObjectProperties:function(a,b){n(a,function(d,l){d&&d!==b&&d.destroy&&d.destroy();delete a[l]})},discardElement:function(a){var b=c.garbageBin;b||(b=c.createElement("div"));a&&b.appendChild(a);b.innerHTML=""},erase:function(a,
b){for(var d=a.length;d--;)if(a[d]===b){a.splice(d,1);break}},extend:y,isArray:G,isClass:t,isDOMElement:B,isNumber:v,isObject:z,isString:F,objectEach:n,pick:h,pInt:f,setAnimation:function(a,b){b.renderer.globalAnimation=h(a,b.options.chart.animation,!0)},splat:function(a){return G(a)?a:[a]},syncTimeout:function(a,b,e){if(0<b)return setTimeout(a,b,e);a.call(0,e);return-1}}});M(I,"parts/Color.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.isNumber,G=f.pInt,z=c.merge;c.Color=
function(f){if(!(this instanceof c.Color))return new c.Color(f);this.init(f)};c.Color.prototype={parsers:[{regex:/rgba\(\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*,\s*([0-9]?(?:\.[0-9]+)?)\s*\)/,parse:function(c){return[G(c[1]),G(c[2]),G(c[3]),parseFloat(c[4],10)]}},{regex:/rgb\(\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*,\s*([0-9]{1,3})\s*\)/,parse:function(c){return[G(c[1]),G(c[2]),G(c[3]),1]}}],names:{white:"#ffffff",black:"#000000"},init:function(f){var t,v;if((this.input=f=this.names[f&&
f.toLowerCase?f.toLowerCase():""]||f)&&f.stops)this.stops=f.stops.map(function(f){return new c.Color(f[1])});else{if(f&&f.charAt&&"#"===f.charAt()){var C=f.length;f=parseInt(f.substr(1),16);7===C?t=[(f&16711680)>>16,(f&65280)>>8,f&255,1]:4===C&&(t=[(f&3840)>>4|(f&3840)>>8,(f&240)>>4|f&240,(f&15)<<4|f&15,1])}if(!t)for(v=this.parsers.length;v--&&!t;){var B=this.parsers[v];(C=B.regex.exec(f))&&(t=B.parse(C))}}this.rgba=t||[]},get:function(c){var f=this.input,v=this.rgba;if(this.stops){var C=z(f);C.stops=
[].concat(C.stops);this.stops.forEach(function(f,v){C.stops[v]=[C.stops[v][0],f.get(c)]})}else C=v&&F(v[0])?"rgb"===c||!c&&1===v[3]?"rgb("+v[0]+","+v[1]+","+v[2]+")":"a"===c?v[3]:"rgba("+v.join(",")+")":f;return C},brighten:function(c){var f,v=this.rgba;if(this.stops)this.stops.forEach(function(f){f.brighten(c)});else if(F(c)&&0!==c)for(f=0;3>f;f++)v[f]+=G(255*c),0>v[f]&&(v[f]=0),255<v[f]&&(v[f]=255);return this},setOpacity:function(c){this.rgba[3]=c;return this},tweenTo:function(c,f){var v=this.rgba,
t=c.rgba;t.length&&v&&v.length?(c=1!==t[3]||1!==v[3],f=(c?"rgba(":"rgb(")+Math.round(t[0]+(v[0]-t[0])*(1-f))+","+Math.round(t[1]+(v[1]-t[1])*(1-f))+","+Math.round(t[2]+(v[2]-t[2])*(1-f))+(c?","+(t[3]+(v[3]-t[3])*(1-f)):"")+")"):f=c.input||"none";return f}};c.color=function(f){return new c.Color(f)}});M(I,"parts/SvgRenderer.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.attr,G=f.defined,z=f.destroyObjectProperties,B=f.erase,t=f.extend,v=f.isArray,C=f.isNumber,H=f.isObject,
y=f.isString,h=f.objectEach,n=f.pick,q=f.pInt,g=f.splat,b=c.addEvent,a=c.animate,d=c.charts,e=c.color,l=c.css,L=c.createElement,E=c.deg2rad,p=c.doc,u=c.hasTouch,k=c.isFirefox,r=c.isMS,x=c.isWebKit,A=c.merge,w=c.noop,m=c.removeEvent,K=c.stop,J=c.svg,U=c.SVG_NS,S=c.symbolSizes,Q=c.win;var O=c.SVGElement=function(){return this};t(O.prototype,{opacity:1,SVG_NS:U,textProps:"direction fontSize fontWeight fontFamily fontStyle color lineHeight width textAlign textDecoration textOverflow textOutline cursor".split(" "),
init:function(a,b){this.element="span"===b?L(b):p.createElementNS(this.SVG_NS,b);this.renderer=a;c.fireEvent(this,"afterInit")},animate:function(b,d,m){var D=c.animObject(n(d,this.renderer.globalAnimation,!0));n(p.hidden,p.msHidden,p.webkitHidden,!1)&&(D.duration=0);0!==D.duration?(m&&(D.complete=m),a(this,b,D)):(this.attr(b,void 0,m),h(b,function(a,b){D.step&&D.step.call(this,a,{prop:b,pos:1})},this));return this},complexColor:function(a,b,d){var D=this.renderer,m,e,w,N,k,l,g,r,x,p,K,J=[],T;c.fireEvent(this.renderer,
"complexColor",{args:arguments},function(){a.radialGradient?e="radialGradient":a.linearGradient&&(e="linearGradient");e&&(w=a[e],k=D.gradients,g=a.stops,p=d.radialReference,v(w)&&(a[e]=w={x1:w[0],y1:w[1],x2:w[2],y2:w[3],gradientUnits:"userSpaceOnUse"}),"radialGradient"===e&&p&&!G(w.gradientUnits)&&(N=w,w=A(w,D.getRadialAttr(p,N),{gradientUnits:"userSpaceOnUse"})),h(w,function(a,b){"id"!==b&&J.push(b,a)}),h(g,function(a){J.push(a)}),J=J.join(","),k[J]?K=k[J].attr("id"):(w.id=K=c.uniqueKey(),k[J]=l=
D.createElement(e).attr(w).add(D.defs),l.radAttr=N,l.stops=[],g.forEach(function(a){0===a[1].indexOf("rgba")?(m=c.color(a[1]),r=m.get("rgb"),x=m.get("a")):(r=a[1],x=1);a=D.createElement("stop").attr({offset:a[0],"stop-color":r,"stop-opacity":x}).add(l);l.stops.push(a)})),T="url("+D.url+"#"+K+")",d.setAttribute(b,T),d.gradient=J,a.toString=function(){return T})})},applyTextOutline:function(a){var b=this.element,D;-1!==a.indexOf("contrast")&&(a=a.replace(/contrast/g,this.renderer.getContrast(b.style.fill)));
a=a.split(" ");var d=a[a.length-1];if((D=a[0])&&"none"!==D&&c.svg){this.fakeTS=!0;a=[].slice.call(b.getElementsByTagName("tspan"));this.ySetter=this.xSetter;D=D.replace(/(^[\d\.]+)(.*?)$/g,function(a,b,D){return 2*b+D});this.removeTextOutline(a);var m=b.firstChild;a.forEach(function(a,e){0===e&&(a.setAttribute("x",b.getAttribute("x")),e=b.getAttribute("y"),a.setAttribute("y",e||0),null===e&&b.setAttribute("y",0));a=a.cloneNode(1);F(a,{"class":"highcharts-text-outline",fill:d,stroke:d,"stroke-width":D,
"stroke-linejoin":"round"});b.insertBefore(a,m)})}},removeTextOutline:function(a){for(var b=a.length,D;b--;)D=a[b],"highcharts-text-outline"===D.getAttribute("class")&&B(a,this.element.removeChild(D))},symbolCustomAttribs:"x y width height r start end innerR anchorX anchorY rounded".split(" "),attr:function(a,b,d,e){var D=this.element,m,w=this,N,k,l=this.symbolCustomAttribs;if("string"===typeof a&&void 0!==b){var g=a;a={};a[g]=b}"string"===typeof a?w=(this[a+"Getter"]||this._defaultGetter).call(this,
a,D):(h(a,function(b,d){N=!1;e||K(this,d);this.symbolName&&-1!==c.inArray(d,l)&&(m||(this.symbolAttr(a),m=!0),N=!0);!this.rotation||"x"!==d&&"y"!==d||(this.doTransform=!0);N||(k=this[d+"Setter"]||this._defaultSetter,k.call(this,b,d,D),!this.styledMode&&this.shadows&&/^(width|height|visibility|x|y|d|transform|cx|cy|r)$/.test(d)&&this.updateShadows(d,b,k))},this),this.afterSetters());d&&d.call(this);return w},afterSetters:function(){this.doTransform&&(this.updateTransform(),this.doTransform=!1)},updateShadows:function(a,
b,d){for(var D=this.shadows,e=D.length;e--;)d.call(D[e],"height"===a?Math.max(b-(D[e].cutHeight||0),0):"d"===a?this.d:b,a,D[e])},addClass:function(a,b){var D=b?"":this.attr("class")||"";a=(a||"").split(/ /g).reduce(function(a,b){-1===D.indexOf(b)&&a.push(b);return a},D?[D]:[]).join(" ");a!==D&&this.attr("class",a);return this},hasClass:function(a){return-1!==(this.attr("class")||"").split(" ").indexOf(a)},removeClass:function(a){return this.attr("class",(this.attr("class")||"").replace(y(a)?new RegExp(" ?"+
a+" ?"):a,""))},symbolAttr:function(a){var b=this;"x y r start end width height innerR anchorX anchorY clockwise".split(" ").forEach(function(D){b[D]=n(a[D],b[D])});b.attr({d:b.renderer.symbols[b.symbolName](b.x,b.y,b.width,b.height,b)})},clip:function(a){return this.attr("clip-path",a?"url("+this.renderer.url+"#"+a.id+")":"none")},crisp:function(a,b){b=b||a.strokeWidth||0;var D=Math.round(b)%2/2;a.x=Math.floor(a.x||this.x||0)+D;a.y=Math.floor(a.y||this.y||0)+D;a.width=Math.floor((a.width||this.width||
0)-2*D);a.height=Math.floor((a.height||this.height||0)-2*D);G(a.strokeWidth)&&(a.strokeWidth=b);return a},css:function(a){var b=this.styles,D={},d=this.element,e="",m=!b,w=["textOutline","textOverflow","width"];a&&a.color&&(a.fill=a.color);b&&h(a,function(a,d){a!==b[d]&&(D[d]=a,m=!0)});if(m){b&&(a=t(b,D));if(a)if(null===a.width||"auto"===a.width)delete this.textWidth;else if("text"===d.nodeName.toLowerCase()&&a.width)var k=this.textWidth=q(a.width);this.styles=a;k&&!J&&this.renderer.forExport&&delete a.width;
if(d.namespaceURI===this.SVG_NS){var g=function(a,b){return"-"+b.toLowerCase()};h(a,function(a,b){-1===w.indexOf(b)&&(e+=b.replace(/([A-Z])/g,g)+":"+a+";")});e&&F(d,"style",e)}else l(d,a);this.added&&("text"===this.element.nodeName&&this.renderer.buildText(this),a&&a.textOutline&&this.applyTextOutline(a.textOutline))}return this},getStyle:function(a){return Q.getComputedStyle(this.element||this,"").getPropertyValue(a)},strokeWidth:function(){if(!this.renderer.styledMode)return this["stroke-width"]||
0;var a=this.getStyle("stroke-width");if(a.indexOf("px")===a.length-2)a=q(a);else{var b=p.createElementNS(U,"rect");F(b,{width:a,"stroke-width":0});this.element.parentNode.appendChild(b);a=b.getBBox().width;b.parentNode.removeChild(b)}return a},on:function(a,b){var d=this,D=d.element;u&&"click"===a?(D.ontouchstart=function(a){d.touchEventFired=Date.now();a.preventDefault();b.call(D,a)},D.onclick=function(a){(-1===Q.navigator.userAgent.indexOf("Android")||1100<Date.now()-(d.touchEventFired||0))&&b.call(D,
a)}):D["on"+a]=b;return this},setRadialReference:function(a){var b=this.renderer.gradients[this.element.gradient];this.element.radialReference=a;b&&b.radAttr&&b.animate(this.renderer.getRadialAttr(a,b.radAttr));return this},translate:function(a,b){return this.attr({translateX:a,translateY:b})},invert:function(a){this.inverted=a;this.updateTransform();return this},updateTransform:function(){var a=this.translateX||0,b=this.translateY||0,d=this.scaleX,e=this.scaleY,m=this.inverted,w=this.rotation,k=
this.matrix,l=this.element;m&&(a+=this.width,b+=this.height);a=["translate("+a+","+b+")"];G(k)&&a.push("matrix("+k.join(",")+")");m?a.push("rotate(90) scale(-1,1)"):w&&a.push("rotate("+w+" "+n(this.rotationOriginX,l.getAttribute("x"),0)+" "+n(this.rotationOriginY,l.getAttribute("y")||0)+")");(G(d)||G(e))&&a.push("scale("+n(d,1)+" "+n(e,1)+")");a.length&&l.setAttribute("transform",a.join(" "))},toFront:function(){var a=this.element;a.parentNode.appendChild(a);return this},align:function(a,b,d){var e,
m={};var D=this.renderer;var w=D.alignedObjects;var k,l;if(a){if(this.alignOptions=a,this.alignByTranslate=b,!d||y(d))this.alignTo=e=d||"renderer",B(w,this),w.push(this),d=null}else a=this.alignOptions,b=this.alignByTranslate,e=this.alignTo;d=n(d,D[e],D);e=a.align;D=a.verticalAlign;w=(d.x||0)+(a.x||0);var N=(d.y||0)+(a.y||0);"right"===e?k=1:"center"===e&&(k=2);k&&(w+=(d.width-(a.width||0))/k);m[b?"translateX":"x"]=Math.round(w);"bottom"===D?l=1:"middle"===D&&(l=2);l&&(N+=(d.height-(a.height||0))/
l);m[b?"translateY":"y"]=Math.round(N);this[this.placed?"animate":"attr"](m);this.placed=!0;this.alignAttr=m;return this},getBBox:function(a,b){var d,e=this.renderer,m=this.element,D=this.styles,w=this.textStr,k,l=e.cache,N=e.cacheKeys,g=m.namespaceURI===this.SVG_NS;b=n(b,this.rotation,0);var r=e.styledMode?m&&O.prototype.getStyle.call(m,"font-size"):D&&D.fontSize;if(G(w)){var c=w.toString();-1===c.indexOf("<")&&(c=c.replace(/[0-9]/g,"0"));c+=["",b,r,this.textWidth,D&&D.textOverflow].join()}c&&!a&&
(d=l[c]);if(!d){if(g||e.forExport){try{(k=this.fakeTS&&function(a){[].forEach.call(m.querySelectorAll(".highcharts-text-outline"),function(b){b.style.display=a})})&&k("none"),d=m.getBBox?t({},m.getBBox()):{width:m.offsetWidth,height:m.offsetHeight},k&&k("")}catch(aa){""}if(!d||0>d.width)d={width:0,height:0}}else d=this.htmlGetBBox();e.isSVG&&(a=d.width,e=d.height,g&&(d.height=e={"11px,17":14,"13px,20":16}[D&&D.fontSize+","+Math.round(e)]||e),b&&(D=b*E,d.width=Math.abs(e*Math.sin(D))+Math.abs(a*Math.cos(D)),
d.height=Math.abs(e*Math.cos(D))+Math.abs(a*Math.sin(D))));if(c&&0<d.height){for(;250<N.length;)delete l[N.shift()];l[c]||N.push(c);l[c]=d}}return d},show:function(a){return this.attr({visibility:a?"inherit":"visible"})},hide:function(a){a?this.attr({y:-9999}):this.attr({visibility:"hidden"});return this},fadeOut:function(a){var b=this;b.animate({opacity:0},{duration:a||150,complete:function(){b.attr({y:-9999})}})},add:function(a){var b=this.renderer,d=this.element;a&&(this.parentGroup=a);this.parentInverted=
a&&a.inverted;void 0!==this.textStr&&b.buildText(this);this.added=!0;if(!a||a.handleZ||this.zIndex)var e=this.zIndexSetter();e||(a?a.element:b.box).appendChild(d);if(this.onAdd)this.onAdd();return this},safeRemoveChild:function(a){var b=a.parentNode;b&&b.removeChild(a)},destroy:function(){var a=this,b=a.element||{},d=a.renderer,e=d.isSVG&&"SPAN"===b.nodeName&&a.parentGroup,m=b.ownerSVGElement,w=a.clipPath;b.onclick=b.onmouseout=b.onmouseover=b.onmousemove=b.point=null;K(a);w&&m&&([].forEach.call(m.querySelectorAll("[clip-path],[CLIP-PATH]"),
function(a){-1<a.getAttribute("clip-path").indexOf(w.element.id)&&a.removeAttribute("clip-path")}),a.clipPath=w.destroy());if(a.stops){for(m=0;m<a.stops.length;m++)a.stops[m]=a.stops[m].destroy();a.stops=null}a.safeRemoveChild(b);for(d.styledMode||a.destroyShadows();e&&e.div&&0===e.div.childNodes.length;)b=e.parentGroup,a.safeRemoveChild(e.div),delete e.div,e=b;a.alignTo&&B(d.alignedObjects,a);h(a,function(b,d){a[d]&&a[d].parentGroup===a&&a[d].destroy&&a[d].destroy();delete a[d]})},shadow:function(a,
b,d){var e=[],m,w=this.element;if(!a)this.destroyShadows();else if(!this.shadows){var D=n(a.width,3);var k=(a.opacity||.15)/D;var l=this.parentInverted?"(-1,-1)":"("+n(a.offsetX,1)+", "+n(a.offsetY,1)+")";for(m=1;m<=D;m++){var g=w.cloneNode(0);var r=2*D+1-2*m;F(g,{stroke:a.color||"#000000","stroke-opacity":k*m,"stroke-width":r,transform:"translate"+l,fill:"none"});g.setAttribute("class",(g.getAttribute("class")||"")+" highcharts-shadow");d&&(F(g,"height",Math.max(F(g,"height")-r,0)),g.cutHeight=r);
b?b.element.appendChild(g):w.parentNode&&w.parentNode.insertBefore(g,w);e.push(g)}this.shadows=e}return this},destroyShadows:function(){(this.shadows||[]).forEach(function(a){this.safeRemoveChild(a)},this);this.shadows=void 0},xGetter:function(a){"circle"===this.element.nodeName&&("x"===a?a="cx":"y"===a&&(a="cy"));return this._defaultGetter(a)},_defaultGetter:function(a){a=n(this[a+"Value"],this[a],this.element?this.element.getAttribute(a):null,0);/^[\-0-9\.]+$/.test(a)&&(a=parseFloat(a));return a},
dSetter:function(a,b,d){a&&a.join&&(a=a.join(" "));/(NaN| {2}|^$)/.test(a)&&(a="M 0 0");this[b]!==a&&(d.setAttribute(b,a),this[b]=a)},dashstyleSetter:function(a){var b,d=this["stroke-width"];"inherit"===d&&(d=1);if(a=a&&a.toLowerCase()){a=a.replace("shortdashdotdot","3,1,1,1,1,1,").replace("shortdashdot","3,1,1,1").replace("shortdot","1,1,").replace("shortdash","3,1,").replace("longdash","8,3,").replace(/dot/g,"1,3,").replace("dash","4,3,").replace(/,$/,"").split(",");for(b=a.length;b--;)a[b]=q(a[b])*
d;a=a.join(",").replace(/NaN/g,"none");this.element.setAttribute("stroke-dasharray",a)}},alignSetter:function(a){var b={left:"start",center:"middle",right:"end"};b[a]&&(this.alignValue=a,this.element.setAttribute("text-anchor",b[a]))},opacitySetter:function(a,b,d){this[b]=a;d.setAttribute(b,a)},titleSetter:function(a){var b=this.element.getElementsByTagName("title")[0];b||(b=p.createElementNS(this.SVG_NS,"title"),this.element.appendChild(b));b.firstChild&&b.removeChild(b.firstChild);b.appendChild(p.createTextNode(String(n(a,
"")).replace(/<[^>]*>/g,"").replace(/&lt;/g,"<").replace(/&gt;/g,">")))},textSetter:function(a){a!==this.textStr&&(delete this.bBox,delete this.textPxLength,this.textStr=a,this.added&&this.renderer.buildText(this))},setTextPath:function(a,b){var d=this.element,e={textAnchor:"text-anchor"},m=!1,D=this.textPathWrapper,k=!D;b=A(!0,{enabled:!0,attributes:{dy:-5,startOffset:"50%",textAnchor:"middle"}},b);var l=b.attributes;if(a&&b&&b.enabled){this.options&&this.options.padding&&(l.dx=-this.options.padding);
D||(this.textPathWrapper=D=this.renderer.createElement("textPath"),m=!0);var g=D.element;(b=a.element.getAttribute("id"))||a.element.setAttribute("id",b=c.uniqueKey());if(k)for(a=d.getElementsByTagName("tspan");a.length;)a[0].setAttribute("y",0),g.appendChild(a[0]);m&&D.add({element:this.text?this.text.element:d});g.setAttributeNS("http://www.w3.org/1999/xlink","href",this.renderer.url+"#"+b);G(l.dy)&&(g.parentNode.setAttribute("dy",l.dy),delete l.dy);G(l.dx)&&(g.parentNode.setAttribute("dx",l.dx),
delete l.dx);h(l,function(a,b){g.setAttribute(e[b]||b,a)});d.removeAttribute("transform");this.removeTextOutline.call(D,[].slice.call(d.getElementsByTagName("tspan")));this.text&&!this.renderer.styledMode&&this.attr({fill:"none","stroke-width":0});this.applyTextOutline=this.updateTransform=w}else D&&(delete this.updateTransform,delete this.applyTextOutline,this.destroyTextPath(d,a));return this},destroyTextPath:function(a,b){var d;b.element.setAttribute("id","");for(d=this.textPathWrapper.element.childNodes;d.length;)a.firstChild.appendChild(d[0]);
a.firstChild.removeChild(this.textPathWrapper.element);delete b.textPathWrapper},fillSetter:function(a,b,d){"string"===typeof a?d.setAttribute(b,a):a&&this.complexColor(a,b,d)},visibilitySetter:function(a,b,d){"inherit"===a?d.removeAttribute(b):this[b]!==a&&d.setAttribute(b,a);this[b]=a},zIndexSetter:function(a,b){var d=this.renderer,e=this.parentGroup,m=(e||d).element||d.box,w=this.element,k=!1;d=m===d.box;var D=this.added;var l;G(a)?(w.setAttribute("data-z-index",a),a=+a,this[b]===a&&(D=!1)):G(this[b])&&
w.removeAttribute("data-z-index");this[b]=a;if(D){(a=this.zIndex)&&e&&(e.handleZ=!0);b=m.childNodes;for(l=b.length-1;0<=l&&!k;l--){e=b[l];D=e.getAttribute("data-z-index");var g=!G(D);if(e!==w)if(0>a&&g&&!d&&!l)m.insertBefore(w,b[l]),k=!0;else if(q(D)<=a||g&&(!G(a)||0<=a))m.insertBefore(w,b[l+1]||null),k=!0}k||(m.insertBefore(w,b[d?3:0]||null),k=!0)}return k},_defaultSetter:function(a,b,d){d.setAttribute(b,a)}});O.prototype.yGetter=O.prototype.xGetter;O.prototype.translateXSetter=O.prototype.translateYSetter=
O.prototype.rotationSetter=O.prototype.verticalAlignSetter=O.prototype.rotationOriginXSetter=O.prototype.rotationOriginYSetter=O.prototype.scaleXSetter=O.prototype.scaleYSetter=O.prototype.matrixSetter=function(a,b){this[b]=a;this.doTransform=!0};O.prototype["stroke-widthSetter"]=O.prototype.strokeSetter=function(a,b,d){this[b]=a;this.stroke&&this["stroke-width"]?(O.prototype.fillSetter.call(this,this.stroke,"stroke",d),d.setAttribute("stroke-width",this["stroke-width"]),this.hasStroke=!0):"stroke-width"===
b&&0===a&&this.hasStroke?(d.removeAttribute("stroke"),this.hasStroke=!1):this.renderer.styledMode&&this["stroke-width"]&&(d.setAttribute("stroke-width",this["stroke-width"]),this.hasStroke=!0)};f=c.SVGRenderer=function(){this.init.apply(this,arguments)};t(f.prototype,{Element:O,SVG_NS:U,init:function(a,d,e,m,w,g,r){var D=this.createElement("svg").attr({version:"1.1","class":"highcharts-root"});r||D.css(this.getStyle(m));m=D.element;a.appendChild(m);F(a,"dir","ltr");-1===a.innerHTML.indexOf("xmlns")&&
F(m,"xmlns",this.SVG_NS);this.isSVG=!0;this.box=m;this.boxWrapper=D;this.alignedObjects=[];this.url=(k||x)&&p.getElementsByTagName("base").length?Q.location.href.split("#")[0].replace(/<[^>]*>/g,"").replace(/([\('\)])/g,"\\$1").replace(/ /g,"%20"):"";this.createElement("desc").add().element.appendChild(p.createTextNode("Created with Highcharts 7.2.1"));this.defs=this.createElement("defs").add();this.allowHTML=g;this.forExport=w;this.styledMode=r;this.gradients={};this.cache={};this.cacheKeys=[];this.imgCount=
0;this.setSize(d,e,!1);var c;k&&a.getBoundingClientRect&&(d=function(){l(a,{left:0,top:0});c=a.getBoundingClientRect();l(a,{left:Math.ceil(c.left)-c.left+"px",top:Math.ceil(c.top)-c.top+"px"})},d(),this.unSubPixelFix=b(Q,"resize",d))},definition:function(a){function b(a,e){var m;g(a).forEach(function(a){var w=d.createElement(a.tagName),k={};h(a,function(a,b){"tagName"!==b&&"children"!==b&&"textContent"!==b&&(k[b]=a)});w.attr(k);w.add(e||d.defs);a.textContent&&w.element.appendChild(p.createTextNode(a.textContent));
b(a.children||[],w);m=w});return m}var d=this;return b(a)},getStyle:function(a){return this.style=t({fontFamily:'"Lucida Grande", "Lucida Sans Unicode", Arial, Helvetica, sans-serif',fontSize:"12px"},a)},setStyle:function(a){this.boxWrapper.css(this.getStyle(a))},isHidden:function(){return!this.boxWrapper.getBBox().width},destroy:function(){var a=this.defs;this.box=null;this.boxWrapper=this.boxWrapper.destroy();z(this.gradients||{});this.gradients=null;a&&(this.defs=a.destroy());this.unSubPixelFix&&
this.unSubPixelFix();return this.alignedObjects=null},createElement:function(a){var b=new this.Element;b.init(this,a);return b},draw:w,getRadialAttr:function(a,b){return{cx:a[0]-a[2]/2+b.cx*a[2],cy:a[1]-a[2]/2+b.cy*a[2],r:b.r*a[2]}},truncate:function(a,b,d,e,m,w,k){var l=this,D=a.rotation,g,r=e?1:0,c=(d||e).length,x=c,J=[],K=function(a){b.firstChild&&b.removeChild(b.firstChild);a&&b.appendChild(p.createTextNode(a))},N=function(w,D){D=D||w;if(void 0===J[D])if(b.getSubStringLength)try{J[D]=m+b.getSubStringLength(0,
e?D+1:D)}catch(ba){""}else l.getSpanWidth&&(K(k(d||e,w)),J[D]=m+l.getSpanWidth(a,b));return J[D]},A;a.rotation=0;var h=N(b.textContent.length);if(A=m+h>w){for(;r<=c;)x=Math.ceil((r+c)/2),e&&(g=k(e,x)),h=N(x,g&&g.length-1),r===c?r=c+1:h>w?c=x-1:r=x;0===c?K(""):d&&c===d.length-1||K(g||k(d||e,x))}e&&e.splice(0,x);a.actualWidth=h;a.rotation=D;return A},escapes:{"&":"&amp;","<":"&lt;",">":"&gt;","'":"&#39;",'"':"&quot;"},buildText:function(a){var b=a.element,d=this,e=d.forExport,m=n(a.textStr,"").toString(),
w=-1!==m.indexOf("<"),k=b.childNodes,D,g=F(b,"x"),r=a.styles,c=a.textWidth,x=r&&r.lineHeight,K=r&&r.textOutline,A=r&&"ellipsis"===r.textOverflow,u=r&&"nowrap"===r.whiteSpace,L=r&&r.fontSize,E,f=k.length;r=c&&!a.added&&this.box;var S=function(a){var m;d.styledMode||(m=/(px|em)$/.test(a&&a.style.fontSize)?a.style.fontSize:L||d.style.fontSize||12);return x?q(x):d.fontMetrics(m,a.getAttribute("style")?a:b).h},v=function(a,b){h(d.escapes,function(d,m){b&&-1!==b.indexOf(d)||(a=a.toString().replace(new RegExp(d,
"g"),m))});return a},O=function(a,b){var d=a.indexOf("<");a=a.substring(d,a.indexOf(">")-d);d=a.indexOf(b+"=");if(-1!==d&&(d=d+b.length+1,b=a.charAt(d),'"'===b||"'"===b))return a=a.substring(d+1),a.substring(0,a.indexOf(b))},Q=/<br.*?>/g;var t=[m,A,u,x,K,L,c].join();if(t!==a.textCache){for(a.textCache=t;f--;)b.removeChild(k[f]);w||K||A||c||-1!==m.indexOf(" ")&&(!u||Q.test(m))?(r&&r.appendChild(b),w?(m=d.styledMode?m.replace(/<(b|strong)>/g,'<span class="highcharts-strong">').replace(/<(i|em)>/g,'<span class="highcharts-emphasized">'):
m.replace(/<(b|strong)>/g,'<span style="font-weight:bold">').replace(/<(i|em)>/g,'<span style="font-style:italic">'),m=m.replace(/<a/g,"<span").replace(/<\/(b|strong|i|em|a)>/g,"</span>").split(Q)):m=[m],m=m.filter(function(a){return""!==a}),m.forEach(function(m,w){var k=0,r=0;m=m.replace(/^\s+|\s+$/g,"").replace(/<span/g,"|||<span").replace(/<\/span>/g,"</span>|||");var x=m.split("|||");x.forEach(function(m){if(""!==m||1===x.length){var K={},N=p.createElementNS(d.SVG_NS,"tspan"),h,n;(h=O(m,"class"))&&
F(N,"class",h);if(h=O(m,"style"))h=h.replace(/(;| |^)color([ :])/,"$1fill$2"),F(N,"style",h);(n=O(m,"href"))&&!e&&(F(N,"onclick",'location.href="'+n+'"'),F(N,"class","highcharts-anchor"),d.styledMode||l(N,{cursor:"pointer"}));m=v(m.replace(/<[a-zA-Z\/](.|\n)*?>/g,"")||" ");if(" "!==m){N.appendChild(p.createTextNode(m));k?K.dx=0:w&&null!==g&&(K.x=g);F(N,K);b.appendChild(N);!k&&E&&(!J&&e&&l(N,{display:"block"}),F(N,"dy",S(N)));if(c){var T=m.replace(/([^\^])-/g,"$1- ").split(" ");K=!u&&(1<x.length||
w||1<T.length);n=0;var f=S(N);if(A)D=d.truncate(a,N,m,void 0,0,Math.max(0,c-parseInt(L||12,10)),function(a,b){return a.substring(0,b)+"\u2026"});else if(K)for(;T.length;)T.length&&!u&&0<n&&(N=p.createElementNS(U,"tspan"),F(N,{dy:f,x:g}),h&&F(N,"style",h),N.appendChild(p.createTextNode(T.join(" ").replace(/- /g,"-"))),b.appendChild(N)),d.truncate(a,N,null,T,0===n?r:0,c,function(a,b){return T.slice(0,b).join(" ").replace(/- /g,"-")}),r=a.actualWidth,n++}k++}}});E=E||b.childNodes.length}),A&&D&&a.attr("title",
v(a.textStr,["&lt;","&gt;"])),r&&r.removeChild(b),K&&a.applyTextOutline&&a.applyTextOutline(K)):b.appendChild(p.createTextNode(v(m)))}},getContrast:function(a){a=e(a).rgba;a[0]*=1;a[1]*=1.2;a[2]*=.5;return 459<a[0]+a[1]+a[2]?"#000000":"#FFFFFF"},button:function(a,d,m,e,w,k,l,g,c,x){var D=this.label(a,d,m,c,null,null,x,null,"button"),p=0,K=this.styledMode;D.attr(A({padding:8,r:2},w));if(!K){w=A({fill:"#f7f7f7",stroke:"#cccccc","stroke-width":1,style:{color:"#333333",cursor:"pointer",fontWeight:"normal"}},
w);var J=w.style;delete w.style;k=A(w,{fill:"#e6e6e6"},k);var N=k.style;delete k.style;l=A(w,{fill:"#e6ebf5",style:{color:"#000000",fontWeight:"bold"}},l);var h=l.style;delete l.style;g=A(w,{style:{color:"#cccccc"}},g);var u=g.style;delete g.style}b(D.element,r?"mouseover":"mouseenter",function(){3!==p&&D.setState(1)});b(D.element,r?"mouseout":"mouseleave",function(){3!==p&&D.setState(p)});D.setState=function(a){1!==a&&(D.state=p=a);D.removeClass(/highcharts-button-(normal|hover|pressed|disabled)/).addClass("highcharts-button-"+
["normal","hover","pressed","disabled"][a||0]);K||D.attr([w,k,l,g][a||0]).css([J,N,h,u][a||0])};K||D.attr(w).css(t({cursor:"default"},J));return D.on("click",function(a){3!==p&&e.call(D,a)})},crispLine:function(a,b){a[1]===a[4]&&(a[1]=a[4]=Math.round(a[1])-b%2/2);a[2]===a[5]&&(a[2]=a[5]=Math.round(a[2])+b%2/2);return a},path:function(a){var b=this.styledMode?{}:{fill:"none"};v(a)?b.d=a:H(a)&&t(b,a);return this.createElement("path").attr(b)},circle:function(a,b,d){a=H(a)?a:void 0===a?{}:{x:a,y:b,r:d};
b=this.createElement("circle");b.xSetter=b.ySetter=function(a,b,d){d.setAttribute("c"+b,a)};return b.attr(a)},arc:function(a,b,d,m,e,w){H(a)?(m=a,b=m.y,d=m.r,a=m.x):m={innerR:m,start:e,end:w};a=this.symbol("arc",a,b,d,d,m);a.r=d;return a},rect:function(a,b,d,m,e,w){e=H(a)?a.r:e;var k=this.createElement("rect");a=H(a)?a:void 0===a?{}:{x:a,y:b,width:Math.max(d,0),height:Math.max(m,0)};this.styledMode||(void 0!==w&&(a.strokeWidth=w,a=k.crisp(a)),a.fill="none");e&&(a.r=e);k.rSetter=function(a,b,d){k.r=
a;F(d,{rx:a,ry:a})};k.rGetter=function(){return k.r};return k.attr(a)},setSize:function(a,b,d){var m=this.alignedObjects,e=m.length;this.width=a;this.height=b;for(this.boxWrapper.animate({width:a,height:b},{step:function(){this.attr({viewBox:"0 0 "+this.attr("width")+" "+this.attr("height")})},duration:n(d,!0)?void 0:0});e--;)m[e].align()},g:function(a){var b=this.createElement("g");return a?b.attr({"class":"highcharts-"+a}):b},image:function(a,d,m,e,w,k){var l={preserveAspectRatio:"none"},g=function(a,
b){a.setAttributeNS?a.setAttributeNS("http://www.w3.org/1999/xlink","href",b):a.setAttribute("hc-svg-href",b)},r=function(b){g(c.element,a);k.call(c,b)};1<arguments.length&&t(l,{x:d,y:m,width:e,height:w});var c=this.createElement("image").attr(l);k?(g(c.element,"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="),l=new Q.Image,b(l,"load",r),l.src=a,l.complete&&r({})):g(c.element,a);return c},symbol:function(a,b,m,e,w,k){var g=this,r=/^url\((.*?)\)$/,c=r.test(a),D=!c&&(this.symbols[a]?
a:"circle"),x=D&&this.symbols[D],K=G(b)&&x&&x.call(this.symbols,Math.round(b),Math.round(m),e,w,k);if(x){var J=this.path(K);g.styledMode||J.attr("fill","none");t(J,{symbolName:D,x:b,y:m,width:e,height:w});k&&t(J,k)}else if(c){var A=a.match(r)[1];J=this.image(A);J.imgwidth=n(S[A]&&S[A].width,k&&k.width);J.imgheight=n(S[A]&&S[A].height,k&&k.height);var h=function(){J.attr({width:J.width,height:J.height})};["width","height"].forEach(function(a){J[a+"Setter"]=function(a,b){var d={},m=this["img"+b],e=
"width"===b?"translateX":"translateY";this[b]=a;G(m)&&(k&&"within"===k.backgroundSize&&this.width&&this.height&&(m=Math.round(m*Math.min(this.width/this.imgwidth,this.height/this.imgheight))),this.element&&this.element.setAttribute(b,m),this.alignByTranslate||(d[e]=((this[b]||0)-m)/2,this.attr(d)))}});G(b)&&J.attr({x:b,y:m});J.isImg=!0;G(J.imgwidth)&&G(J.imgheight)?h():(J.attr({width:0,height:0}),L("img",{onload:function(){var a=d[g.chartIndex];0===this.width&&(l(this,{position:"absolute",top:"-999em"}),
p.body.appendChild(this));S[A]={width:this.width,height:this.height};J.imgwidth=this.width;J.imgheight=this.height;J.element&&h();this.parentNode&&this.parentNode.removeChild(this);g.imgCount--;if(!g.imgCount&&a&&a.onload)a.onload()},src:A}),this.imgCount++)}return J},symbols:{circle:function(a,b,d,m){return this.arc(a+d/2,b+m/2,d/2,m/2,{start:.5*Math.PI,end:2.5*Math.PI,open:!1})},square:function(a,b,d,m){return["M",a,b,"L",a+d,b,a+d,b+m,a,b+m,"Z"]},triangle:function(a,b,d,m){return["M",a+d/2,b,"L",
a+d,b+m,a,b+m,"Z"]},"triangle-down":function(a,b,d,m){return["M",a,b,"L",a+d,b,a+d/2,b+m,"Z"]},diamond:function(a,b,d,m){return["M",a+d/2,b,"L",a+d,b+m/2,a+d/2,b+m,a,b+m/2,"Z"]},arc:function(a,b,d,m,e){var w=e.start,k=e.r||d,l=e.r||m||d,g=e.end-.001;d=e.innerR;m=n(e.open,.001>Math.abs(e.end-e.start-2*Math.PI));var r=Math.cos(w),c=Math.sin(w),x=Math.cos(g);g=Math.sin(g);w=.001>e.end-w-Math.PI?0:1;e=["M",a+k*r,b+l*c,"A",k,l,0,w,n(e.clockwise,1),a+k*x,b+l*g];G(d)&&e.push(m?"M":"L",a+d*x,b+d*g,"A",d,
d,0,w,0,a+d*r,b+d*c);e.push(m?"":"Z");return e},callout:function(a,b,d,m,e){var w=Math.min(e&&e.r||0,d,m),k=w+6,l=e&&e.anchorX;e=e&&e.anchorY;var g=["M",a+w,b,"L",a+d-w,b,"C",a+d,b,a+d,b,a+d,b+w,"L",a+d,b+m-w,"C",a+d,b+m,a+d,b+m,a+d-w,b+m,"L",a+w,b+m,"C",a,b+m,a,b+m,a,b+m-w,"L",a,b+w,"C",a,b,a,b,a+w,b];l&&l>d?e>b+k&&e<b+m-k?g.splice(13,3,"L",a+d,e-6,a+d+6,e,a+d,e+6,a+d,b+m-w):g.splice(13,3,"L",a+d,m/2,l,e,a+d,m/2,a+d,b+m-w):l&&0>l?e>b+k&&e<b+m-k?g.splice(33,3,"L",a,e+6,a-6,e,a,e-6,a,b+w):g.splice(33,
3,"L",a,m/2,l,e,a,m/2,a,b+w):e&&e>m&&l>a+k&&l<a+d-k?g.splice(23,3,"L",l+6,b+m,l,b+m+6,l-6,b+m,a+w,b+m):e&&0>e&&l>a+k&&l<a+d-k&&g.splice(3,3,"L",l-6,b,l,b-6,l+6,b,d-w,b);return g}},clipRect:function(a,b,d,m){var e=c.uniqueKey()+"-",w=this.createElement("clipPath").attr({id:e}).add(this.defs);a=this.rect(a,b,d,m,0).add(w);a.id=e;a.clipPath=w;a.count=0;return a},text:function(a,b,d,m){var e={};if(m&&(this.allowHTML||!this.forExport))return this.html(a,b,d);e.x=Math.round(b||0);d&&(e.y=Math.round(d));
G(a)&&(e.text=a);a=this.createElement("text").attr(e);m||(a.xSetter=function(a,b,d){var m=d.getElementsByTagName("tspan"),e=d.getAttribute(b),w;for(w=0;w<m.length;w++){var k=m[w];k.getAttribute(b)===e&&k.setAttribute(b,a)}d.setAttribute(b,a)});return a},fontMetrics:function(a,b){a=!this.styledMode&&/px/.test(a)||!Q.getComputedStyle?a||b&&b.style&&b.style.fontSize||this.style&&this.style.fontSize:b&&O.prototype.getStyle.call(b,"font-size");a=/px/.test(a)?q(a):12;b=24>a?a+3:Math.round(1.2*a);return{h:b,
b:Math.round(.8*b),f:a}},rotCorr:function(a,b,d){var m=a;b&&d&&(m=Math.max(m*Math.cos(b*E),4));return{x:-a/3*Math.sin(b*E),y:m}},label:function(a,b,d,e,w,k,l,g,r){var c=this,x=c.styledMode,J=c.g("button"!==r&&"label"),p=J.text=c.text("",0,0,l).attr({zIndex:1}),K,h,D=0,u=3,L=0,n,N,E,U,f,q={},T,S,v=/^url\((.*?)\)$/.test(e),Q=x||v,y=function(){return x?K.strokeWidth()%2/2:(T?parseInt(T,10):0)%2/2};r&&J.addClass("highcharts-"+r);var R=function(){var a=p.element.style,b={};h=(void 0===n||void 0===N||f)&&
G(p.textStr)&&p.getBBox();J.width=(n||h.width||0)+2*u+L;J.height=(N||h.height||0)+2*u;S=u+Math.min(c.fontMetrics(a&&a.fontSize,p).b,h?h.height:Infinity);Q&&(K||(J.box=K=c.symbols[e]||v?c.symbol(e):c.rect(),K.addClass(("button"===r?"":"highcharts-label-box")+(r?" highcharts-"+r+"-box":"")),K.add(J),a=y(),b.x=a,b.y=(g?-S:0)+a),b.width=Math.round(J.width),b.height=Math.round(J.height),K.attr(t(b,q)),q={})};var B=function(){var a=L+u;var b=g?0:S;G(n)&&h&&("center"===f||"right"===f)&&(a+={center:.5,right:1}[f]*
(n-h.width));if(a!==p.x||b!==p.y)p.attr("x",a),p.hasBoxWidthChanged&&(h=p.getBBox(!0),R()),void 0!==b&&p.attr("y",b);p.x=a;p.y=b};var V=function(a,b){K?K.attr(a,b):q[a]=b};J.onAdd=function(){p.add(J);J.attr({text:a||0===a?a:"",x:b,y:d});K&&G(w)&&J.attr({anchorX:w,anchorY:k})};J.widthSetter=function(a){n=C(a)?a:null};J.heightSetter=function(a){N=a};J["text-alignSetter"]=function(a){f=a};J.paddingSetter=function(a){G(a)&&a!==u&&(u=J.padding=a,B())};J.paddingLeftSetter=function(a){G(a)&&a!==L&&(L=a,
B())};J.alignSetter=function(a){a={left:0,center:.5,right:1}[a];a!==D&&(D=a,h&&J.attr({x:E}))};J.textSetter=function(a){void 0!==a&&p.attr({text:a});R();B()};J["stroke-widthSetter"]=function(a,b){a&&(Q=!0);T=this["stroke-width"]=a;V(b,a)};x?J.rSetter=function(a,b){V(b,a)}:J.strokeSetter=J.fillSetter=J.rSetter=function(a,b){"r"!==b&&("fill"===b&&a&&(Q=!0),J[b]=a);V(b,a)};J.anchorXSetter=function(a,b){w=J.anchorX=a;V(b,Math.round(a)-y()-E)};J.anchorYSetter=function(a,b){k=J.anchorY=a;V(b,a-U)};J.xSetter=
function(a){J.x=a;D&&(a-=D*((n||h.width)+2*u),J["forceAnimate:x"]=!0);E=Math.round(a);J.attr("translateX",E)};J.ySetter=function(a){U=J.y=Math.round(a);J.attr("translateY",U)};var H=J.css;l={css:function(a){if(a){var b={};a=A(a);J.textProps.forEach(function(d){void 0!==a[d]&&(b[d]=a[d],delete a[d])});p.css(b);"width"in b&&R();"fontSize"in b&&(R(),B())}return H.call(J,a)},getBBox:function(){return{width:h.width+2*u,height:h.height+2*u,x:h.x-u,y:h.y-u}},destroy:function(){m(J.element,"mouseenter");
m(J.element,"mouseleave");p&&(p=p.destroy());K&&(K=K.destroy());O.prototype.destroy.call(J);J=c=R=B=V=null}};x||(l.shadow=function(a){a&&(R(),K&&K.shadow(a));return J});return t(J,l)}});c.Renderer=f});M(I,"parts/Html.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.attr,G=f.defined,z=f.extend,B=f.pick,t=f.pInt,v=c.createElement,C=c.css,H=c.isFirefox,y=c.isMS,h=c.isWebKit,n=c.SVGElement;f=c.SVGRenderer;var q=c.win;z(n.prototype,{htmlCss:function(g){var b="SPAN"===this.element.tagName&&
g&&"width"in g,a=B(b&&g.width,void 0);if(b){delete g.width;this.textWidth=a;var d=!0}g&&"ellipsis"===g.textOverflow&&(g.whiteSpace="nowrap",g.overflow="hidden");this.styles=z(this.styles,g);C(this.element,g);d&&this.htmlUpdateTransform();return this},htmlGetBBox:function(){var g=this.element;return{x:g.offsetLeft,y:g.offsetTop,width:g.offsetWidth,height:g.offsetHeight}},htmlUpdateTransform:function(){if(this.added){var g=this.renderer,b=this.element,a=this.translateX||0,d=this.translateY||0,e=this.x||
0,l=this.y||0,c=this.textAlign||"left",h={left:0,center:.5,right:1}[c],p=this.styles,u=p&&p.whiteSpace;C(b,{marginLeft:a,marginTop:d});!g.styledMode&&this.shadows&&this.shadows.forEach(function(b){C(b,{marginLeft:a+1,marginTop:d+1})});this.inverted&&[].forEach.call(b.childNodes,function(a){g.invertChild(a,b)});if("SPAN"===b.tagName){p=this.rotation;var k=this.textWidth&&t(this.textWidth),r=[p,c,b.innerHTML,this.textWidth,this.textAlign].join(),x;(x=k!==this.oldTextWidth)&&!(x=k>this.oldTextWidth)&&
((x=this.textPxLength)||(C(b,{width:"",whiteSpace:u||"nowrap"}),x=b.offsetWidth),x=x>k);x&&(/[ \-]/.test(b.textContent||b.innerText)||"ellipsis"===b.style.textOverflow)?(C(b,{width:k+"px",display:"block",whiteSpace:u||"normal"}),this.oldTextWidth=k,this.hasBoxWidthChanged=!0):this.hasBoxWidthChanged=!1;r!==this.cTT&&(u=g.fontMetrics(b.style.fontSize,b).b,!G(p)||p===(this.oldRotation||0)&&c===this.oldAlign||this.setSpanRotation(p,h,u),this.getSpanCorrection(!G(p)&&this.textPxLength||b.offsetWidth,
u,h,p,c));C(b,{left:e+(this.xCorr||0)+"px",top:l+(this.yCorr||0)+"px"});this.cTT=r;this.oldRotation=p;this.oldAlign=c}}else this.alignOnAdd=!0},setSpanRotation:function(g,b,a){var d={},e=this.renderer.getTransformKey();d[e]=d.transform="rotate("+g+"deg)";d[e+(H?"Origin":"-origin")]=d.transformOrigin=100*b+"% "+a+"px";C(this.element,d)},getSpanCorrection:function(g,b,a){this.xCorr=-g*a;this.yCorr=-b}});z(f.prototype,{getTransformKey:function(){return y&&!/Edge/.test(q.navigator.userAgent)?"-ms-transform":
h?"-webkit-transform":H?"MozTransform":q.opera?"-o-transform":""},html:function(g,b,a){var d=this.createElement("span"),e=d.element,l=d.renderer,c=l.isSVG,h=function(a,b){["opacity","visibility"].forEach(function(d){a[d+"Setter"]=function(e,k,l){var w=a.div?a.div.style:b;n.prototype[d+"Setter"].call(this,e,k,l);w&&(w[k]=e)}});a.addedSetters=!0};d.textSetter=function(a){a!==e.innerHTML&&(delete this.bBox,delete this.oldTextWidth);this.textStr=a;e.innerHTML=B(a,"");d.doTransform=!0};c&&h(d,d.element.style);
d.xSetter=d.ySetter=d.alignSetter=d.rotationSetter=function(a,b){"align"===b&&(b="textAlign");d[b]=a;d.doTransform=!0};d.afterSetters=function(){this.doTransform&&(this.htmlUpdateTransform(),this.doTransform=!1)};d.attr({text:g,x:Math.round(b),y:Math.round(a)}).css({position:"absolute"});l.styledMode||d.css({fontFamily:this.style.fontFamily,fontSize:this.style.fontSize});e.style.whiteSpace="nowrap";d.css=d.htmlCss;c&&(d.add=function(a){var b=l.box.parentNode,k=[];if(this.parentGroup=a){var g=a.div;
if(!g){for(;a;)k.push(a),a=a.parentGroup;k.reverse().forEach(function(a){function e(b,d){a[d]=b;"translateX"===d?m.left=b+"px":m.top=b+"px";a.doTransform=!0}var w=F(a.element,"class");g=a.div=a.div||v("div",w?{className:w}:void 0,{position:"absolute",left:(a.translateX||0)+"px",top:(a.translateY||0)+"px",display:a.display,opacity:a.opacity,pointerEvents:a.styles&&a.styles.pointerEvents},g||b);var m=g.style;z(a,{classSetter:function(a){return function(b){this.element.setAttribute("class",b);a.className=
b}}(g),on:function(){k[0].div&&d.on.apply({element:k[0].div},arguments);return a},translateXSetter:e,translateYSetter:e});a.addedSetters||h(a)})}}else g=b;g.appendChild(e);d.added=!0;d.alignOnAdd&&d.htmlUpdateTransform();return d});return d}})});M(I,"parts/Time.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.defined,G=f.extend,z=f.isObject,B=f.objectEach,t=f.pick,v=f.splat,C=c.merge,H=c.timeUnits,y=c.win;c.Time=function(c){this.update(c,!1)};c.Time.prototype={defaultOptions:{Date:void 0,
getTimezoneOffset:void 0,timezone:void 0,timezoneOffset:0,useUTC:!0},update:function(c){var h=t(c&&c.useUTC,!0),f=this;this.options=c=C(!0,this.options||{},c);this.Date=c.Date||y.Date||Date;this.timezoneOffset=(this.useUTC=h)&&c.timezoneOffset;this.getTimezoneOffset=this.timezoneOffsetFunction();(this.variableTimezone=!(h&&!c.getTimezoneOffset&&!c.timezone))||this.timezoneOffset?(this.get=function(g,b){var a=b.getTime(),d=a-f.getTimezoneOffset(b);b.setTime(d);g=b["getUTC"+g]();b.setTime(a);return g},
this.set=function(g,b,a){if("Milliseconds"===g||"Seconds"===g||"Minutes"===g&&0===b.getTimezoneOffset()%60)b["set"+g](a);else{var d=f.getTimezoneOffset(b);d=b.getTime()-d;b.setTime(d);b["setUTC"+g](a);g=f.getTimezoneOffset(b);d=b.getTime()+g;b.setTime(d)}}):h?(this.get=function(g,b){return b["getUTC"+g]()},this.set=function(g,b,a){return b["setUTC"+g](a)}):(this.get=function(g,b){return b["get"+g]()},this.set=function(g,b,a){return b["set"+g](a)})},makeTime:function(h,n,f,g,b,a){if(this.useUTC){var d=
this.Date.UTC.apply(0,arguments);var e=this.getTimezoneOffset(d);d+=e;var l=this.getTimezoneOffset(d);e!==l?d+=l-e:e-36E5!==this.getTimezoneOffset(d-36E5)||c.isSafari||(d-=36E5)}else d=(new this.Date(h,n,t(f,1),t(g,0),t(b,0),t(a,0))).getTime();return d},timezoneOffsetFunction:function(){var h=this,n=this.options,f=y.moment;if(!this.useUTC)return function(g){return 6E4*(new Date(g)).getTimezoneOffset()};if(n.timezone){if(f)return function(g){return 6E4*-f.tz(g,n.timezone).utcOffset()};c.error(25)}return this.useUTC&&
n.getTimezoneOffset?function(g){return 6E4*n.getTimezoneOffset(g)}:function(){return 6E4*(h.timezoneOffset||0)}},dateFormat:function(h,n,f){if(!F(n)||isNaN(n))return c.defaultOptions.lang.invalidDate||"";h=t(h,"%Y-%m-%d %H:%M:%S");var g=this,b=new this.Date(n),a=this.get("Hours",b),d=this.get("Day",b),e=this.get("Date",b),l=this.get("Month",b),L=this.get("FullYear",b),E=c.defaultOptions.lang,p=E.weekdays,u=E.shortWeekdays,k=c.pad;b=G({a:u?u[d]:p[d].substr(0,3),A:p[d],d:k(e),e:k(e,2," "),w:d,b:E.shortMonths[l],
B:E.months[l],m:k(l+1),o:l+1,y:L.toString().substr(2,2),Y:L,H:k(a),k:a,I:k(a%12||12),l:a%12||12,M:k(g.get("Minutes",b)),p:12>a?"AM":"PM",P:12>a?"am":"pm",S:k(b.getSeconds()),L:k(Math.floor(n%1E3),3)},c.dateFormats);B(b,function(a,b){for(;-1!==h.indexOf("%"+b);)h=h.replace("%"+b,"function"===typeof a?a.call(g,n):a)});return f?h.substr(0,1).toUpperCase()+h.substr(1):h},resolveDTLFormat:function(c){return z(c,!0)?c:(c=v(c),{main:c[0],from:c[1],to:c[2]})},getTimeTicks:function(c,n,f,g){var b=this,a=[],
d={};var e=new b.Date(n);var l=c.unitRange,h=c.count||1,E;g=t(g,1);if(F(n)){b.set("Milliseconds",e,l>=H.second?0:h*Math.floor(b.get("Milliseconds",e)/h));l>=H.second&&b.set("Seconds",e,l>=H.minute?0:h*Math.floor(b.get("Seconds",e)/h));l>=H.minute&&b.set("Minutes",e,l>=H.hour?0:h*Math.floor(b.get("Minutes",e)/h));l>=H.hour&&b.set("Hours",e,l>=H.day?0:h*Math.floor(b.get("Hours",e)/h));l>=H.day&&b.set("Date",e,l>=H.month?1:Math.max(1,h*Math.floor(b.get("Date",e)/h)));if(l>=H.month){b.set("Month",e,l>=
H.year?0:h*Math.floor(b.get("Month",e)/h));var p=b.get("FullYear",e)}l>=H.year&&b.set("FullYear",e,p-p%h);l===H.week&&(p=b.get("Day",e),b.set("Date",e,b.get("Date",e)-p+g+(p<g?-7:0)));p=b.get("FullYear",e);g=b.get("Month",e);var u=b.get("Date",e),k=b.get("Hours",e);n=e.getTime();b.variableTimezone&&(E=f-n>4*H.month||b.getTimezoneOffset(n)!==b.getTimezoneOffset(f));n=e.getTime();for(e=1;n<f;)a.push(n),n=l===H.year?b.makeTime(p+e*h,0):l===H.month?b.makeTime(p,g+e*h):!E||l!==H.day&&l!==H.week?E&&l===
H.hour&&1<h?b.makeTime(p,g,u,k+e*h):n+l*h:b.makeTime(p,g,u+e*h*(l===H.day?1:7)),e++;a.push(n);l<=H.hour&&1E4>a.length&&a.forEach(function(a){0===a%18E5&&"000000000"===b.dateFormat("%H%M%S%L",a)&&(d[a]="day")})}a.info=G(c,{higherRanks:d,totalRange:l*h});return a}}});M(I,"parts/Options.js",[I["parts/Globals.js"]],function(c){var f=c.color,F=c.merge;c.defaultOptions={colors:"#7cb5ec #434348 #90ed7d #f7a35c #8085e9 #f15c80 #e4d354 #2b908f #f45b5b #91e8e1".split(" "),symbols:["circle","diamond","square",
"triangle","triangle-down"],lang:{loading:"Loading...",months:"January February March April May June July August September October November December".split(" "),shortMonths:"Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec".split(" "),weekdays:"Sunday Monday Tuesday Wednesday Thursday Friday Saturday".split(" "),decimalPoint:".",numericSymbols:"kMGTPE".split(""),resetZoom:"Reset zoom",resetZoomTitle:"Reset zoom level 1:1",thousandsSep:" "},global:{},time:c.Time.prototype.defaultOptions,chart:{styledMode:!1,
borderRadius:0,colorCount:10,defaultSeriesType:"line",ignoreHiddenSeries:!0,spacing:[10,10,15,10],resetZoomButton:{theme:{zIndex:6},position:{align:"right",x:-10,y:10}},width:null,height:null,borderColor:"#335cad",backgroundColor:"#ffffff",plotBorderColor:"#cccccc"},title:{text:"Chart title",align:"center",margin:15,widthAdjust:-44},subtitle:{text:"",align:"center",widthAdjust:-44},caption:{margin:15,text:"",align:"left",verticalAlign:"bottom"},plotOptions:{},labels:{style:{position:"absolute",color:"#333333"}},
legend:{enabled:!0,align:"center",alignColumns:!0,layout:"horizontal",labelFormatter:function(){return this.name},borderColor:"#999999",borderRadius:0,navigation:{activeColor:"#003399",inactiveColor:"#cccccc"},itemStyle:{color:"#333333",cursor:"pointer",fontSize:"12px",fontWeight:"bold",textOverflow:"ellipsis"},itemHoverStyle:{color:"#000000"},itemHiddenStyle:{color:"#cccccc"},shadow:!1,itemCheckboxStyle:{position:"absolute",width:"13px",height:"13px"},squareSymbol:!0,symbolPadding:5,verticalAlign:"bottom",
x:0,y:0,title:{style:{fontWeight:"bold"}}},loading:{labelStyle:{fontWeight:"bold",position:"relative",top:"45%"},style:{position:"absolute",backgroundColor:"#ffffff",opacity:.5,textAlign:"center"}},tooltip:{enabled:!0,animation:c.svg,borderRadius:3,dateTimeLabelFormats:{millisecond:"%A, %b %e, %H:%M:%S.%L",second:"%A, %b %e, %H:%M:%S",minute:"%A, %b %e, %H:%M",hour:"%A, %b %e, %H:%M",day:"%A, %b %e, %Y",week:"Week from %A, %b %e, %Y",month:"%B %Y",year:"%Y"},footerFormat:"",padding:8,snap:c.isTouchDevice?
25:10,headerFormat:'<span style="font-size: 10px">{point.key}</span><br/>',pointFormat:'<span style="color:{point.color}">\u25cf</span> {series.name}: <b>{point.y}</b><br/>',backgroundColor:f("#f7f7f7").setOpacity(.85).get(),borderWidth:1,shadow:!0,style:{color:"#333333",cursor:"default",fontSize:"12px",pointerEvents:"none",whiteSpace:"nowrap"}},credits:{enabled:!0,href:"https://www.highcharts.com?credits",position:{align:"right",x:-10,verticalAlign:"bottom",y:-5},style:{cursor:"pointer",color:"#999999",
fontSize:"9px"},text:"Highcharts.com"}};c.setOptions=function(f){c.defaultOptions=F(!0,c.defaultOptions,f);(f.time||f.global)&&c.time.update(F(c.defaultOptions.global,c.defaultOptions.time,f.global,f.time));return c.defaultOptions};c.getOptions=function(){return c.defaultOptions};c.defaultPlotOptions=c.defaultOptions.plotOptions;c.time=new c.Time(F(c.defaultOptions.global,c.defaultOptions.time));c.dateFormat=function(f,z,B){return c.time.dateFormat(f,z,B)};""});M(I,"parts/Tick.js",[I["parts/Globals.js"],
I["parts/Utilities.js"]],function(c,f){var F=f.defined,G=f.destroyObjectProperties,z=f.extend,B=f.isNumber,t=f.pick,v=c.correctFloat,C=c.fireEvent,H=c.merge,y=c.deg2rad;c.Tick=function(c,n,f,g,b){this.axis=c;this.pos=n;this.type=f||"";this.isNewLabel=this.isNew=!0;this.parameters=b||{};this.tickmarkOffset=this.parameters.tickmarkOffset;this.options=this.parameters.options;f||g||this.addLabel()};c.Tick.prototype={addLabel:function(){var c=this,n=c.axis,f=n.options,g=n.chart,b=n.categories,a=n.names,
d=c.pos,e=t(c.options&&c.options.labels,f.labels),l=n.tickPositions,L=d===l[0],E=d===l[l.length-1];b=this.parameters.category||(b?t(b[d],a[d],d):d);var p=c.label;l=l.info;var u,k;if(n.isDatetimeAxis&&l){var r=g.time.resolveDTLFormat(f.dateTimeLabelFormats[!f.grid&&l.higherRanks[d]||l.unitName]);var x=r.main}c.isFirst=L;c.isLast=E;c.formatCtx={axis:n,chart:g,isFirst:L,isLast:E,dateTimeLabelFormat:x,tickPositionInfo:l,value:n.isLog?v(n.lin2log(b)):b,pos:d};f=n.labelFormatter.call(c.formatCtx,this.formatCtx);
if(k=r&&r.list)c.shortenLabel=function(){for(u=0;u<k.length;u++)if(p.attr({text:n.labelFormatter.call(z(c.formatCtx,{dateTimeLabelFormat:k[u]}))}),p.getBBox().width<n.getSlotWidth(c)-2*t(e.padding,5))return;p.attr({text:""})};if(F(p))p&&p.textStr!==f&&(!p.textWidth||e.style&&e.style.width||p.styles.width||p.css({width:null}),p.attr({text:f}),p.textPxLength=p.getBBox().width);else{if(c.label=p=F(f)&&e.enabled?g.renderer.text(f,0,0,e.useHTML).add(n.labelGroup):null)g.styledMode||p.css(H(e.style)),p.textPxLength=
p.getBBox().width;c.rotation=0}},getLabelSize:function(){return this.label?this.label.getBBox()[this.axis.horiz?"height":"width"]:0},handleOverflow:function(c){var h=this.axis,f=h.options.labels,g=c.x,b=h.chart.chartWidth,a=h.chart.spacing,d=t(h.labelLeft,Math.min(h.pos,a[3]));a=t(h.labelRight,Math.max(h.isRadial?0:h.pos+h.len,b-a[1]));var e=this.label,l=this.rotation,L={left:0,center:.5,right:1}[h.labelAlign||e.attr("align")],E=e.getBBox().width,p=h.getSlotWidth(this),u=p,k=1,r,x={};if(l||"justify"!==
t(f.overflow,"justify"))0>l&&g-L*E<d?r=Math.round(g/Math.cos(l*y)-d):0<l&&g+L*E>a&&(r=Math.round((b-g)/Math.cos(l*y)));else if(b=g+(1-L)*E,g-L*E<d?u=c.x+u*(1-L)-d:b>a&&(u=a-c.x+u*L,k=-1),u=Math.min(p,u),u<p&&"center"===h.labelAlign&&(c.x+=k*(p-u-L*(p-Math.min(E,u)))),E>u||h.autoRotation&&(e.styles||{}).width)r=u;r&&(this.shortenLabel?this.shortenLabel():(x.width=Math.floor(r),(f.style||{}).textOverflow||(x.textOverflow="ellipsis"),e.css(x)))},getPosition:function(h,n,f,g){var b=this.axis,a=b.chart,
d=g&&a.oldChartHeight||a.chartHeight;h={x:h?c.correctFloat(b.translate(n+f,null,null,g)+b.transB):b.left+b.offset+(b.opposite?(g&&a.oldChartWidth||a.chartWidth)-b.right-b.left:0),y:h?d-b.bottom+b.offset-(b.opposite?b.height:0):c.correctFloat(d-b.translate(n+f,null,null,g)-b.transB)};h.y=Math.max(Math.min(h.y,1E5),-1E5);C(this,"afterGetPosition",{pos:h});return h},getLabelPosition:function(c,n,f,g,b,a,d,e){var l=this.axis,h=l.transA,E=l.isLinked&&l.linkedParent?l.linkedParent.reversed:l.reversed,p=
l.staggerLines,u=l.tickRotCorr||{x:0,y:0},k=b.y,r=g||l.reserveSpaceDefault?0:-l.labelOffset*("center"===l.labelAlign?.5:1),x={};F(k)||(k=0===l.side?f.rotation?-8:-f.getBBox().height:2===l.side?u.y+8:Math.cos(f.rotation*y)*(u.y-f.getBBox(!1,0).height/2));c=c+b.x+r+u.x-(a&&g?a*h*(E?-1:1):0);n=n+k-(a&&!g?a*h*(E?1:-1):0);p&&(f=d/(e||1)%p,l.opposite&&(f=p-f-1),n+=l.labelOffset/p*f);x.x=c;x.y=Math.round(n);C(this,"afterGetLabelPosition",{pos:x,tickmarkOffset:a,index:d});return x},getMarkPath:function(c,
n,f,g,b,a){return a.crispLine(["M",c,n,"L",c+(b?0:-f),n+(b?f:0)],g)},renderGridLine:function(c,n,f){var g=this.axis,b=g.options,a=this.gridLine,d={},e=this.pos,l=this.type,h=t(this.tickmarkOffset,g.tickmarkOffset),E=g.chart.renderer,p=l?l+"Grid":"grid",u=b[p+"LineWidth"],k=b[p+"LineColor"];b=b[p+"LineDashStyle"];a||(g.chart.styledMode||(d.stroke=k,d["stroke-width"]=u,b&&(d.dashstyle=b)),l||(d.zIndex=1),c&&(n=0),this.gridLine=a=E.path().attr(d).addClass("highcharts-"+(l?l+"-":"")+"grid-line").add(g.gridGroup));
if(a&&(f=g.getPlotLinePath({value:e+h,lineWidth:a.strokeWidth()*f,force:"pass",old:c})))a[c||this.isNew?"attr":"animate"]({d:f,opacity:n})},renderMark:function(c,n,f){var g=this.axis,b=g.options,a=g.chart.renderer,d=this.type,e=d?d+"Tick":"tick",l=g.tickSize(e),h=this.mark,E=!h,p=c.x;c=c.y;var u=t(b[e+"Width"],!d&&g.isXAxis?1:0);b=b[e+"Color"];l&&(g.opposite&&(l[0]=-l[0]),E&&(this.mark=h=a.path().addClass("highcharts-"+(d?d+"-":"")+"tick").add(g.axisGroup),g.chart.styledMode||h.attr({stroke:b,"stroke-width":u})),
h[E?"attr":"animate"]({d:this.getMarkPath(p,c,l[0],h.strokeWidth()*f,g.horiz,a),opacity:n}))},renderLabel:function(c,n,f,g){var b=this.axis,a=b.horiz,d=b.options,e=this.label,l=d.labels,h=l.step;b=t(this.tickmarkOffset,b.tickmarkOffset);var E=!0,p=c.x;c=c.y;e&&B(p)&&(e.xy=c=this.getLabelPosition(p,c,e,a,l,b,g,h),this.isFirst&&!this.isLast&&!t(d.showFirstLabel,1)||this.isLast&&!this.isFirst&&!t(d.showLastLabel,1)?E=!1:!a||l.step||l.rotation||n||0===f||this.handleOverflow(c),h&&g%h&&(E=!1),E&&B(c.y)?
(c.opacity=f,e[this.isNewLabel?"attr":"animate"](c),this.isNewLabel=!1):(e.attr("y",-9999),this.isNewLabel=!0))},render:function(h,n,f){var g=this.axis,b=g.horiz,a=this.pos,d=t(this.tickmarkOffset,g.tickmarkOffset);a=this.getPosition(b,a,d,n);d=a.x;var e=a.y;g=b&&d===g.pos+g.len||!b&&e===g.pos?-1:1;f=t(f,1);this.isActive=!0;this.renderGridLine(n,f,g);this.renderMark(a,f,g);this.renderLabel(a,n,f,h);this.isNew=!1;c.fireEvent(this,"afterRender")},destroy:function(){G(this,this.axis)}}});M(I,"parts/Axis.js",
[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.arrayMax,G=f.arrayMin,z=f.defined,B=f.destroyObjectProperties,t=f.extend,v=f.isArray,C=f.isNumber,H=f.isString,y=f.objectEach,h=f.pick,n=f.splat,q=f.syncTimeout,g=c.addEvent,b=c.animObject,a=c.color,d=c.correctFloat,e=c.defaultOptions,l=c.deg2rad,L=c.fireEvent,E=c.format,p=c.getMagnitude,u=c.merge,k=c.normalizeTickInterval,r=c.removeEvent,x=c.seriesTypes,A=c.Tick;f=function(){this.init.apply(this,arguments)};t(f.prototype,{defaultOptions:{dateTimeLabelFormats:{millisecond:{main:"%H:%M:%S.%L",
range:!1},second:{main:"%H:%M:%S",range:!1},minute:{main:"%H:%M",range:!1},hour:{main:"%H:%M",range:!1},day:{main:"%e. %b"},week:{main:"%e. %b"},month:{main:"%b '%y"},year:{main:"%Y"}},endOnTick:!1,labels:{enabled:!0,indentation:10,x:0,style:{color:"#666666",cursor:"default",fontSize:"11px"}},maxPadding:.01,minorTickLength:2,minorTickPosition:"outside",minPadding:.01,showEmpty:!0,startOfWeek:1,startOnTick:!1,tickLength:10,tickPixelInterval:100,tickmarkPlacement:"between",tickPosition:"outside",title:{align:"middle",
style:{color:"#666666"}},type:"linear",minorGridLineColor:"#f2f2f2",minorGridLineWidth:1,minorTickColor:"#999999",lineColor:"#ccd6eb",lineWidth:1,gridLineColor:"#e6e6e6",tickColor:"#ccd6eb"},defaultYAxisOptions:{endOnTick:!0,maxPadding:.05,minPadding:.05,tickPixelInterval:72,showLastLabel:!0,labels:{x:-8},startOnTick:!0,title:{rotation:270,text:"Values"},stackLabels:{allowOverlap:!1,enabled:!1,crop:!0,overflow:"justify",formatter:function(){return c.numberFormat(this.total,-1)},style:{color:"#000000",
fontSize:"11px",fontWeight:"bold",textOutline:"1px contrast"}},gridLineWidth:1,lineWidth:0},defaultLeftAxisOptions:{labels:{x:-15},title:{rotation:270}},defaultRightAxisOptions:{labels:{x:15},title:{rotation:90}},defaultBottomAxisOptions:{labels:{autoRotation:[-45],x:0},margin:15,title:{rotation:0}},defaultTopAxisOptions:{labels:{autoRotation:[-45],x:0},margin:15,title:{rotation:0}},init:function(a,b){var d=b.isX,m=this;m.chart=a;m.horiz=a.inverted&&!m.isZAxis?!d:d;m.isXAxis=d;m.coll=m.coll||(d?"xAxis":
"yAxis");L(this,"init",{userOptions:b});m.opposite=b.opposite;m.side=b.side||(m.horiz?m.opposite?0:2:m.opposite?1:3);m.setOptions(b);var e=this.options,w=e.type;m.labelFormatter=e.labels.formatter||m.defaultLabelFormatter;m.userOptions=b;m.minPixelPadding=0;m.reversed=e.reversed;m.visible=!1!==e.visible;m.zoomEnabled=!1!==e.zoomEnabled;m.hasNames="category"===w||!0===e.categories;m.categories=e.categories||m.hasNames;m.names||(m.names=[],m.names.keys={});m.plotLinesAndBandsGroups={};m.isLog="logarithmic"===
w;m.isDatetimeAxis="datetime"===w;m.positiveValuesOnly=m.isLog&&!m.allowNegativeLog;m.isLinked=z(e.linkedTo);m.ticks={};m.labelEdge=[];m.minorTicks={};m.plotLinesAndBands=[];m.alternateBands={};m.len=0;m.minRange=m.userMinRange=e.minRange||e.maxZoom;m.range=e.range;m.offset=e.offset||0;m.stacks={};m.oldStacks={};m.stacksTouched=0;m.max=null;m.min=null;m.crosshair=h(e.crosshair,n(a.options.tooltip.crosshairs)[d?0:1],!1);b=m.options.events;-1===a.axes.indexOf(m)&&(d?a.axes.splice(a.xAxis.length,0,m):
a.axes.push(m),a[m.coll].push(m));m.series=m.series||[];a.inverted&&!m.isZAxis&&d&&void 0===m.reversed&&(m.reversed=!0);y(b,function(a,b){c.isFunction(a)&&g(m,b,a)});m.lin2log=e.linearToLogConverter||m.lin2log;m.isLog&&(m.val2lin=m.log2lin,m.lin2val=m.lin2log);L(this,"afterInit")},setOptions:function(a){this.options=u(this.defaultOptions,"yAxis"===this.coll&&this.defaultYAxisOptions,[this.defaultTopAxisOptions,this.defaultRightAxisOptions,this.defaultBottomAxisOptions,this.defaultLeftAxisOptions][this.side],
u(e[this.coll],a));L(this,"afterSetOptions",{userOptions:a})},defaultLabelFormatter:function(){var a=this.axis,b=this.value,d=a.chart.time,k=a.categories,l=this.dateTimeLabelFormat,g=e.lang,r=g.numericSymbols;g=g.numericSymbolMagnitude||1E3;var x=r&&r.length,p=a.options.labels.format;a=a.isLog?Math.abs(b):a.tickInterval;if(p)var h=E(p,this,d);else if(k)h=b;else if(l)h=d.dateFormat(l,b);else if(x&&1E3<=a)for(;x--&&void 0===h;)d=Math.pow(g,x+1),a>=d&&0===10*b%d&&null!==r[x]&&0!==b&&(h=c.numberFormat(b/
d,-1)+r[x]);void 0===h&&(h=1E4<=Math.abs(b)?c.numberFormat(b,-1):c.numberFormat(b,-1,void 0,""));return h},getSeriesExtremes:function(){var a=this,b=a.chart,d;L(this,"getSeriesExtremes",null,function(){a.hasVisibleSeries=!1;a.dataMin=a.dataMax=a.threshold=null;a.softThreshold=!a.isXAxis;a.buildStacks&&a.buildStacks();a.series.forEach(function(m){if(m.visible||!b.options.chart.ignoreHiddenSeries){var e=m.options,w=e.threshold;a.hasVisibleSeries=!0;a.positiveValuesOnly&&0>=w&&(w=null);if(a.isXAxis){if(e=
m.xData,e.length){d=m.getXExtremes(e);var k=d.min;var c=d.max;C(k)||k instanceof Date||(e=e.filter(C),d=m.getXExtremes(e),k=d.min,c=d.max);e.length&&(a.dataMin=Math.min(h(a.dataMin,k),k),a.dataMax=Math.max(h(a.dataMax,c),c))}}else if(m.getExtremes(),c=m.dataMax,k=m.dataMin,z(k)&&z(c)&&(a.dataMin=Math.min(h(a.dataMin,k),k),a.dataMax=Math.max(h(a.dataMax,c),c)),z(w)&&(a.threshold=w),!e.softThreshold||a.positiveValuesOnly)a.softThreshold=!1}})});L(this,"afterGetSeriesExtremes")},translate:function(a,
b,d,e,k,c){var m=this.linkedParent||this,w=1,l=0,g=e?m.oldTransA:m.transA;e=e?m.oldMin:m.min;var r=m.minPixelPadding;k=(m.isOrdinal||m.isBroken||m.isLog&&k)&&m.lin2val;g||(g=m.transA);d&&(w*=-1,l=m.len);m.reversed&&(w*=-1,l-=w*(m.sector||m.len));b?(a=(a*w+l-r)/g+e,k&&(a=m.lin2val(a))):(k&&(a=m.val2lin(a)),a=C(e)?w*(a-e)*g+l+w*r+(C(c)?g*c:0):void 0);return a},toPixels:function(a,b){return this.translate(a,!1,!this.horiz,null,!0)+(b?0:this.pos)},toValue:function(a,b){return this.translate(a-(b?0:this.pos),
!0,!this.horiz,null,!0)},getPlotLinePath:function(a){var b=this,d=b.chart,e=b.left,w=b.top,k=a.old,c=a.value,l=a.translatedValue,g=a.lineWidth,r=a.force,x,p,A,u,n=k&&d.oldChartHeight||d.chartHeight,f=k&&d.oldChartWidth||d.chartWidth,E,q=b.transB,v=function(a,b,d){if("pass"!==r&&a<b||a>d)r?a=Math.min(Math.max(b,a),d):E=!0;return a};a={value:c,lineWidth:g,old:k,force:r,acrossPanes:a.acrossPanes,translatedValue:l};L(this,"getPlotLinePath",a,function(a){l=h(l,b.translate(c,null,null,k));l=Math.min(Math.max(-1E5,
l),1E5);x=A=Math.round(l+q);p=u=Math.round(n-l-q);C(l)?b.horiz?(p=w,u=n-b.bottom,x=A=v(x,e,e+b.width)):(x=e,A=f-b.right,p=u=v(p,w,w+b.height)):(E=!0,r=!1);a.path=E&&!r?null:d.renderer.crispLine(["M",x,p,"L",A,u],g||1)});return a.path},getLinearTickPositions:function(a,b,e){var m=d(Math.floor(b/a)*a);e=d(Math.ceil(e/a)*a);var w=[],k;d(m+a)===m&&(k=20);if(this.single)return[b];for(b=m;b<=e;){w.push(b);b=d(b+a,k);if(b===c)break;var c=b}return w},getMinorTickInterval:function(){var a=this.options;return!0===
a.minorTicks?h(a.minorTickInterval,"auto"):!1===a.minorTicks?null:a.minorTickInterval},getMinorTickPositions:function(){var a=this,b=a.options,d=a.tickPositions,e=a.minorTickInterval,k=[],c=a.pointRangePadding||0,l=a.min-c;c=a.max+c;var g=c-l;if(g&&g/e<a.len/3)if(a.isLog)this.paddedTicks.forEach(function(b,d,m){d&&k.push.apply(k,a.getLogTickPositions(e,m[d-1],m[d],!0))});else if(a.isDatetimeAxis&&"auto"===this.getMinorTickInterval())k=k.concat(a.getTimeTicks(a.normalizeTimeTickInterval(e),l,c,b.startOfWeek));
else for(b=l+(d[0]-l)%e;b<=c&&b!==k[0];b+=e)k.push(b);0!==k.length&&a.trimTicks(k);return k},adjustForMinRange:function(){var a=this.options,b=this.min,d=this.max,e,k,c,l,g;this.isXAxis&&void 0===this.minRange&&!this.isLog&&(z(a.min)||z(a.max)?this.minRange=null:(this.series.forEach(function(a){l=a.xData;for(k=g=a.xIncrement?1:l.length-1;0<k;k--)if(c=l[k]-l[k-1],void 0===e||c<e)e=c}),this.minRange=Math.min(5*e,this.dataMax-this.dataMin)));if(d-b<this.minRange){var r=this.dataMax-this.dataMin>=this.minRange;
var x=this.minRange;var p=(x-d+b)/2;p=[b-p,h(a.min,b-p)];r&&(p[2]=this.isLog?this.log2lin(this.dataMin):this.dataMin);b=F(p);d=[b+x,h(a.max,b+x)];r&&(d[2]=this.isLog?this.log2lin(this.dataMax):this.dataMax);d=G(d);d-b<x&&(p[0]=d-x,p[1]=h(a.min,d-x),b=F(p))}this.min=b;this.max=d},getClosest:function(){var a;this.categories?a=1:this.series.forEach(function(b){var d=b.closestPointRange,m=b.visible||!b.chart.options.chart.ignoreHiddenSeries;!b.noSharedTooltip&&z(d)&&m&&(a=z(a)?Math.min(a,d):d)});return a},
nameToX:function(a){var b=v(this.categories),d=b?this.categories:this.names,e=a.options.x;a.series.requireSorting=!1;z(e)||(e=!1===this.options.uniqueNames?a.series.autoIncrement():b?d.indexOf(a.name):h(d.keys[a.name],-1));if(-1===e){if(!b)var k=d.length}else k=e;void 0!==k&&(this.names[k]=a.name,this.names.keys[a.name]=k);return k},updateNames:function(){var a=this,b=this.names;0<b.length&&(Object.keys(b.keys).forEach(function(a){delete b.keys[a]}),b.length=0,this.minRange=this.userMinRange,(this.series||
[]).forEach(function(b){b.xIncrement=null;if(!b.points||b.isDirtyData)a.max=Math.max(a.max,b.xData.length-1),b.processData(),b.generatePoints();b.data.forEach(function(d,e){if(d&&d.options&&void 0!==d.name){var m=a.nameToX(d);void 0!==m&&m!==d.x&&(d.x=m,b.xData[e]=m)}})}))},setAxisTranslation:function(a){var b=this,d=b.max-b.min,e=b.axisPointRange||0,k=0,w=0,c=b.linkedParent,l=!!b.categories,g=b.transA,r=b.isXAxis;if(r||l||e){var p=b.getClosest();c?(k=c.minPointOffset,w=c.pointRangePadding):b.series.forEach(function(a){var d=
l?1:r?h(a.options.pointRange,p,0):b.axisPointRange||0,m=a.options.pointPlacement;e=Math.max(e,d);if(!b.single||l)a=x.xrange&&a instanceof x.xrange?!r:r,k=Math.max(k,a&&H(m)?0:d/2),w=Math.max(w,a&&"on"===m?0:d)});c=b.ordinalSlope&&p?b.ordinalSlope/p:1;b.minPointOffset=k*=c;b.pointRangePadding=w*=c;b.pointRange=Math.min(e,b.single&&l?1:d);r&&(b.closestPointRange=p)}a&&(b.oldTransA=g);b.translationSlope=b.transA=g=b.staticScale||b.len/(d+w||1);b.transB=b.horiz?b.left:b.bottom;b.minPixelPadding=g*k;L(this,
"afterSetAxisTranslation")},minFromRange:function(){return this.max-this.range},setTickInterval:function(a){var b=this,e=b.chart,w=b.options,l=b.isLog,g=b.isDatetimeAxis,r=b.isXAxis,x=b.isLinked,A=w.maxPadding,u=w.minPadding,n=w.tickInterval,f=w.tickPixelInterval,E=b.categories,q=C(b.threshold)?b.threshold:null,v=b.softThreshold;g||E||x||this.getTickAmount();var t=h(b.userMin,w.min);var y=h(b.userMax,w.max);if(x){b.linkedParent=e[b.coll][w.linkedTo];var B=b.linkedParent.getExtremes();b.min=h(B.min,
B.dataMin);b.max=h(B.max,B.dataMax);w.type!==b.linkedParent.options.type&&c.error(11,1,e)}else{if(!v&&z(q))if(b.dataMin>=q)B=q,u=0;else if(b.dataMax<=q){var H=q;A=0}b.min=h(t,B,b.dataMin);b.max=h(y,H,b.dataMax)}l&&(b.positiveValuesOnly&&!a&&0>=Math.min(b.min,h(b.dataMin,b.min))&&c.error(10,1,e),b.min=d(b.log2lin(b.min),16),b.max=d(b.log2lin(b.max),16));b.range&&z(b.max)&&(b.userMin=b.min=t=Math.max(b.dataMin,b.minFromRange()),b.userMax=y=b.max,b.range=null);L(b,"foundExtremes");b.beforePadding&&b.beforePadding();
b.adjustForMinRange();!(E||b.axisPointRange||b.usePercentage||x)&&z(b.min)&&z(b.max)&&(e=b.max-b.min)&&(!z(t)&&u&&(b.min-=e*u),!z(y)&&A&&(b.max+=e*A));C(w.softMin)&&!C(b.userMin)&&w.softMin<b.min&&(b.min=t=w.softMin);C(w.softMax)&&!C(b.userMax)&&w.softMax>b.max&&(b.max=y=w.softMax);C(w.floor)&&(b.min=Math.min(Math.max(b.min,w.floor),Number.MAX_VALUE));C(w.ceiling)&&(b.max=Math.max(Math.min(b.max,w.ceiling),h(b.userMax,-Number.MAX_VALUE)));v&&z(b.dataMin)&&(q=q||0,!z(t)&&b.min<q&&b.dataMin>=q?b.min=
b.options.minRange?Math.min(q,b.max-b.minRange):q:!z(y)&&b.max>q&&b.dataMax<=q&&(b.max=b.options.minRange?Math.max(q,b.min+b.minRange):q));b.tickInterval=b.min===b.max||void 0===b.min||void 0===b.max?1:x&&!n&&f===b.linkedParent.options.tickPixelInterval?n=b.linkedParent.tickInterval:h(n,this.tickAmount?(b.max-b.min)/Math.max(this.tickAmount-1,1):void 0,E?1:(b.max-b.min)*f/Math.max(b.len,f));r&&!a&&b.series.forEach(function(a){a.processData(b.min!==b.oldMin||b.max!==b.oldMax)});b.setAxisTranslation(!0);
b.beforeSetTickPositions&&b.beforeSetTickPositions();b.postProcessTickInterval&&(b.tickInterval=b.postProcessTickInterval(b.tickInterval));b.pointRange&&!n&&(b.tickInterval=Math.max(b.pointRange,b.tickInterval));a=h(w.minTickInterval,b.isDatetimeAxis&&b.closestPointRange);!n&&b.tickInterval<a&&(b.tickInterval=a);g||l||n||(b.tickInterval=k(b.tickInterval,null,p(b.tickInterval),h(w.allowDecimals,!(.5<b.tickInterval&&5>b.tickInterval&&1E3<b.max&&9999>b.max)),!!this.tickAmount));this.tickAmount||(b.tickInterval=
b.unsquish());this.setTickPositions()},setTickPositions:function(){var a=this.options,b=a.tickPositions;var d=this.getMinorTickInterval();var e=a.tickPositioner,k=a.startOnTick,l=a.endOnTick;this.tickmarkOffset=this.categories&&"between"===a.tickmarkPlacement&&1===this.tickInterval?.5:0;this.minorTickInterval="auto"===d&&this.tickInterval?this.tickInterval/5:d;this.single=this.min===this.max&&z(this.min)&&!this.tickAmount&&(parseInt(this.min,10)===this.min||!1!==a.allowDecimals);this.tickPositions=
d=b&&b.slice();!d&&(!this.ordinalPositions&&(this.max-this.min)/this.tickInterval>Math.max(2*this.len,200)?(d=[this.min,this.max],c.error(19,!1,this.chart)):d=this.isDatetimeAxis?this.getTimeTicks(this.normalizeTimeTickInterval(this.tickInterval,a.units),this.min,this.max,a.startOfWeek,this.ordinalPositions,this.closestPointRange,!0):this.isLog?this.getLogTickPositions(this.tickInterval,this.min,this.max):this.getLinearTickPositions(this.tickInterval,this.min,this.max),d.length>this.len&&(d=[d[0],
d.pop()],d[0]===d[1]&&(d.length=1)),this.tickPositions=d,e&&(e=e.apply(this,[this.min,this.max])))&&(this.tickPositions=d=e);this.paddedTicks=d.slice(0);this.trimTicks(d,k,l);this.isLinked||(this.single&&2>d.length&&!this.categories&&(this.min-=.5,this.max+=.5),b||e||this.adjustTickAmount());L(this,"afterSetTickPositions")},trimTicks:function(a,b,d){var e=a[0],m=a[a.length-1],k=this.minPointOffset||0;L(this,"trimTicks");if(!this.isLinked){if(b&&-Infinity!==e)this.min=e;else for(;this.min-k>a[0];)a.shift();
if(d)this.max=m;else for(;this.max+k<a[a.length-1];)a.pop();0===a.length&&z(e)&&!this.options.tickPositions&&a.push((m+e)/2)}},alignToOthers:function(){var a={},b,d=this.options;!1===this.chart.options.chart.alignTicks||!1===d.alignTicks||!1===d.startOnTick||!1===d.endOnTick||this.isLog||this.chart[this.coll].forEach(function(d){var e=d.options;e=[d.horiz?e.left:e.top,e.width,e.height,e.pane].join();d.series.length&&(a[e]?b=!0:a[e]=1)});return b},getTickAmount:function(){var a=this.options,b=a.tickAmount,
d=a.tickPixelInterval;!z(a.tickInterval)&&this.len<d&&!this.isRadial&&!this.isLog&&a.startOnTick&&a.endOnTick&&(b=2);!b&&this.alignToOthers()&&(b=Math.ceil(this.len/d)+1);4>b&&(this.finalTickAmt=b,b=5);this.tickAmount=b},adjustTickAmount:function(){var a=this.options,b=this.tickInterval,e=this.tickPositions,k=this.tickAmount,c=this.finalTickAmt,l=e&&e.length,g=h(this.threshold,this.softThreshold?0:null),r;if(this.hasData()){if(l<k){for(r=this.min;e.length<k;)e.length%2||r===g?e.push(d(e[e.length-
1]+b)):e.unshift(d(e[0]-b));this.transA*=(l-1)/(k-1);this.min=a.startOnTick?e[0]:Math.min(this.min,e[0]);this.max=a.endOnTick?e[e.length-1]:Math.max(this.max,e[e.length-1])}else l>k&&(this.tickInterval*=2,this.setTickPositions());if(z(c)){for(b=a=e.length;b--;)(3===c&&1===b%2||2>=c&&0<b&&b<a-1)&&e.splice(b,1);this.finalTickAmt=void 0}}},setScale:function(){var a=this.series.some(function(a){return a.isDirtyData||a.isDirty||a.xAxis&&a.xAxis.isDirty}),b;this.oldMin=this.min;this.oldMax=this.max;this.oldAxisLength=
this.len;this.setAxisSize();(b=this.len!==this.oldAxisLength)||a||this.isLinked||this.forceRedraw||this.userMin!==this.oldUserMin||this.userMax!==this.oldUserMax||this.alignToOthers()?(this.resetStacks&&this.resetStacks(),this.forceRedraw=!1,this.getSeriesExtremes(),this.setTickInterval(),this.oldUserMin=this.userMin,this.oldUserMax=this.userMax,this.isDirty||(this.isDirty=b||this.min!==this.oldMin||this.max!==this.oldMax)):this.cleanStacks&&this.cleanStacks();L(this,"afterSetScale")},setExtremes:function(a,
b,d,e,k){var m=this,w=m.chart;d=h(d,!0);m.series.forEach(function(a){delete a.kdTree});k=t(k,{min:a,max:b});L(m,"setExtremes",k,function(){m.userMin=a;m.userMax=b;m.eventArgs=k;d&&w.redraw(e)})},zoom:function(a,b){var d=this.dataMin,e=this.dataMax,m=this.options,k=Math.min(d,h(m.min,d)),w=Math.max(e,h(m.max,e));a={newMin:a,newMax:b};L(this,"zoom",a,function(a){var b=a.newMin,m=a.newMax;if(b!==this.min||m!==this.max)this.allowZoomOutside||(z(d)&&(b<k&&(b=k),b>w&&(b=w)),z(e)&&(m<k&&(m=k),m>w&&(m=w))),
this.displayBtn=void 0!==b||void 0!==m,this.setExtremes(b,m,!1,void 0,{trigger:"zoom"});a.zoomed=!0});return a.zoomed},setAxisSize:function(){var a=this.chart,b=this.options,d=b.offsets||[0,0,0,0],e=this.horiz,k=this.width=Math.round(c.relativeLength(h(b.width,a.plotWidth-d[3]+d[1]),a.plotWidth)),l=this.height=Math.round(c.relativeLength(h(b.height,a.plotHeight-d[0]+d[2]),a.plotHeight)),g=this.top=Math.round(c.relativeLength(h(b.top,a.plotTop+d[0]),a.plotHeight,a.plotTop));b=this.left=Math.round(c.relativeLength(h(b.left,
a.plotLeft+d[3]),a.plotWidth,a.plotLeft));this.bottom=a.chartHeight-l-g;this.right=a.chartWidth-k-b;this.len=Math.max(e?k:l,0);this.pos=e?b:g},getExtremes:function(){var a=this.isLog;return{min:a?d(this.lin2log(this.min)):this.min,max:a?d(this.lin2log(this.max)):this.max,dataMin:this.dataMin,dataMax:this.dataMax,userMin:this.userMin,userMax:this.userMax}},getThreshold:function(a){var b=this.isLog,d=b?this.lin2log(this.min):this.min;b=b?this.lin2log(this.max):this.max;null===a||-Infinity===a?a=d:Infinity===
a?a=b:d>a?a=d:b<a&&(a=b);return this.translate(a,0,1,0,1)},autoLabelAlign:function(a){var b=(h(a,0)-90*this.side+720)%360;a={align:"center"};L(this,"autoLabelAlign",a,function(a){15<b&&165>b?a.align="right":195<b&&345>b&&(a.align="left")});return a.align},tickSize:function(a){var b=this.options,d=b[a+"Length"],e=h(b[a+"Width"],"tick"===a&&this.isXAxis&&!this.categories?1:0);if(e&&d){"inside"===b[a+"Position"]&&(d=-d);var k=[d,e]}a={tickSize:k};L(this,"afterTickSize",a);return a.tickSize},labelMetrics:function(){var a=
this.tickPositions&&this.tickPositions[0]||0;return this.chart.renderer.fontMetrics(this.options.labels.style&&this.options.labels.style.fontSize,this.ticks[a]&&this.ticks[a].label)},unsquish:function(){var a=this.options.labels,b=this.horiz,e=this.tickInterval,k=e,c=this.len/(((this.categories?1:0)+this.max-this.min)/e),g,r=a.rotation,x=this.labelMetrics(),p,A=Number.MAX_VALUE,u,n=this.max-this.min,f=function(a){var b=a/(c||1);b=1<b?Math.ceil(b):1;b*e>n&&Infinity!==a&&Infinity!==c&&n&&(b=Math.ceil(n/
e));return d(b*e)};b?(u=!a.staggerLines&&!a.step&&(z(r)?[r]:c<h(a.autoRotationLimit,80)&&a.autoRotation))&&u.forEach(function(a){if(a===r||a&&-90<=a&&90>=a){p=f(Math.abs(x.h/Math.sin(l*a)));var b=p+Math.abs(a/360);b<A&&(A=b,g=a,k=p)}}):a.step||(k=f(x.h));this.autoRotation=u;this.labelRotation=h(g,r);return k},getSlotWidth:function(a){var b=this.chart,d=this.horiz,e=this.options.labels,k=Math.max(this.tickPositions.length-(this.categories?0:1),1),c=b.margin[3];return a&&a.slotWidth||d&&2>(e.step||
0)&&!e.rotation&&(this.staggerLines||1)*this.len/k||!d&&(e.style&&parseInt(e.style.width,10)||c&&c-b.spacing[3]||.33*b.chartWidth)},renderUnsquish:function(){var a=this.chart,b=a.renderer,d=this.tickPositions,e=this.ticks,k=this.options.labels,c=k&&k.style||{},l=this.horiz,g=this.getSlotWidth(),r=Math.max(1,Math.round(g-2*(k.padding||5))),x={},p=this.labelMetrics(),h=k.style&&k.style.textOverflow,A=0;H(k.rotation)||(x.rotation=k.rotation||0);d.forEach(function(a){(a=e[a])&&a.label&&a.label.textPxLength>
A&&(A=a.label.textPxLength)});this.maxLabelLength=A;if(this.autoRotation)A>r&&A>p.h?x.rotation=this.labelRotation:this.labelRotation=0;else if(g){var u=r;if(!h){var n="clip";for(r=d.length;!l&&r--;){var f=d[r];if(f=e[f].label)f.styles&&"ellipsis"===f.styles.textOverflow?f.css({textOverflow:"clip"}):f.textPxLength>g&&f.css({width:g+"px"}),f.getBBox().height>this.len/d.length-(p.h-p.f)&&(f.specificTextOverflow="ellipsis")}}}x.rotation&&(u=A>.5*a.chartHeight?.33*a.chartHeight:A,h||(n="ellipsis"));if(this.labelAlign=
k.align||this.autoLabelAlign(this.labelRotation))x.align=this.labelAlign;d.forEach(function(a){var b=(a=e[a])&&a.label,d=c.width,k={};b&&(b.attr(x),a.shortenLabel?a.shortenLabel():u&&!d&&"nowrap"!==c.whiteSpace&&(u<b.textPxLength||"SPAN"===b.element.tagName)?(k.width=u,h||(k.textOverflow=b.specificTextOverflow||n),b.css(k)):b.styles&&b.styles.width&&!k.width&&!d&&b.css({width:null}),delete b.specificTextOverflow,a.rotation=x.rotation)},this);this.tickRotCorr=b.rotCorr(p.b,this.labelRotation||0,0!==
this.side)},hasData:function(){return this.series.some(function(a){return a.hasData()})||this.options.showEmpty&&z(this.min)&&z(this.max)},addTitle:function(a){var b=this.chart.renderer,d=this.horiz,e=this.opposite,k=this.options.title,c,l=this.chart.styledMode;this.axisTitle||((c=k.textAlign)||(c=(d?{low:"left",middle:"center",high:"right"}:{low:e?"right":"left",middle:"center",high:e?"left":"right"})[k.align]),this.axisTitle=b.text(k.text,0,0,k.useHTML).attr({zIndex:7,rotation:k.rotation||0,align:c}).addClass("highcharts-axis-title"),
l||this.axisTitle.css(u(k.style)),this.axisTitle.add(this.axisGroup),this.axisTitle.isNew=!0);l||k.style.width||this.isRadial||this.axisTitle.css({width:this.len});this.axisTitle[a?"show":"hide"](a)},generateTick:function(a){var b=this.ticks;b[a]?b[a].addLabel():b[a]=new A(this,a)},getOffset:function(){var a=this,b=a.chart,d=b.renderer,e=a.options,k=a.tickPositions,c=a.ticks,l=a.horiz,g=a.side,r=b.inverted&&!a.isZAxis?[1,0,3,2][g]:g,x,p=0,A=0,u=e.title,n=e.labels,f=0,E=b.axisOffset;b=b.clipOffset;
var q=[-1,1,1,-1][g],v=e.className,t=a.axisParent;var C=a.hasData();a.showAxis=x=C||h(e.showEmpty,!0);a.staggerLines=a.horiz&&n.staggerLines;a.axisGroup||(a.gridGroup=d.g("grid").attr({zIndex:e.gridZIndex||1}).addClass("highcharts-"+this.coll.toLowerCase()+"-grid "+(v||"")).add(t),a.axisGroup=d.g("axis").attr({zIndex:e.zIndex||2}).addClass("highcharts-"+this.coll.toLowerCase()+" "+(v||"")).add(t),a.labelGroup=d.g("axis-labels").attr({zIndex:n.zIndex||7}).addClass("highcharts-"+a.coll.toLowerCase()+
"-labels "+(v||"")).add(t));C||a.isLinked?(k.forEach(function(b,d){a.generateTick(b,d)}),a.renderUnsquish(),a.reserveSpaceDefault=0===g||2===g||{1:"left",3:"right"}[g]===a.labelAlign,h(n.reserveSpace,"center"===a.labelAlign?!0:null,a.reserveSpaceDefault)&&k.forEach(function(a){f=Math.max(c[a].getLabelSize(),f)}),a.staggerLines&&(f*=a.staggerLines),a.labelOffset=f*(a.opposite?-1:1)):y(c,function(a,b){a.destroy();delete c[b]});if(u&&u.text&&!1!==u.enabled&&(a.addTitle(x),x&&!1!==u.reserveSpace)){a.titleOffset=
p=a.axisTitle.getBBox()[l?"height":"width"];var B=u.offset;A=z(B)?0:h(u.margin,l?5:10)}a.renderLine();a.offset=q*h(e.offset,E[g]?E[g]+(e.margin||0):0);a.tickRotCorr=a.tickRotCorr||{x:0,y:0};d=0===g?-a.labelMetrics().h:2===g?a.tickRotCorr.y:0;A=Math.abs(f)+A;f&&(A=A-d+q*(l?h(n.y,a.tickRotCorr.y+8*q):n.x));a.axisTitleMargin=h(B,A);a.getMaxLabelDimensions&&(a.maxLabelDimensions=a.getMaxLabelDimensions(c,k));l=this.tickSize("tick");E[g]=Math.max(E[g],a.axisTitleMargin+p+q*a.offset,A,k&&k.length&&l?l[0]+
q*a.offset:0);e=e.offset?0:2*Math.floor(a.axisLine.strokeWidth()/2);b[r]=Math.max(b[r],e);L(this,"afterGetOffset")},getLinePath:function(a){var b=this.chart,d=this.opposite,e=this.offset,k=this.horiz,c=this.left+(d?this.width:0)+e;e=b.chartHeight-this.bottom-(d?this.height:0)+e;d&&(a*=-1);return b.renderer.crispLine(["M",k?this.left:c,k?e:this.top,"L",k?b.chartWidth-this.right:c,k?e:b.chartHeight-this.bottom],a)},renderLine:function(){this.axisLine||(this.axisLine=this.chart.renderer.path().addClass("highcharts-axis-line").add(this.axisGroup),
this.chart.styledMode||this.axisLine.attr({stroke:this.options.lineColor,"stroke-width":this.options.lineWidth,zIndex:7}))},getTitlePosition:function(){var a=this.horiz,b=this.left,d=this.top,e=this.len,k=this.options.title,c=a?b:d,l=this.opposite,g=this.offset,r=k.x||0,x=k.y||0,p=this.axisTitle,A=this.chart.renderer.fontMetrics(k.style&&k.style.fontSize,p);p=Math.max(p.getBBox(null,0).height-A.h-1,0);e={low:c+(a?0:e),middle:c+e/2,high:c+(a?e:0)}[k.align];b=(a?d+this.height:b)+(a?1:-1)*(l?-1:1)*this.axisTitleMargin+
[-p,p,A.f,-p][this.side];a={x:a?e+r:b+(l?this.width:0)+g+r,y:a?b+x-(l?this.height:0)+g:e+x};L(this,"afterGetTitlePosition",{titlePosition:a});return a},renderMinorTick:function(a){var b=this.chart.hasRendered&&C(this.oldMin),d=this.minorTicks;d[a]||(d[a]=new A(this,a,"minor"));b&&d[a].isNew&&d[a].render(null,!0);d[a].render(null,!1,1)},renderTick:function(a,b){var d=this.isLinked,e=this.ticks,k=this.chart.hasRendered&&C(this.oldMin);if(!d||a>=this.min&&a<=this.max)e[a]||(e[a]=new A(this,a)),k&&e[a].isNew&&
e[a].render(b,!0,-1),e[a].render(b)},render:function(){var a=this,d=a.chart,e=a.options,k=a.isLog,l=a.isLinked,g=a.tickPositions,r=a.axisTitle,x=a.ticks,p=a.minorTicks,h=a.alternateBands,u=e.stackLabels,n=e.alternateGridColor,f=a.tickmarkOffset,E=a.axisLine,v=a.showAxis,t=b(d.renderer.globalAnimation),B,H;a.labelEdge.length=0;a.overlap=!1;[x,p,h].forEach(function(a){y(a,function(a){a.isActive=!1})});if(a.hasData()||l)a.minorTickInterval&&!a.categories&&a.getMinorTickPositions().forEach(function(b){a.renderMinorTick(b)}),
g.length&&(g.forEach(function(b,d){a.renderTick(b,d)}),f&&(0===a.min||a.single)&&(x[-1]||(x[-1]=new A(a,-1,null,!0)),x[-1].render(-1))),n&&g.forEach(function(b,e){H=void 0!==g[e+1]?g[e+1]+f:a.max-f;0===e%2&&b<a.max&&H<=a.max+(d.polar?-f:f)&&(h[b]||(h[b]=new c.PlotLineOrBand(a)),B=b+f,h[b].options={from:k?a.lin2log(B):B,to:k?a.lin2log(H):H,color:n},h[b].render(),h[b].isActive=!0)}),a._addedPlotLB||((e.plotLines||[]).concat(e.plotBands||[]).forEach(function(b){a.addPlotBandOrLine(b)}),a._addedPlotLB=
!0);[x,p,h].forEach(function(a){var b,e=[],k=t.duration;y(a,function(a,b){a.isActive||(a.render(b,!1,0),a.isActive=!1,e.push(b))});q(function(){for(b=e.length;b--;)a[e[b]]&&!a[e[b]].isActive&&(a[e[b]].destroy(),delete a[e[b]])},a!==h&&d.hasRendered&&k?k:0)});E&&(E[E.isPlaced?"animate":"attr"]({d:this.getLinePath(E.strokeWidth())}),E.isPlaced=!0,E[v?"show":"hide"](v));r&&v&&(e=a.getTitlePosition(),C(e.y)?(r[r.isNew?"attr":"animate"](e),r.isNew=!1):(r.attr("y",-9999),r.isNew=!0));u&&u.enabled&&a.renderStackTotals();
a.isDirty=!1;L(this,"afterRender")},redraw:function(){this.visible&&(this.render(),this.plotLinesAndBands.forEach(function(a){a.render()}));this.series.forEach(function(a){a.isDirty=!0})},keepProps:"extKey hcEvents names series userMax userMin".split(" "),destroy:function(a){var b=this,d=b.stacks,e=b.plotLinesAndBands,k;L(this,"destroy",{keepEvents:a});a||r(b);y(d,function(a,b){B(a);d[b]=null});[b.ticks,b.minorTicks,b.alternateBands].forEach(function(a){B(a)});if(e)for(a=e.length;a--;)e[a].destroy();
"stackTotalGroup axisLine axisTitle axisGroup gridGroup labelGroup cross scrollbar".split(" ").forEach(function(a){b[a]&&(b[a]=b[a].destroy())});for(k in b.plotLinesAndBandsGroups)b.plotLinesAndBandsGroups[k]=b.plotLinesAndBandsGroups[k].destroy();y(b,function(a,d){-1===b.keepProps.indexOf(d)&&delete b[d]})},drawCrosshair:function(b,d){var e,k=this.crosshair,c=h(k.snap,!0),l,g=this.cross;L(this,"drawCrosshair",{e:b,point:d});b||(b=this.cross&&this.cross.e);if(this.crosshair&&!1!==(z(d)||!c)){c?z(d)&&
(l=h("colorAxis"!==this.coll?d.crosshairPos:null,this.isXAxis?d.plotX:this.len-d.plotY)):l=b&&(this.horiz?b.chartX-this.pos:this.len-b.chartY+this.pos);z(l)&&(e=this.getPlotLinePath({value:d&&(this.isXAxis?d.x:h(d.stackY,d.y)),translatedValue:l})||null);if(!z(e)){this.hideCrosshair();return}c=this.categories&&!this.isRadial;g||(this.cross=g=this.chart.renderer.path().addClass("highcharts-crosshair highcharts-crosshair-"+(c?"category ":"thin ")+k.className).attr({zIndex:h(k.zIndex,2)}).add(),this.chart.styledMode||
(g.attr({stroke:k.color||(c?a("#ccd6eb").setOpacity(.25).get():"#cccccc"),"stroke-width":h(k.width,1)}).css({"pointer-events":"none"}),k.dashStyle&&g.attr({dashstyle:k.dashStyle})));g.show().attr({d:e});c&&!k.width&&g.attr({"stroke-width":this.transA});this.cross.e=b}else this.hideCrosshair();L(this,"afterDrawCrosshair",{e:b,point:d})},hideCrosshair:function(){this.cross&&this.cross.hide();L(this,"afterHideCrosshair")}});return c.Axis=f});M(I,"parts/DateTimeAxis.js",[I["parts/Globals.js"]],function(c){var f=
c.Axis,F=c.getMagnitude,G=c.normalizeTickInterval,z=c.timeUnits;f.prototype.getTimeTicks=function(){return this.chart.time.getTimeTicks.apply(this.chart.time,arguments)};f.prototype.normalizeTimeTickInterval=function(c,f){var v=f||[["millisecond",[1,2,5,10,20,25,50,100,200,500]],["second",[1,2,5,10,15,30]],["minute",[1,2,5,10,15,30]],["hour",[1,2,3,4,6,8,12]],["day",[1,2]],["week",[1,2]],["month",[1,2,3,4,6]],["year",null]];f=v[v.length-1];var t=z[f[0]],B=f[1],y;for(y=0;y<v.length&&!(f=v[y],t=z[f[0]],
B=f[1],v[y+1]&&c<=(t*B[B.length-1]+z[v[y+1][0]])/2);y++);t===z.year&&c<5*t&&(B=[1,2,5]);c=G(c/t,B,"year"===f[0]?Math.max(F(c/t),1):1);return{unitRange:t,count:c,unitName:f[0]}}});M(I,"parts/LogarithmicAxis.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.pick;f=c.Axis;var G=c.getMagnitude,z=c.normalizeTickInterval;f.prototype.getLogTickPositions=function(c,f,v,C){var t=this.options,y=this.len,h=[];C||(this._minorAutoInterval=null);if(.5<=c)c=Math.round(c),h=this.getLinearTickPositions(c,
f,v);else if(.08<=c){y=Math.floor(f);var n,q;for(t=.3<c?[1,2,4]:.15<c?[1,2,4,6,8]:[1,2,3,4,5,6,7,8,9];y<v+1&&!q;y++){var g=t.length;for(n=0;n<g&&!q;n++){var b=this.log2lin(this.lin2log(y)*t[n]);b>f&&(!C||a<=v)&&void 0!==a&&h.push(a);a>v&&(q=!0);var a=b}}}else f=this.lin2log(f),v=this.lin2log(v),c=C?this.getMinorTickInterval():t.tickInterval,c=F("auto"===c?null:c,this._minorAutoInterval,t.tickPixelInterval/(C?5:1)*(v-f)/((C?y/this.tickPositions.length:y)||1)),c=z(c,null,G(c)),h=this.getLinearTickPositions(c,
f,v).map(this.log2lin),C||(this._minorAutoInterval=c/5);C||(this.tickInterval=c);return h};f.prototype.log2lin=function(c){return Math.log(c)/Math.LN10};f.prototype.lin2log=function(c){return Math.pow(10,c)}});M(I,"parts/PlotLineOrBand.js",[I["parts/Globals.js"],I["parts/Axis.js"],I["parts/Utilities.js"]],function(c,f,F){var G=F.arrayMax,z=F.arrayMin,B=F.defined,t=F.destroyObjectProperties,v=F.erase,C=F.extend,H=F.objectEach,y=F.pick,h=c.merge;c.PlotLineOrBand=function(c,h){this.axis=c;h&&(this.options=
h,this.id=h.id)};c.PlotLineOrBand.prototype={render:function(){c.fireEvent(this,"render");var f=this,q=f.axis,g=q.horiz,b=f.options,a=b.label,d=f.label,e=b.to,l=b.from,L=b.value,E=B(l)&&B(e),p=B(L),u=f.svgElem,k=!u,r=[],x=b.color,A=y(b.zIndex,0),w=b.events;r={"class":"highcharts-plot-"+(E?"band ":"line ")+(b.className||"")};var m={},K=q.chart.renderer,J=E?"bands":"lines";q.isLog&&(l=q.log2lin(l),e=q.log2lin(e),L=q.log2lin(L));q.chart.styledMode||(p?(r.stroke=x||"#999999",r["stroke-width"]=y(b.width,
1),b.dashStyle&&(r.dashstyle=b.dashStyle)):E&&(r.fill=x||"#e6ebf5",b.borderWidth&&(r.stroke=b.borderColor,r["stroke-width"]=b.borderWidth)));m.zIndex=A;J+="-"+A;(x=q.plotLinesAndBandsGroups[J])||(q.plotLinesAndBandsGroups[J]=x=K.g("plot-"+J).attr(m).add());k&&(f.svgElem=u=K.path().attr(r).add(x));if(p)r=q.getPlotLinePath({value:L,lineWidth:u.strokeWidth(),acrossPanes:b.acrossPanes});else if(E)r=q.getPlotBandPath(l,e,b);else return;(k||!u.d)&&r&&r.length?(u.attr({d:r}),w&&H(w,function(a,b){u.on(b,
function(a){w[b].apply(f,[a])})})):u&&(r?(u.show(!0),u.animate({d:r})):u.d&&(u.hide(),d&&(f.label=d=d.destroy())));a&&(B(a.text)||B(a.formatter))&&r&&r.length&&0<q.width&&0<q.height&&!r.isFlat?(a=h({align:g&&E&&"center",x:g?!E&&4:10,verticalAlign:!g&&E&&"middle",y:g?E?16:10:E?6:-4,rotation:g&&!E&&90},a),this.renderLabel(a,r,E,A)):d&&d.hide();return f},renderLabel:function(c,h,g,b){var a=this.label,d=this.axis.chart.renderer;a||(a={align:c.textAlign||c.align,rotation:c.rotation,"class":"highcharts-plot-"+
(g?"band":"line")+"-label "+(c.className||"")},a.zIndex=b,b=this.getLabelText(c),this.label=a=d.text(b,0,0,c.useHTML).attr(a).add(),this.axis.chart.styledMode||a.css(c.style));d=h.xBounds||[h[1],h[4],g?h[6]:h[1]];h=h.yBounds||[h[2],h[5],g?h[7]:h[2]];g=z(d);b=z(h);a.align(c,!1,{x:g,y:b,width:G(d)-g,height:G(h)-b});a.show(!0)},getLabelText:function(c){return B(c.formatter)?c.formatter.call(this):c.text},destroy:function(){v(this.axis.plotLinesAndBands,this);delete this.axis;t(this)}};C(f.prototype,
{getPlotBandPath:function(c,h){var g=this.getPlotLinePath({value:h,force:!0,acrossPanes:this.options.acrossPanes}),b=this.getPlotLinePath({value:c,force:!0,acrossPanes:this.options.acrossPanes}),a=[],d=this.horiz,e=1;c=c<this.min&&h<this.min||c>this.max&&h>this.max;if(b&&g){if(c){var l=b.toString()===g.toString();e=0}for(c=0;c<b.length;c+=6)d&&g[c+1]===b[c+1]?(g[c+1]+=e,g[c+4]+=e):d||g[c+2]!==b[c+2]||(g[c+2]+=e,g[c+5]+=e),a.push("M",b[c+1],b[c+2],"L",b[c+4],b[c+5],g[c+4],g[c+5],g[c+1],g[c+2],"z"),
a.isFlat=l}return a},addPlotBand:function(c){return this.addPlotBandOrLine(c,"plotBands")},addPlotLine:function(c){return this.addPlotBandOrLine(c,"plotLines")},addPlotBandOrLine:function(h,f){var g=(new c.PlotLineOrBand(this,h)).render(),b=this.userOptions;if(g){if(f){var a=b[f]||[];a.push(h);b[f]=a}this.plotLinesAndBands.push(g)}return g},removePlotBandOrLine:function(c){for(var h=this.plotLinesAndBands,g=this.options,b=this.userOptions,a=h.length;a--;)h[a].id===c&&h[a].destroy();[g.plotLines||
[],b.plotLines||[],g.plotBands||[],b.plotBands||[]].forEach(function(b){for(a=b.length;a--;)b[a].id===c&&v(b,b[a])})},removePlotBand:function(c){this.removePlotBandOrLine(c)},removePlotLine:function(c){this.removePlotBandOrLine(c)}})});M(I,"parts/Tooltip.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.defined,G=f.discardElement,z=f.extend,B=f.isNumber,t=f.isString,v=f.pick,C=f.splat,H=f.syncTimeout;"";var y=c.doc,h=c.format,n=c.merge,q=c.timeUnits;c.Tooltip=function(){this.init.apply(this,
arguments)};c.Tooltip.prototype={init:function(c,b){this.chart=c;this.options=b;this.crosshairs=[];this.now={x:0,y:0};this.isHidden=!0;this.split=b.split&&!c.inverted;this.shared=b.shared||this.split;this.outside=v(b.outside,!(!c.scrollablePixelsX&&!c.scrollablePixelsY))},cleanSplit:function(c){this.chart.series.forEach(function(b){var a=b&&b.tt;a&&(!a.isActive||c?b.tt=a.destroy():a.isActive=!1)})},applyFilter:function(){var c=this.chart;c.renderer.definition({tagName:"filter",id:"drop-shadow-"+c.index,
opacity:.5,children:[{tagName:"feGaussianBlur","in":"SourceAlpha",stdDeviation:1},{tagName:"feOffset",dx:1,dy:1},{tagName:"feComponentTransfer",children:[{tagName:"feFuncA",type:"linear",slope:.3}]},{tagName:"feMerge",children:[{tagName:"feMergeNode"},{tagName:"feMergeNode","in":"SourceGraphic"}]}]});c.renderer.definition({tagName:"style",textContent:".highcharts-tooltip-"+c.index+"{filter:url(#drop-shadow-"+c.index+")}"})},getLabel:function(){var g=this,b=this.chart.renderer,a=this.chart.styledMode,
d=this.options,e="tooltip"+(F(d.className)?" "+d.className:""),l;if(!this.label){this.outside&&(this.container=l=c.doc.createElement("div"),l.className="highcharts-tooltip-container",c.css(l,{position:"absolute",top:"1px",pointerEvents:d.style&&d.style.pointerEvents,zIndex:3}),c.doc.body.appendChild(l),this.renderer=b=new c.Renderer(l,0,0,{},void 0,void 0,b.styledMode));this.split?this.label=b.g(e):(this.label=b.label("",0,0,d.shape||"callout",null,null,d.useHTML,null,e).attr({padding:d.padding,r:d.borderRadius}),
a||this.label.attr({fill:d.backgroundColor,"stroke-width":d.borderWidth}).css(d.style).shadow(d.shadow));a&&(this.applyFilter(),this.label.addClass("highcharts-tooltip-"+this.chart.index));if(g.outside&&!g.split){var h={x:this.label.xSetter,y:this.label.ySetter};this.label.xSetter=function(a,b){h[b].call(this.label,g.distance);l.style.left=a+"px"};this.label.ySetter=function(a,b){h[b].call(this.label,g.distance);l.style.top=a+"px"}}this.label.attr({zIndex:8}).add()}return this.label},update:function(c){this.destroy();
n(!0,this.chart.options.tooltip.userOptions,c);this.init(this.chart,n(!0,this.options,c))},destroy:function(){this.label&&(this.label=this.label.destroy());this.split&&this.tt&&(this.cleanSplit(this.chart,!0),this.tt=this.tt.destroy());this.renderer&&(this.renderer=this.renderer.destroy(),G(this.container));c.clearTimeout(this.hideTimer);c.clearTimeout(this.tooltipTimeout)},move:function(g,b,a,d){var e=this,l=e.now,h=!1!==e.options.animation&&!e.isHidden&&(1<Math.abs(g-l.x)||1<Math.abs(b-l.y)),f=
e.followPointer||1<e.len;z(l,{x:h?(2*l.x+g)/3:g,y:h?(l.y+b)/2:b,anchorX:f?void 0:h?(2*l.anchorX+a)/3:a,anchorY:f?void 0:h?(l.anchorY+d)/2:d});e.getLabel().attr(l);h&&(c.clearTimeout(this.tooltipTimeout),this.tooltipTimeout=setTimeout(function(){e&&e.move(g,b,a,d)},32))},hide:function(g){var b=this;c.clearTimeout(this.hideTimer);g=v(g,this.options.hideDelay,500);this.isHidden||(this.hideTimer=H(function(){b.getLabel()[g?"fadeOut":"hide"]();b.isHidden=!0},g))},getAnchor:function(c,b){var a=this.chart,
d=a.pointer,e=a.inverted,l=a.plotTop,g=a.plotLeft,h=0,p=0,f,k;c=C(c);this.followPointer&&b?(void 0===b.chartX&&(b=d.normalize(b)),c=[b.chartX-a.plotLeft,b.chartY-l]):c[0].tooltipPos?c=c[0].tooltipPos:(c.forEach(function(a){f=a.series.yAxis;k=a.series.xAxis;h+=a.plotX+(!e&&k?k.left-g:0);p+=(a.plotLow?(a.plotLow+a.plotHigh)/2:a.plotY)+(!e&&f?f.top-l:0)}),h/=c.length,p/=c.length,c=[e?a.plotWidth-p:h,this.shared&&!e&&1<c.length&&b?b.chartY-l:e?a.plotHeight-h:p]);return c.map(Math.round)},getPosition:function(c,
b,a){var d=this.chart,e=this.distance,l={},g=d.inverted&&a.h||0,h,p=this.outside,f=p?y.documentElement.clientWidth-2*e:d.chartWidth,k=p?Math.max(y.body.scrollHeight,y.documentElement.scrollHeight,y.body.offsetHeight,y.documentElement.offsetHeight,y.documentElement.clientHeight):d.chartHeight,r=d.pointer.getChartPosition(),x=d.containerScaling,A=function(a){return x?a*x.scaleX:a},w=function(a){return x?a*x.scaleY:a},m=function(l){var m="x"===l;return[l,m?f:k,m?c:b].concat(p?[m?A(c):w(b),m?r.left-e+
A(a.plotX+d.plotLeft):r.top-e+w(a.plotY+d.plotTop),0,m?f:k]:[m?c:b,m?a.plotX+d.plotLeft:a.plotY+d.plotTop,m?d.plotLeft:d.plotTop,m?d.plotLeft+d.plotWidth:d.plotTop+d.plotHeight])},n=m("y"),J=m("x"),q=!this.followPointer&&v(a.ttBelow,!d.inverted===!!a.negative),t=function(a,b,d,c,k,m,r){var x="y"===a?w(e):A(e),p=(d-c)/2,h=c<k-e,f=k+e+c<b,u=k-x-d+p;k=k+x-p;if(q&&f)l[a]=k;else if(!q&&h)l[a]=u;else if(h)l[a]=Math.min(r-c,0>u-g?u:u-g);else if(f)l[a]=Math.max(m,k+g+d>b?k:k+g);else return!1},C=function(a,
b,d,k,c){var m;c<e||c>b-e?m=!1:l[a]=c<d/2?1:c>b-k/2?b-k-2:c-d/2;return m},O=function(a){var b=n;n=J;J=b;h=a},D=function(){!1!==t.apply(0,n)?!1!==C.apply(0,J)||h||(O(!0),D()):h?l.x=l.y=0:(O(!0),D())};(d.inverted||1<this.len)&&O();D();return l},defaultFormatter:function(c){var b=this.points||C(this);var a=[c.tooltipFooterHeaderFormatter(b[0])];a=a.concat(c.bodyFormatter(b));a.push(c.tooltipFooterHeaderFormatter(b[0],!0));return a},refresh:function(g,b){var a=this.chart,d=this.options,e=g,l={},h=[],
f=d.formatter||this.defaultFormatter;l=this.shared;var p=a.styledMode;if(d.enabled){c.clearTimeout(this.hideTimer);this.followPointer=C(e)[0].series.tooltipOptions.followPointer;var u=this.getAnchor(e,b);b=u[0];var k=u[1];!l||e.series&&e.series.noSharedTooltip?l=e.getLabelConfig():(a.pointer.applyInactiveState(e),e.forEach(function(a){a.setState("hover");h.push(a.getLabelConfig())}),l={x:e[0].category,y:e[0].y},l.points=h,e=e[0]);this.len=h.length;a=f.call(l,this);f=e.series;this.distance=v(f.tooltipOptions.distance,
16);!1===a?this.hide():(this.split?this.renderSplit(a,C(g)):(g=this.getLabel(),d.style.width&&!p||g.css({width:this.chart.spacingBox.width}),g.attr({text:a&&a.join?a.join(""):a}),g.removeClass(/highcharts-color-[\d]+/g).addClass("highcharts-color-"+v(e.colorIndex,f.colorIndex)),p||g.attr({stroke:d.borderColor||e.color||f.color||"#666666"}),this.updatePosition({plotX:b,plotY:k,negative:e.negative,ttBelow:e.ttBelow,h:u[2]||0})),this.isHidden&&this.label&&this.label.attr({opacity:1}).show(),this.isHidden=
!1);c.fireEvent(this,"refresh")}},renderSplit:function(g,b){var a=this,d=[],e=this.chart,l=e.renderer,h=!0,f=this.options,p=0,u,k=this.getLabel(),r=e.plotTop;t(g)&&(g=[!1,g]);g.slice(0,b.length+1).forEach(function(c,m){if(!1!==c&&""!==c){m=b[m-1]||{isHeader:!0,plotX:b[0].plotX,plotY:e.plotHeight};var g=m.series||a,x=g.tt,w=m.series||{},A="highcharts-color-"+v(m.colorIndex,w.colorIndex,"none");x||(x={padding:f.padding,r:f.borderRadius},e.styledMode||(x.fill=f.backgroundColor,x["stroke-width"]=f.borderWidth),
g.tt=x=l.label(null,null,null,(m.isHeader?f.headerShape:f.shape)||"callout",null,null,f.useHTML).addClass(m.isHeader?"highcharts-tooltip-header ":"highcharts-tooltip-box "+A).attr(x).add(k));x.isActive=!0;x.attr({text:c});e.styledMode||x.css(f.style).shadow(f.shadow).attr({stroke:f.borderColor||m.color||w.color||"#333333"});c=x.getBBox();A=c.width+x.strokeWidth();m.isHeader?(p=c.height,e.xAxis[0].opposite&&(u=!0,r-=p),c=Math.max(0,Math.min(m.plotX+e.plotLeft-A/2,e.chartWidth+(e.scrollablePixelsX?
e.scrollablePixelsX-e.marginRight:0)-A))):c=m.plotX+e.plotLeft-v(f.distance,16)-A;0>c&&(h=!1);m.isHeader?w=u?-p:e.plotHeight+p:(w=w.yAxis,w=w.pos-r+Math.max(0,Math.min(m.plotY||0,w.len)));d.push({target:w,rank:m.isHeader?1:0,size:g.tt.getBBox().height+1,point:m,x:c,tt:x})}});this.cleanSplit();f.positioner&&d.forEach(function(b){var d=f.positioner.call(a,b.tt.getBBox().width,b.size,b.point);b.x=d.x;b.align=0;b.target=d.y;b.rank=v(d.rank,b.rank)});c.distribute(d,e.plotHeight+p);d.forEach(function(b){var d=
b.point,c=d.series,k=c&&c.yAxis;b.tt.attr({visibility:void 0===b.pos?"hidden":"inherit",x:h||d.isHeader||f.positioner?b.x:d.plotX+e.plotLeft+a.distance,y:b.pos+r,anchorX:d.isHeader?d.plotX+e.plotLeft:d.plotX+c.xAxis.pos,anchorY:d.isHeader?e.plotTop+e.plotHeight/2:k.pos+Math.max(0,Math.min(d.plotY,k.len))})});var x=a.container;g=a.renderer;if(a.outside&&x&&g){var A=e.pointer.getChartPosition();x.style.left=A.left+"px";x.style.top=A.top+"px";x=k.getBBox();g.setSize(x.width+x.x,x.height+x.y,!1)}},updatePosition:function(g){var b=
this.chart,a=b.pointer,d=this.getLabel(),e=g.plotX+b.plotLeft,l=g.plotY+b.plotTop;a=a.getChartPosition();g=(this.options.positioner||this.getPosition).call(this,d.width,d.height,g);if(this.outside){var h=(this.options.borderWidth||0)+2*this.distance;this.renderer.setSize(d.width+h,d.height+h,!1);if(b=b.containerScaling)c.css(this.container,{transform:"scale("+b.scaleX+", "+b.scaleY+")"}),e*=b.scaleX,l*=b.scaleY;e+=a.left-g.x;l+=a.top-g.y}this.move(Math.round(g.x),Math.round(g.y||0),e,l)},getDateFormat:function(c,
b,a,d){var e=this.chart.time,l=e.dateFormat("%m-%d %H:%M:%S.%L",b),g={millisecond:15,second:12,minute:9,hour:6,day:3},h="millisecond";for(p in q){if(c===q.week&&+e.dateFormat("%w",b)===a&&"00:00:00.000"===l.substr(6)){var p="week";break}if(q[p]>c){p=h;break}if(g[p]&&l.substr(g[p])!=="01-01 00:00:00.000".substr(g[p]))break;"week"!==p&&(h=p)}if(p)var f=e.resolveDTLFormat(d[p]).main;return f},getXDateFormat:function(c,b,a){b=b.dateTimeLabelFormats;var d=a&&a.closestPointRange;return(d?this.getDateFormat(d,
c.x,a.options.startOfWeek,b):b.day)||b.year},tooltipFooterHeaderFormatter:function(g,b){var a=b?"footer":"header",d=g.series,e=d.tooltipOptions,l=e.xDateFormat,f=d.xAxis,n=f&&"datetime"===f.options.type&&B(g.key),p=e[a+"Format"];b={isFooter:b,labelConfig:g};c.fireEvent(this,"headerFormatter",b,function(a){n&&!l&&(l=this.getXDateFormat(g,e,f));n&&l&&(g.point&&g.point.tooltipDateKeys||["key"]).forEach(function(a){p=p.replace("{point."+a+"}","{point."+a+":"+l+"}")});d.chart.styledMode&&(p=this.styledModeFormat(p));
a.text=h(p,{point:g,series:d},this.chart.time)});return b.text},bodyFormatter:function(c){return c.map(function(b){var a=b.series.tooltipOptions;return(a[(b.point.formatPrefix||"point")+"Formatter"]||b.point.tooltipFormatter).call(b.point,a[(b.point.formatPrefix||"point")+"Format"]||"")})},styledModeFormat:function(c){return c.replace('style="font-size: 10px"','class="highcharts-header"').replace(/style="color:{(point|series)\.color}"/g,'class="highcharts-color-{$1.colorIndex}"')}}});M(I,"parts/Pointer.js",
[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.attr,G=f.defined,z=f.extend,B=f.isNumber,t=f.isObject,v=f.objectEach,C=f.pick,H=f.splat,y=c.addEvent,h=c.charts,n=c.color,q=c.css,g=c.find,b=c.fireEvent,a=c.offset,d=c.Tooltip;c.Pointer=function(a,b){this.init(a,b)};c.Pointer.prototype={init:function(a,b){this.options=b;this.chart=a;this.runChartClick=b.chart.events&&!!b.chart.events.click;this.pinchDown=[];this.lastValidTouch={};d&&(a.tooltip=new d(a,b.tooltip),this.followTouchMove=
C(b.tooltip.followTouchMove,!0));this.setDOMEvents()},zoomOption:function(a){var b=this.chart,d=b.options.chart,e=d.zoomType||"";b=b.inverted;/touch/.test(a.type)&&(e=C(d.pinchType,e));this.zoomX=a=/x/.test(e);this.zoomY=e=/y/.test(e);this.zoomHor=a&&!b||e&&b;this.zoomVert=e&&!b||a&&b;this.hasZoom=a||e},getChartPosition:function(){return this.chartPosition||(this.chartPosition=a(this.chart.container))},normalize:function(a,b){var d=a.touches?a.touches.length?a.touches.item(0):a.changedTouches[0]:
a;b||(b=this.getChartPosition());var e=d.pageX-b.left;b=d.pageY-b.top;if(d=this.chart.containerScaling)e/=d.scaleX,b/=d.scaleY;return z(a,{chartX:Math.round(e),chartY:Math.round(b)})},getCoordinates:function(a){var b={xAxis:[],yAxis:[]};this.chart.axes.forEach(function(d){b[d.isXAxis?"xAxis":"yAxis"].push({axis:d,value:d.toValue(a[d.horiz?"chartX":"chartY"])})});return b},findNearestKDPoint:function(a,b,d){var e;a.forEach(function(a){var c=!(a.noSharedTooltip&&b)&&0>a.options.findNearestPointBy.indexOf("y");
a=a.searchPoint(d,c);if((c=t(a,!0))&&!(c=!t(e,!0))){c=e.distX-a.distX;var k=e.dist-a.dist,l=(a.series.group&&a.series.group.zIndex)-(e.series.group&&e.series.group.zIndex);c=0<(0!==c&&b?c:0!==k?k:0!==l?l:e.series.index>a.series.index?-1:1)}c&&(e=a)});return e},getPointFromEvent:function(a){a=a.target;for(var b;a&&!b;)b=a.point,a=a.parentNode;return b},getChartCoordinatesFromPoint:function(a,b){var d=a.series,e=d.xAxis;d=d.yAxis;var c=C(a.clientX,a.plotX),l=a.shapeArgs;if(e&&d)return b?{chartX:e.len+
e.pos-c,chartY:d.len+d.pos-a.plotY}:{chartX:c+e.pos,chartY:a.plotY+d.pos};if(l&&l.x&&l.y)return{chartX:l.x,chartY:l.y}},getHoverData:function(a,b,d,c,h,f){var e,l=[];c=!(!c||!a);var x=b&&!b.stickyTracking?[b]:d.filter(function(a){return a.visible&&!(!h&&a.directTouch)&&C(a.options.enableMouseTracking,!0)&&a.stickyTracking});b=(e=c||!f?a:this.findNearestKDPoint(x,h,f))&&e.series;e&&(h&&!b.noSharedTooltip?(x=d.filter(function(a){return a.visible&&!(!h&&a.directTouch)&&C(a.options.enableMouseTracking,
!0)&&!a.noSharedTooltip}),x.forEach(function(a){var b=g(a.points,function(a){return a.x===e.x&&!a.isNull});t(b)&&(a.chart.isBoosting&&(b=a.getPoint(b)),l.push(b))})):l.push(e));return{hoverPoint:e,hoverSeries:b,hoverPoints:l}},runPointActions:function(a,b){var d=this.chart,e=d.tooltip&&d.tooltip.options.enabled?d.tooltip:void 0,l=e?e.shared:!1,g=b||d.hoverPoint,k=g&&g.series||d.hoverSeries;k=this.getHoverData(g,k,d.series,(!a||"touchmove"!==a.type)&&(!!b||k&&k.directTouch&&this.isDirectTouch),l,a);
g=k.hoverPoint;var r=k.hoverPoints;b=(k=k.hoverSeries)&&k.tooltipOptions.followPointer;l=l&&k&&!k.noSharedTooltip;if(g&&(g!==d.hoverPoint||e&&e.isHidden)){(d.hoverPoints||[]).forEach(function(a){-1===r.indexOf(a)&&a.setState()});if(d.hoverSeries!==k)k.onMouseOver();this.applyInactiveState(r);(r||[]).forEach(function(a){a.setState("hover")});d.hoverPoint&&d.hoverPoint.firePointEvent("mouseOut");if(!g.series)return;g.firePointEvent("mouseOver");d.hoverPoints=r;d.hoverPoint=g;e&&e.refresh(l?r:g,a)}else b&&
e&&!e.isHidden&&(g=e.getAnchor([{}],a),e.updatePosition({plotX:g[0],plotY:g[1]}));this.unDocMouseMove||(this.unDocMouseMove=y(d.container.ownerDocument,"mousemove",function(a){var b=h[c.hoverChartIndex];if(b)b.pointer.onDocumentMouseMove(a)}));d.axes.forEach(function(b){var d=C(b.crosshair.snap,!0),e=d?c.find(r,function(a){return a.series[b.coll]===b}):void 0;e||!d?b.drawCrosshair(a,e):b.hideCrosshair()})},applyInactiveState:function(a){var b=[],d;(a||[]).forEach(function(a){d=a.series;b.push(d);
d.linkedParent&&b.push(d.linkedParent);d.linkedSeries&&(b=b.concat(d.linkedSeries));d.navigatorSeries&&b.push(d.navigatorSeries)});this.chart.series.forEach(function(a){-1===b.indexOf(a)?a.setState("inactive",!0):a.options.inactiveOtherPoints&&a.setAllPointsToState("inactive")})},reset:function(a,b){var d=this.chart,e=d.hoverSeries,c=d.hoverPoint,g=d.hoverPoints,k=d.tooltip,l=k&&k.shared?g:c;a&&l&&H(l).forEach(function(b){b.series.isCartesian&&void 0===b.plotX&&(a=!1)});if(a)k&&l&&H(l).length&&(k.refresh(l),
k.shared&&g?g.forEach(function(a){a.setState(a.state,!0);a.series.isCartesian&&(a.series.xAxis.crosshair&&a.series.xAxis.drawCrosshair(null,a),a.series.yAxis.crosshair&&a.series.yAxis.drawCrosshair(null,a))}):c&&(c.setState(c.state,!0),d.axes.forEach(function(a){a.crosshair&&a.drawCrosshair(null,c)})));else{if(c)c.onMouseOut();g&&g.forEach(function(a){a.setState()});if(e)e.onMouseOut();k&&k.hide(b);this.unDocMouseMove&&(this.unDocMouseMove=this.unDocMouseMove());d.axes.forEach(function(a){a.hideCrosshair()});
this.hoverX=d.hoverPoints=d.hoverPoint=null}},scaleGroups:function(a,b){var d=this.chart,e;d.series.forEach(function(c){e=a||c.getPlotBox();c.xAxis&&c.xAxis.zoomEnabled&&c.group&&(c.group.attr(e),c.markerGroup&&(c.markerGroup.attr(e),c.markerGroup.clip(b?d.clipRect:null)),c.dataLabelsGroup&&c.dataLabelsGroup.attr(e))});d.clipRect.attr(b||d.clipBox)},dragStart:function(a){var b=this.chart;b.mouseIsDown=a.type;b.cancelClick=!1;b.mouseDownX=this.mouseDownX=a.chartX;b.mouseDownY=this.mouseDownY=a.chartY},
drag:function(a){var b=this.chart,d=b.options.chart,e=a.chartX,c=a.chartY,g=this.zoomHor,k=this.zoomVert,r=b.plotLeft,h=b.plotTop,A=b.plotWidth,w=b.plotHeight,m=this.selectionMarker,f=this.mouseDownX,J=this.mouseDownY,v=d.panKey&&a[d.panKey+"Key"];if(!m||!m.touch)if(e<r?e=r:e>r+A&&(e=r+A),c<h?c=h:c>h+w&&(c=h+w),this.hasDragged=Math.sqrt(Math.pow(f-e,2)+Math.pow(J-c,2)),10<this.hasDragged){var q=b.isInsidePlot(f-r,J-h);b.hasCartesianSeries&&(this.zoomX||this.zoomY)&&q&&!v&&!m&&(this.selectionMarker=
m=b.renderer.rect(r,h,g?1:A,k?1:w,0).attr({"class":"highcharts-selection-marker",zIndex:7}).add(),b.styledMode||m.attr({fill:d.selectionMarkerFill||n("#335cad").setOpacity(.25).get()}));m&&g&&(e-=f,m.attr({width:Math.abs(e),x:(0<e?0:e)+f}));m&&k&&(e=c-J,m.attr({height:Math.abs(e),y:(0<e?0:e)+J}));q&&!m&&d.panning&&b.pan(a,d.panning)}},drop:function(a){var d=this,e=this.chart,c=this.hasPinched;if(this.selectionMarker){var g={originalEvent:a,xAxis:[],yAxis:[]},h=this.selectionMarker,k=h.attr?h.attr("x"):
h.x,r=h.attr?h.attr("y"):h.y,x=h.attr?h.attr("width"):h.width,A=h.attr?h.attr("height"):h.height,w;if(this.hasDragged||c)e.axes.forEach(function(b){if(b.zoomEnabled&&G(b.min)&&(c||d[{xAxis:"zoomX",yAxis:"zoomY"}[b.coll]])){var e=b.horiz,m="touchend"===a.type?b.minPixelPadding:0,l=b.toValue((e?k:r)+m);e=b.toValue((e?k+x:r+A)-m);g[b.coll].push({axis:b,min:Math.min(l,e),max:Math.max(l,e)});w=!0}}),w&&b(e,"selection",g,function(a){e.zoom(z(a,c?{animation:!1}:null))});B(e.index)&&(this.selectionMarker=
this.selectionMarker.destroy());c&&this.scaleGroups()}e&&B(e.index)&&(q(e.container,{cursor:e._cursor}),e.cancelClick=10<this.hasDragged,e.mouseIsDown=this.hasDragged=this.hasPinched=!1,this.pinchDown=[])},onContainerMouseDown:function(a){a=this.normalize(a);2!==a.button&&(this.zoomOption(a),a.preventDefault&&a.preventDefault(),this.dragStart(a))},onDocumentMouseUp:function(a){h[c.hoverChartIndex]&&h[c.hoverChartIndex].pointer.drop(a)},onDocumentMouseMove:function(a){var b=this.chart,d=this.chartPosition;
a=this.normalize(a,d);!d||this.inClass(a.target,"highcharts-tracker")||b.isInsidePlot(a.chartX-b.plotLeft,a.chartY-b.plotTop)||this.reset()},onContainerMouseLeave:function(a){var b=h[c.hoverChartIndex];b&&(a.relatedTarget||a.toElement)&&(b.pointer.reset(),b.pointer.chartPosition=void 0)},onContainerMouseMove:function(a){var b=this.chart;G(c.hoverChartIndex)&&h[c.hoverChartIndex]&&h[c.hoverChartIndex].mouseIsDown||(c.hoverChartIndex=b.index);a=this.normalize(a);a.preventDefault||(a.returnValue=!1);
"mousedown"===b.mouseIsDown&&this.drag(a);!this.inClass(a.target,"highcharts-tracker")&&!b.isInsidePlot(a.chartX-b.plotLeft,a.chartY-b.plotTop)||b.openMenu||this.runPointActions(a)},inClass:function(a,b){for(var d;a;){if(d=F(a,"class")){if(-1!==d.indexOf(b))return!0;if(-1!==d.indexOf("highcharts-container"))return!1}a=a.parentNode}},onTrackerMouseOut:function(a){var b=this.chart.hoverSeries;a=a.relatedTarget||a.toElement;this.isDirectTouch=!1;if(!(!b||!a||b.stickyTracking||this.inClass(a,"highcharts-tooltip")||
this.inClass(a,"highcharts-series-"+b.index)&&this.inClass(a,"highcharts-tracker")))b.onMouseOut()},onContainerClick:function(a){var d=this.chart,e=d.hoverPoint,c=d.plotLeft,g=d.plotTop;a=this.normalize(a);d.cancelClick||(e&&this.inClass(a.target,"highcharts-tracker")?(b(e.series,"click",z(a,{point:e})),d.hoverPoint&&e.firePointEvent("click",a)):(z(a,this.getCoordinates(a)),d.isInsidePlot(a.chartX-c,a.chartY-g)&&b(d,"click",a)))},setDOMEvents:function(){var a=this,b=a.chart.container,d=b.ownerDocument;
b.onmousedown=function(b){a.onContainerMouseDown(b)};b.onmousemove=function(b){a.onContainerMouseMove(b)};b.onclick=function(b){a.onContainerClick(b)};this.unbindContainerMouseLeave=y(b,"mouseleave",a.onContainerMouseLeave);c.unbindDocumentMouseUp||(c.unbindDocumentMouseUp=y(d,"mouseup",a.onDocumentMouseUp));c.hasTouch&&(y(b,"touchstart",function(b){a.onContainerTouchStart(b)}),y(b,"touchmove",function(b){a.onContainerTouchMove(b)}),c.unbindDocumentTouchEnd||(c.unbindDocumentTouchEnd=y(d,"touchend",
a.onDocumentTouchEnd)))},destroy:function(){var a=this;a.unDocMouseMove&&a.unDocMouseMove();this.unbindContainerMouseLeave();c.chartCount||(c.unbindDocumentMouseUp&&(c.unbindDocumentMouseUp=c.unbindDocumentMouseUp()),c.unbindDocumentTouchEnd&&(c.unbindDocumentTouchEnd=c.unbindDocumentTouchEnd()));clearInterval(a.tooltipTimeout);v(a,function(b,d){a[d]=null})}}});M(I,"parts/TouchPointer.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.extend,G=f.pick,z=c.charts,B=c.noop;F(c.Pointer.prototype,
{pinchTranslate:function(c,f,C,B,y,h){this.zoomHor&&this.pinchTranslateDirection(!0,c,f,C,B,y,h);this.zoomVert&&this.pinchTranslateDirection(!1,c,f,C,B,y,h)},pinchTranslateDirection:function(c,f,C,B,y,h,n,q){var g=this.chart,b=c?"x":"y",a=c?"X":"Y",d="chart"+a,e=c?"width":"height",l=g["plot"+(c?"Left":"Top")],v,t,p=q||1,u=g.inverted,k=g.bounds[c?"h":"v"],r=1===f.length,x=f[0][d],A=C[0][d],w=!r&&f[1][d],m=!r&&C[1][d];C=function(){!r&&20<Math.abs(x-w)&&(p=q||Math.abs(A-m)/Math.abs(x-w));t=(l-A)/p+x;
v=g["plot"+(c?"Width":"Height")]/p};C();f=t;if(f<k.min){f=k.min;var K=!0}else f+v>k.max&&(f=k.max-v,K=!0);K?(A-=.8*(A-n[b][0]),r||(m-=.8*(m-n[b][1])),C()):n[b]=[A,m];u||(h[b]=t-l,h[e]=v);h=u?1/p:p;y[e]=v;y[b]=f;B[u?c?"scaleY":"scaleX":"scale"+a]=p;B["translate"+a]=h*l+(A-h*x)},pinch:function(c){var f=this,t=f.chart,z=f.pinchDown,y=c.touches,h=y.length,n=f.lastValidTouch,q=f.hasZoom,g=f.selectionMarker,b={},a=1===h&&(f.inClass(c.target,"highcharts-tracker")&&t.runTrackerClick||f.runChartClick),d={};
1<h&&(f.initiated=!0);q&&f.initiated&&!a&&c.preventDefault();[].map.call(y,function(a){return f.normalize(a)});"touchstart"===c.type?([].forEach.call(y,function(a,b){z[b]={chartX:a.chartX,chartY:a.chartY}}),n.x=[z[0].chartX,z[1]&&z[1].chartX],n.y=[z[0].chartY,z[1]&&z[1].chartY],t.axes.forEach(function(a){if(a.zoomEnabled){var b=t.bounds[a.horiz?"h":"v"],d=a.minPixelPadding,e=a.toPixels(Math.min(G(a.options.min,a.dataMin),a.dataMin)),c=a.toPixels(Math.max(G(a.options.max,a.dataMax),a.dataMax)),g=Math.max(e,
c);b.min=Math.min(a.pos,Math.min(e,c)-d);b.max=Math.max(a.pos+a.len,g+d)}}),f.res=!0):f.followTouchMove&&1===h?this.runPointActions(f.normalize(c)):z.length&&(g||(f.selectionMarker=g=F({destroy:B,touch:!0},t.plotBox)),f.pinchTranslate(z,y,b,g,d,n),f.hasPinched=q,f.scaleGroups(b,d),f.res&&(f.res=!1,this.reset(!1,0)))},touch:function(f,v){var t=this.chart,z;if(t.index!==c.hoverChartIndex)this.onContainerMouseLeave({relatedTarget:!0});c.hoverChartIndex=t.index;if(1===f.touches.length)if(f=this.normalize(f),
(z=t.isInsidePlot(f.chartX-t.plotLeft,f.chartY-t.plotTop))&&!t.openMenu){v&&this.runPointActions(f);if("touchmove"===f.type){v=this.pinchDown;var y=v[0]?4<=Math.sqrt(Math.pow(v[0].chartX-f.chartX,2)+Math.pow(v[0].chartY-f.chartY,2)):!1}G(y,!0)&&this.pinch(f)}else v&&this.reset();else 2===f.touches.length&&this.pinch(f)},onContainerTouchStart:function(c){this.zoomOption(c);this.touch(c,!0)},onContainerTouchMove:function(c){this.touch(c)},onDocumentTouchEnd:function(f){z[c.hoverChartIndex]&&z[c.hoverChartIndex].pointer.drop(f)}})});
M(I,"parts/MSPointer.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.extend,G=f.objectEach,z=c.addEvent,B=c.charts,t=c.css,v=c.doc,C=c.noop;f=c.Pointer;var H=c.removeEvent,y=c.win,h=c.wrap;if(!c.hasTouch&&(y.PointerEvent||y.MSPointerEvent)){var n={},q=!!y.PointerEvent,g=function(){var a=[];a.item=function(a){return this[a]};G(n,function(b){a.push({pageX:b.pageX,pageY:b.pageY,target:b.target})});return a},b=function(a,b,e,l){"touch"!==a.pointerType&&a.pointerType!==a.MSPOINTER_TYPE_TOUCH||
!B[c.hoverChartIndex]||(l(a),l=B[c.hoverChartIndex].pointer,l[b]({type:e,target:a.currentTarget,preventDefault:C,touches:g()}))};F(f.prototype,{onContainerPointerDown:function(a){b(a,"onContainerTouchStart","touchstart",function(a){n[a.pointerId]={pageX:a.pageX,pageY:a.pageY,target:a.currentTarget}})},onContainerPointerMove:function(a){b(a,"onContainerTouchMove","touchmove",function(a){n[a.pointerId]={pageX:a.pageX,pageY:a.pageY};n[a.pointerId].target||(n[a.pointerId].target=a.currentTarget)})},onDocumentPointerUp:function(a){b(a,
"onDocumentTouchEnd","touchend",function(a){delete n[a.pointerId]})},batchMSEvents:function(a){a(this.chart.container,q?"pointerdown":"MSPointerDown",this.onContainerPointerDown);a(this.chart.container,q?"pointermove":"MSPointerMove",this.onContainerPointerMove);a(v,q?"pointerup":"MSPointerUp",this.onDocumentPointerUp)}});h(f.prototype,"init",function(a,b,e){a.call(this,b,e);this.hasZoom&&t(b.container,{"-ms-touch-action":"none","touch-action":"none"})});h(f.prototype,"setDOMEvents",function(a){a.apply(this);
(this.hasZoom||this.followTouchMove)&&this.batchMSEvents(z)});h(f.prototype,"destroy",function(a){this.batchMSEvents(H);a.call(this)})}});M(I,"parts/Legend.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.defined,G=f.discardElement,z=f.isNumber,B=f.pick,t=f.setAnimation,v=c.addEvent,C=c.css,H=c.fireEvent;f=c.isFirefox;var y=c.marginNames,h=c.merge,n=c.stableSort,q=c.win,g=c.wrap;c.Legend=function(b,a){this.init(b,a)};c.Legend.prototype={init:function(b,a){this.chart=b;this.setOptions(a);
a.enabled&&(this.render(),v(this.chart,"endResize",function(){this.legend.positionCheckboxes()}),this.proximate?this.unchartrender=v(this.chart,"render",function(){this.legend.proximatePositions();this.legend.positionItems()}):this.unchartrender&&this.unchartrender())},setOptions:function(b){var a=B(b.padding,8);this.options=b;this.chart.styledMode||(this.itemStyle=b.itemStyle,this.itemHiddenStyle=h(this.itemStyle,b.itemHiddenStyle));this.itemMarginTop=b.itemMarginTop||0;this.itemMarginBottom=b.itemMarginBottom||
0;this.padding=a;this.initialItemY=a-5;this.symbolWidth=B(b.symbolWidth,16);this.pages=[];this.proximate="proximate"===b.layout&&!this.chart.inverted},update:function(b,a){var d=this.chart;this.setOptions(h(!0,this.options,b));this.destroy();d.isDirtyLegend=d.isDirtyBox=!0;B(a,!0)&&d.redraw();H(this,"afterUpdate")},colorizeItem:function(b,a){b.legendGroup[a?"removeClass":"addClass"]("highcharts-legend-item-hidden");if(!this.chart.styledMode){var d=this.options,e=b.legendItem,c=b.legendLine,g=b.legendSymbol,
h=this.itemHiddenStyle.color;d=a?d.itemStyle.color:h;var f=a?b.color||h:h,u=b.options&&b.options.marker,k={fill:f};e&&e.css({fill:d,color:d});c&&c.attr({stroke:f});g&&(u&&g.isMarker&&(k=b.pointAttribs(),a||(k.stroke=k.fill=h)),g.attr(k))}H(this,"afterColorizeItem",{item:b,visible:a})},positionItems:function(){this.allItems.forEach(this.positionItem,this);this.chart.isResizing||this.positionCheckboxes()},positionItem:function(b){var a=this.options,d=a.symbolPadding;a=!a.rtl;var e=b._legendItemPos,
c=e[0];e=e[1];var g=b.checkbox;if((b=b.legendGroup)&&b.element)b[F(b.translateY)?"animate":"attr"]({translateX:a?c:this.legendWidth-c-2*d-4,translateY:e});g&&(g.x=c,g.y=e)},destroyItem:function(b){var a=b.checkbox;["legendItem","legendLine","legendSymbol","legendGroup"].forEach(function(a){b[a]&&(b[a]=b[a].destroy())});a&&G(b.checkbox)},destroy:function(){function b(a){this[a]&&(this[a]=this[a].destroy())}this.getAllItems().forEach(function(a){["legendItem","legendGroup"].forEach(b,a)});"clipRect up down pager nav box title group".split(" ").forEach(b,
this);this.display=null},positionCheckboxes:function(){var b=this.group&&this.group.alignAttr,a=this.clipHeight||this.legendHeight,d=this.titleHeight;if(b){var e=b.translateY;this.allItems.forEach(function(c){var g=c.checkbox;if(g){var l=e+d+g.y+(this.scrollOffset||0)+3;C(g,{left:b.translateX+c.checkboxOffset+g.x-20+"px",top:l+"px",display:this.proximate||l>e-6&&l<e+a-6?"":"none"})}},this)}},renderTitle:function(){var b=this.options,a=this.padding,d=b.title,e=0;d.text&&(this.title||(this.title=this.chart.renderer.label(d.text,
a-3,a-4,null,null,null,b.useHTML,null,"legend-title").attr({zIndex:1}),this.chart.styledMode||this.title.css(d.style),this.title.add(this.group)),d.width||this.title.css({width:this.maxLegendWidth+"px"}),b=this.title.getBBox(),e=b.height,this.offsetWidth=b.width,this.contentGroup.attr({translateY:e}));this.titleHeight=e},setText:function(b){var a=this.options;b.legendItem.attr({text:a.labelFormat?c.format(a.labelFormat,b,this.chart.time):a.labelFormatter.call(b)})},renderItem:function(b){var a=this.chart,
d=a.renderer,e=this.options,c=this.symbolWidth,g=e.symbolPadding,f=this.itemStyle,p=this.itemHiddenStyle,u="horizontal"===e.layout?B(e.itemDistance,20):0,k=!e.rtl,r=b.legendItem,x=!b.series,A=!x&&b.series.drawLegendSymbol?b.series:b,w=A.options;w=this.createCheckboxForItem&&w&&w.showCheckbox;u=c+g+u+(w?20:0);var m=e.useHTML,n=b.options.className;r||(b.legendGroup=d.g("legend-item").addClass("highcharts-"+A.type+"-series highcharts-color-"+b.colorIndex+(n?" "+n:"")+(x?" highcharts-series-"+b.index:
"")).attr({zIndex:1}).add(this.scrollGroup),b.legendItem=r=d.text("",k?c+g:-g,this.baseline||0,m),a.styledMode||r.css(h(b.visible?f:p)),r.attr({align:k?"left":"right",zIndex:2}).add(b.legendGroup),this.baseline||(this.fontMetrics=d.fontMetrics(a.styledMode?12:f.fontSize,r),this.baseline=this.fontMetrics.f+3+this.itemMarginTop,r.attr("y",this.baseline)),this.symbolHeight=e.symbolHeight||this.fontMetrics.f,A.drawLegendSymbol(this,b),this.setItemEvents&&this.setItemEvents(b,r,m));w&&!b.checkbox&&this.createCheckboxForItem(b);
this.colorizeItem(b,b.visible);!a.styledMode&&f.width||r.css({width:(e.itemWidth||this.widthOption||a.spacingBox.width)-u});this.setText(b);a=r.getBBox();b.itemWidth=b.checkboxOffset=e.itemWidth||b.legendItemWidth||a.width+u;this.maxItemWidth=Math.max(this.maxItemWidth,b.itemWidth);this.totalItemWidth+=b.itemWidth;this.itemHeight=b.itemHeight=Math.round(b.legendItemHeight||a.height||this.symbolHeight)},layoutItem:function(b){var a=this.options,d=this.padding,e="horizontal"===a.layout,c=b.itemHeight,
g=this.itemMarginBottom,h=this.itemMarginTop,f=e?B(a.itemDistance,20):0,u=this.maxLegendWidth;a=a.alignColumns&&this.totalItemWidth>u?this.maxItemWidth:b.itemWidth;e&&this.itemX-d+a>u&&(this.itemX=d,this.lastLineHeight&&(this.itemY+=h+this.lastLineHeight+g),this.lastLineHeight=0);this.lastItemY=h+this.itemY+g;this.lastLineHeight=Math.max(c,this.lastLineHeight);b._legendItemPos=[this.itemX,this.itemY];e?this.itemX+=a:(this.itemY+=h+c+g,this.lastLineHeight=c);this.offsetWidth=this.widthOption||Math.max((e?
this.itemX-d-(b.checkbox?0:f):a)+d,this.offsetWidth)},getAllItems:function(){var b=[];this.chart.series.forEach(function(a){var d=a&&a.options;a&&B(d.showInLegend,F(d.linkedTo)?!1:void 0,!0)&&(b=b.concat(a.legendItems||("point"===d.legendType?a.data:a)))});H(this,"afterGetAllItems",{allItems:b});return b},getAlignment:function(){var b=this.options;return this.proximate?b.align.charAt(0)+"tv":b.floating?"":b.align.charAt(0)+b.verticalAlign.charAt(0)+b.layout.charAt(0)},adjustMargins:function(b,a){var d=
this.chart,e=this.options,c=this.getAlignment();c&&[/(lth|ct|rth)/,/(rtv|rm|rbv)/,/(rbh|cb|lbh)/,/(lbv|lm|ltv)/].forEach(function(g,l){g.test(c)&&!F(b[l])&&(d[y[l]]=Math.max(d[y[l]],d.legend[(l+1)%2?"legendHeight":"legendWidth"]+[1,-1,-1,1][l]*e[l%2?"x":"y"]+B(e.margin,12)+a[l]+(d.titleOffset[l]||0)))})},proximatePositions:function(){var b=this.chart,a=[],d="left"===this.options.align;this.allItems.forEach(function(e){var g=d;if(e.yAxis&&e.points){e.xAxis.options.reversed&&(g=!g);var h=c.find(g?e.points:
e.points.slice(0).reverse(),function(a){return z(a.plotY)});g=this.itemMarginTop+e.legendItem.getBBox().height+this.itemMarginBottom;var f=e.yAxis.top-b.plotTop;e.visible?(h=h?h.plotY:e.yAxis.height,h+=f-.3*g):h=f+e.yAxis.height;a.push({target:h,size:g,item:e})}},this);c.distribute(a,b.plotHeight);a.forEach(function(a){a.item._legendItemPos[1]=b.plotTop-b.spacing[0]+a.pos})},render:function(){var b=this.chart,a=b.renderer,d=this.group,e,g=this.box,f=this.options,q=this.padding;this.itemX=q;this.itemY=
this.initialItemY;this.lastItemY=this.offsetWidth=0;this.widthOption=c.relativeLength(f.width,b.spacingBox.width-q);var p=b.spacingBox.width-2*q-f.x;-1<["rm","lm"].indexOf(this.getAlignment().substring(0,2))&&(p/=2);this.maxLegendWidth=this.widthOption||p;d||(this.group=d=a.g("legend").attr({zIndex:7}).add(),this.contentGroup=a.g().attr({zIndex:1}).add(d),this.scrollGroup=a.g().add(this.contentGroup));this.renderTitle();p=this.getAllItems();n(p,function(a,b){return(a.options&&a.options.legendIndex||
0)-(b.options&&b.options.legendIndex||0)});f.reversed&&p.reverse();this.allItems=p;this.display=e=!!p.length;this.itemHeight=this.totalItemWidth=this.maxItemWidth=this.lastLineHeight=0;p.forEach(this.renderItem,this);p.forEach(this.layoutItem,this);p=(this.widthOption||this.offsetWidth)+q;var u=this.lastItemY+this.lastLineHeight+this.titleHeight;u=this.handleOverflow(u);u+=q;g||(this.box=g=a.rect().addClass("highcharts-legend-box").attr({r:f.borderRadius}).add(d),g.isNew=!0);b.styledMode||g.attr({stroke:f.borderColor,
"stroke-width":f.borderWidth||0,fill:f.backgroundColor||"none"}).shadow(f.shadow);0<p&&0<u&&(g[g.isNew?"attr":"animate"](g.crisp.call({},{x:0,y:0,width:p,height:u},g.strokeWidth())),g.isNew=!1);g[e?"show":"hide"]();b.styledMode&&"none"===d.getStyle("display")&&(p=u=0);this.legendWidth=p;this.legendHeight=u;e&&(a=b.spacingBox,g=a.y,/(lth|ct|rth)/.test(this.getAlignment())&&0<b.titleOffset[0]?g+=b.titleOffset[0]:/(lbh|cb|rbh)/.test(this.getAlignment())&&0<b.titleOffset[2]&&(g-=b.titleOffset[2]),g!==
a.y&&(a=h(a,{y:g})),d.align(h(f,{width:p,height:u,verticalAlign:this.proximate?"top":f.verticalAlign}),!0,a));this.proximate||this.positionItems();H(this,"afterRender")},handleOverflow:function(b){var a=this,d=this.chart,e=d.renderer,c=this.options,g=c.y,h=this.padding;g=d.spacingBox.height+("top"===c.verticalAlign?-g:g)-h;var f=c.maxHeight,u,k=this.clipRect,r=c.navigation,x=B(r.animation,!0),A=r.arrowSize||12,w=this.nav,m=this.pages,n,J=this.allItems,q=function(b){"number"===typeof b?k.attr({height:b}):
k&&(a.clipRect=k.destroy(),a.contentGroup.clip());a.contentGroup.div&&(a.contentGroup.div.style.clip=b?"rect("+h+"px,9999px,"+(h+b)+"px,0)":"auto")},v=function(b){a[b]=e.circle(0,0,1.3*A).translate(A/2,A/2).add(w);d.styledMode||a[b].attr("fill","rgba(0,0,0,0.0001)");return a[b]};"horizontal"!==c.layout||"middle"===c.verticalAlign||c.floating||(g/=2);f&&(g=Math.min(g,f));m.length=0;b>g&&!1!==r.enabled?(this.clipHeight=u=Math.max(g-20-this.titleHeight-h,0),this.currentPage=B(this.currentPage,1),this.fullHeight=
b,J.forEach(function(a,b){var d=a._legendItemPos[1],e=Math.round(a.legendItem.getBBox().height),c=m.length;if(!c||d-m[c-1]>u&&(n||d)!==m[c-1])m.push(n||d),c++;a.pageIx=c-1;n&&(J[b-1].pageIx=c-1);b===J.length-1&&d+e-m[c-1]>u&&d!==n&&(m.push(d),a.pageIx=c);d!==n&&(n=d)}),k||(k=a.clipRect=e.clipRect(0,h,9999,0),a.contentGroup.clip(k)),q(u),w||(this.nav=w=e.g().attr({zIndex:1}).add(this.group),this.up=e.symbol("triangle",0,0,A,A).add(w),v("upTracker").on("click",function(){a.scroll(-1,x)}),this.pager=
e.text("",15,10).addClass("highcharts-legend-navigation"),d.styledMode||this.pager.css(r.style),this.pager.add(w),this.down=e.symbol("triangle-down",0,0,A,A).add(w),v("downTracker").on("click",function(){a.scroll(1,x)})),a.scroll(0),b=g):w&&(q(),this.nav=w.destroy(),this.scrollGroup.attr({translateY:1}),this.clipHeight=0);return b},scroll:function(b,a){var d=this.pages,e=d.length,c=this.currentPage+b;b=this.clipHeight;var g=this.options.navigation,h=this.pager,f=this.padding;c>e&&(c=e);0<c&&(void 0!==
a&&t(a,this.chart),this.nav.attr({translateX:f,translateY:b+this.padding+7+this.titleHeight,visibility:"visible"}),[this.up,this.upTracker].forEach(function(a){a.attr({"class":1===c?"highcharts-legend-nav-inactive":"highcharts-legend-nav-active"})}),h.attr({text:c+"/"+e}),[this.down,this.downTracker].forEach(function(a){a.attr({x:18+this.pager.getBBox().width,"class":c===e?"highcharts-legend-nav-inactive":"highcharts-legend-nav-active"})},this),this.chart.styledMode||(this.up.attr({fill:1===c?g.inactiveColor:
g.activeColor}),this.upTracker.css({cursor:1===c?"default":"pointer"}),this.down.attr({fill:c===e?g.inactiveColor:g.activeColor}),this.downTracker.css({cursor:c===e?"default":"pointer"})),this.scrollOffset=-d[c-1]+this.initialItemY,this.scrollGroup.animate({translateY:this.scrollOffset}),this.currentPage=c,this.positionCheckboxes())}};c.LegendSymbolMixin={drawRectangle:function(b,a){var d=b.symbolHeight,e=b.options.squareSymbol;a.legendSymbol=this.chart.renderer.rect(e?(b.symbolWidth-d)/2:0,b.baseline-
d+1,e?d:b.symbolWidth,d,B(b.options.symbolRadius,d/2)).addClass("highcharts-point").attr({zIndex:3}).add(a.legendGroup)},drawLineMarker:function(b){var a=this.options,d=a.marker,e=b.symbolWidth,c=b.symbolHeight,g=c/2,f=this.chart.renderer,p=this.legendGroup;b=b.baseline-Math.round(.3*b.fontMetrics.b);var u={};this.chart.styledMode||(u={"stroke-width":a.lineWidth||0},a.dashStyle&&(u.dashstyle=a.dashStyle));this.legendLine=f.path(["M",0,b,"L",e,b]).addClass("highcharts-graph").attr(u).add(p);d&&!1!==
d.enabled&&e&&(a=Math.min(B(d.radius,g),g),0===this.symbol.indexOf("url")&&(d=h(d,{width:c,height:c}),a=0),this.legendSymbol=d=f.symbol(this.symbol,e/2-a,b-a,2*a,2*a,d).addClass("highcharts-point").add(p),d.isMarker=!0)}};(/Trident\/7\.0/.test(q.navigator&&q.navigator.userAgent)||f)&&g(c.Legend.prototype,"positionItem",function(b,a){var d=this,e=function(){a._legendItemPos&&b.call(d,a)};e();d.bubbleLegend||setTimeout(e)})});M(I,"parts/Chart.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,
f){var F=f.attr,G=f.defined,z=f.discardElement,B=f.erase,t=f.extend,v=f.isArray,C=f.isNumber,H=f.isObject,y=f.isString,h=f.objectEach,n=f.pick,q=f.pInt,g=f.setAnimation,b=f.splat,a=f.syncTimeout,d=c.addEvent,e=c.animate,l=c.animObject,L=c.doc,E=c.Axis,p=c.createElement,u=c.defaultOptions,k=c.charts,r=c.css,x=c.find,A=c.fireEvent,w=c.Legend,m=c.marginNames,K=c.merge,J=c.Pointer,U=c.removeEvent,S=c.seriesTypes,Q=c.win,O=c.Chart=function(){this.getArgs.apply(this,arguments)};c.chart=function(a,b,d){return new O(a,
b,d)};t(O.prototype,{callbacks:[],getArgs:function(){var a=[].slice.call(arguments);if(y(a[0])||a[0].nodeName)this.renderTo=a.shift();this.init(a[0],a[1])},init:function(a,b){var e,g=a.series,m=a.plotOptions||{};A(this,"init",{args:arguments},function(){a.series=null;e=K(u,a);h(e.plotOptions,function(a,b){H(a)&&(a.tooltip=m[b]&&K(m[b].tooltip)||void 0)});e.tooltip.userOptions=a.chart&&a.chart.forExport&&a.tooltip.userOptions||a.tooltip;e.series=a.series=g;this.userOptions=a;var r=e.chart,l=r.events;
this.margin=[];this.spacing=[];this.bounds={h:{},v:{}};this.labelCollectors=[];this.callback=b;this.isResizing=0;this.options=e;this.axes=[];this.series=[];this.time=a.time&&Object.keys(a.time).length?new c.Time(a.time):c.time;this.styledMode=r.styledMode;this.hasCartesianSeries=r.showAxes;var f=this;f.index=k.length;k.push(f);c.chartCount++;l&&h(l,function(a,b){c.isFunction(a)&&d(f,b,a)});f.xAxis=[];f.yAxis=[];f.pointCount=f.colorCounter=f.symbolCounter=0;A(f,"afterInit");f.firstRender()})},initSeries:function(a){var b=
this.options.chart;b=a.type||b.type||b.defaultSeriesType;var d=S[b];d||c.error(17,!0,this,{missingModuleFor:b});b=new d;b.init(this,a);return b},orderSeries:function(a){var b=this.series;for(a=a||0;a<b.length;a++)b[a]&&(b[a].index=a,b[a].name=b[a].getName())},isInsidePlot:function(a,b,d){var e=d?b:a;a=d?a:b;return 0<=e&&e<=this.plotWidth&&0<=a&&a<=this.plotHeight},redraw:function(a){A(this,"beforeRedraw");var b=this.axes,d=this.series,e=this.pointer,c=this.legend,k=this.userOptions.legend,m=this.isDirtyLegend,
r=this.hasCartesianSeries,h=this.isDirtyBox,l=this.renderer,f=l.isHidden(),x=[];this.setResponsive&&this.setResponsive(!1);g(a,this);f&&this.temporaryDisplay();this.layOutTitles();for(a=d.length;a--;){var w=d[a];if(w.options.stacking){var p=!0;if(w.isDirty){var u=!0;break}}}if(u)for(a=d.length;a--;)w=d[a],w.options.stacking&&(w.isDirty=!0);d.forEach(function(a){a.isDirty&&("point"===a.options.legendType?(a.updateTotals&&a.updateTotals(),m=!0):k&&(k.labelFormatter||k.labelFormat)&&(m=!0));a.isDirtyData&&
A(a,"updatedData")});m&&c&&c.options.enabled&&(c.render(),this.isDirtyLegend=!1);p&&this.getStacks();r&&b.forEach(function(a){a.updateNames();a.setScale()});this.getMargins();r&&(b.forEach(function(a){a.isDirty&&(h=!0)}),b.forEach(function(a){var b=a.min+","+a.max;a.extKey!==b&&(a.extKey=b,x.push(function(){A(a,"afterSetExtremes",t(a.eventArgs,a.getExtremes()));delete a.eventArgs}));(h||p)&&a.redraw()}));h&&this.drawChartBox();A(this,"predraw");d.forEach(function(a){(h||a.isDirty)&&a.visible&&a.redraw();
a.isDirtyData=!1});e&&e.reset(!0);l.draw();A(this,"redraw");A(this,"render");f&&this.temporaryDisplay(!0);x.forEach(function(a){a.call()})},get:function(a){function b(b){return b.id===a||b.options&&b.options.id===a}var d=this.series,e;var c=x(this.axes,b)||x(this.series,b);for(e=0;!c&&e<d.length;e++)c=x(d[e].points||[],b);return c},getAxes:function(){var a=this,d=this.options,e=d.xAxis=b(d.xAxis||{});d=d.yAxis=b(d.yAxis||{});A(this,"getAxes");e.forEach(function(a,b){a.index=b;a.isX=!0});d.forEach(function(a,
b){a.index=b});e.concat(d).forEach(function(b){new E(a,b)});A(this,"afterGetAxes")},getSelectedPoints:function(){var a=[];this.series.forEach(function(b){a=a.concat((b[b.hasGroupedData?"points":"data"]||[]).filter(function(a){return n(a.selectedStaging,a.selected)}))});return a},getSelectedSeries:function(){return this.series.filter(function(a){return a.selected})},setTitle:function(a,b,d){this.applyDescription("title",a);this.applyDescription("subtitle",b);this.applyDescription("caption",void 0);
this.layOutTitles(d)},applyDescription:function(a,b){var d=this,e="title"===a?{color:"#333333",fontSize:this.options.isStock?"16px":"18px"}:{color:"#666666"};e=this.options[a]=K(!this.styledMode&&{style:e},this.options[a],b);var c=this[a];c&&b&&(this[a]=c=c.destroy());e&&!c&&(c=this.renderer.text(e.text,0,0,e.useHTML).attr({align:e.align,"class":"highcharts-"+a,zIndex:e.zIndex||4}).add(),c.update=function(b){d[{title:"setTitle",subtitle:"setSubtitle",caption:"setCaption"}[a]](b)},this.styledMode||
c.css(e.style),this[a]=c)},layOutTitles:function(a){var b=[0,0,0],d=this.renderer,e=this.spacingBox;["title","subtitle","caption"].forEach(function(a){var c=this[a],k=this.options[a],g=k.verticalAlign||"top";a="title"===a?-3:"top"===g?b[0]+2:0;if(c){if(!this.styledMode)var m=k.style.fontSize;m=d.fontMetrics(m,c).b;c.css({width:(k.width||e.width+(k.widthAdjust||0))+"px"});var r=Math.round(c.getBBox(k.useHTML).height);c.align(t({y:"bottom"===g?m:a+m,height:r},k),!1,"spacingBox");k.floating||("top"===
g?b[0]=Math.ceil(b[0]+r):"bottom"===g&&(b[2]=Math.ceil(b[2]+r)))}},this);b[0]&&"top"===(this.options.title.verticalAlign||"top")&&(b[0]+=this.options.title.margin);b[2]&&"bottom"===this.options.caption.verticalAlign&&(b[2]+=this.options.caption.margin);var c=!this.titleOffset||this.titleOffset.join(",")!==b.join(",");this.titleOffset=b;A(this,"afterLayOutTitles");!this.isDirtyBox&&c&&(this.isDirtyBox=this.isDirtyLegend=c,this.hasRendered&&n(a,!0)&&this.isDirtyBox&&this.redraw())},getChartSize:function(){var a=
this.options.chart,b=a.width;a=a.height;var d=this.renderTo;G(b)||(this.containerWidth=c.getStyle(d,"width"));G(a)||(this.containerHeight=c.getStyle(d,"height"));this.chartWidth=Math.max(0,b||this.containerWidth||600);this.chartHeight=Math.max(0,c.relativeLength(a,this.chartWidth)||(1<this.containerHeight?this.containerHeight:400))},temporaryDisplay:function(a){var b=this.renderTo;if(a)for(;b&&b.style;)b.hcOrigStyle&&(c.css(b,b.hcOrigStyle),delete b.hcOrigStyle),b.hcOrigDetached&&(L.body.removeChild(b),
b.hcOrigDetached=!1),b=b.parentNode;else for(;b&&b.style;){L.body.contains(b)||b.parentNode||(b.hcOrigDetached=!0,L.body.appendChild(b));if("none"===c.getStyle(b,"display",!1)||b.hcOricDetached)b.hcOrigStyle={display:b.style.display,height:b.style.height,overflow:b.style.overflow},a={display:"block",overflow:"hidden"},b!==this.renderTo&&(a.height=0),c.css(b,a),b.offsetWidth||b.style.setProperty("display","block","important");b=b.parentNode;if(b===L.body)break}},setClassName:function(a){this.container.className=
"highcharts-container "+(a||"")},getContainer:function(){var a=this.options,b=a.chart;var d=this.renderTo;var e=c.uniqueKey(),g,m;d||(this.renderTo=d=b.renderTo);y(d)&&(this.renderTo=d=L.getElementById(d));d||c.error(13,!0,this);var h=q(F(d,"data-highcharts-chart"));C(h)&&k[h]&&k[h].hasRendered&&k[h].destroy();F(d,"data-highcharts-chart",this.index);d.innerHTML="";b.skipClone||d.offsetWidth||this.temporaryDisplay();this.getChartSize();h=this.chartWidth;var l=this.chartHeight;r(d,{overflow:"hidden"});
this.styledMode||(g=t({position:"relative",overflow:"hidden",width:h+"px",height:l+"px",textAlign:"left",lineHeight:"normal",zIndex:0,"-webkit-tap-highlight-color":"rgba(0,0,0,0)"},b.style));this.container=d=p("div",{id:e},g,d);this._cursor=d.style.cursor;this.renderer=new (c[b.renderer]||c.Renderer)(d,h,l,null,b.forExport,a.exporting&&a.exporting.allowHTML,this.styledMode);this.setClassName(b.className);if(this.styledMode)for(m in a.defs)this.renderer.definition(a.defs[m]);else this.renderer.setStyle(b.style);
this.renderer.chartIndex=this.index;A(this,"afterGetContainer")},getMargins:function(a){var b=this.spacing,d=this.margin,e=this.titleOffset;this.resetMargins();e[0]&&!G(d[0])&&(this.plotTop=Math.max(this.plotTop,e[0]+b[0]));e[2]&&!G(d[2])&&(this.marginBottom=Math.max(this.marginBottom,e[2]+b[2]));this.legend&&this.legend.display&&this.legend.adjustMargins(d,b);A(this,"getMargins");a||this.getAxisMargins()},getAxisMargins:function(){var a=this,b=a.axisOffset=[0,0,0,0],d=a.colorAxis,e=a.margin,c=function(a){a.forEach(function(a){a.visible&&
a.getOffset()})};a.hasCartesianSeries?c(a.axes):d&&d.length&&c(d);m.forEach(function(d,c){G(e[c])||(a[d]+=b[c])});a.setChartSize()},reflow:function(b){var d=this,e=d.options.chart,k=d.renderTo,g=G(e.width)&&G(e.height),m=e.width||c.getStyle(k,"width");e=e.height||c.getStyle(k,"height");k=b?b.target:Q;if(!g&&!d.isPrinting&&m&&e&&(k===Q||k===L)){if(m!==d.containerWidth||e!==d.containerHeight)c.clearTimeout(d.reflowTimeout),d.reflowTimeout=a(function(){d.container&&d.setSize(void 0,void 0,!1)},b?100:
0);d.containerWidth=m;d.containerHeight=e}},setReflow:function(a){var b=this;!1===a||this.unbindReflow?!1===a&&this.unbindReflow&&(this.unbindReflow=this.unbindReflow()):(this.unbindReflow=d(Q,"resize",function(a){b.options&&b.reflow(a)}),d(this,"destroy",this.unbindReflow))},setSize:function(b,d,c){var k=this,m=k.renderer;k.isResizing+=1;g(c,k);k.oldChartHeight=k.chartHeight;k.oldChartWidth=k.chartWidth;void 0!==b&&(k.options.chart.width=b);void 0!==d&&(k.options.chart.height=d);k.getChartSize();
if(!k.styledMode){var h=m.globalAnimation;(h?e:r)(k.container,{width:k.chartWidth+"px",height:k.chartHeight+"px"},h)}k.setChartSize(!0);m.setSize(k.chartWidth,k.chartHeight,c);k.axes.forEach(function(a){a.isDirty=!0;a.setScale()});k.isDirtyLegend=!0;k.isDirtyBox=!0;k.layOutTitles();k.getMargins();k.redraw(c);k.oldChartHeight=null;A(k,"resize");a(function(){k&&A(k,"endResize",null,function(){--k.isResizing})},l(h).duration||0)},setChartSize:function(a){var b=this.inverted,d=this.renderer,e=this.chartWidth,
c=this.chartHeight,k=this.options.chart,g=this.spacing,m=this.clipOffset,r,h,l,f;this.plotLeft=r=Math.round(this.plotLeft);this.plotTop=h=Math.round(this.plotTop);this.plotWidth=l=Math.max(0,Math.round(e-r-this.marginRight));this.plotHeight=f=Math.max(0,Math.round(c-h-this.marginBottom));this.plotSizeX=b?f:l;this.plotSizeY=b?l:f;this.plotBorderWidth=k.plotBorderWidth||0;this.spacingBox=d.spacingBox={x:g[3],y:g[0],width:e-g[3]-g[1],height:c-g[0]-g[2]};this.plotBox=d.plotBox={x:r,y:h,width:l,height:f};
e=2*Math.floor(this.plotBorderWidth/2);b=Math.ceil(Math.max(e,m[3])/2);d=Math.ceil(Math.max(e,m[0])/2);this.clipBox={x:b,y:d,width:Math.floor(this.plotSizeX-Math.max(e,m[1])/2-b),height:Math.max(0,Math.floor(this.plotSizeY-Math.max(e,m[2])/2-d))};a||this.axes.forEach(function(a){a.setAxisSize();a.setAxisTranslation()});A(this,"afterSetChartSize",{skipAxes:a})},resetMargins:function(){A(this,"resetMargins");var a=this,b=a.options.chart;["margin","spacing"].forEach(function(d){var e=b[d],c=H(e)?e:[e,
e,e,e];["Top","Right","Bottom","Left"].forEach(function(e,k){a[d][k]=n(b[d+e],c[k])})});m.forEach(function(b,d){a[b]=n(a.margin[d],a.spacing[d])});a.axisOffset=[0,0,0,0];a.clipOffset=[0,0,0,0]},drawChartBox:function(){var a=this.options.chart,b=this.renderer,d=this.chartWidth,e=this.chartHeight,c=this.chartBackground,k=this.plotBackground,g=this.plotBorder,m=this.styledMode,r=this.plotBGImage,h=a.backgroundColor,l=a.plotBackgroundColor,f=a.plotBackgroundImage,x,w=this.plotLeft,p=this.plotTop,u=this.plotWidth,
n=this.plotHeight,J=this.plotBox,K=this.clipRect,q=this.clipBox,v="animate";c||(this.chartBackground=c=b.rect().addClass("highcharts-background").add(),v="attr");if(m)var y=x=c.strokeWidth();else{y=a.borderWidth||0;x=y+(a.shadow?8:0);h={fill:h||"none"};if(y||c["stroke-width"])h.stroke=a.borderColor,h["stroke-width"]=y;c.attr(h).shadow(a.shadow)}c[v]({x:x/2,y:x/2,width:d-x-y%2,height:e-x-y%2,r:a.borderRadius});v="animate";k||(v="attr",this.plotBackground=k=b.rect().addClass("highcharts-plot-background").add());
k[v](J);m||(k.attr({fill:l||"none"}).shadow(a.plotShadow),f&&(r?r.animate(J):this.plotBGImage=b.image(f,w,p,u,n).add()));K?K.animate({width:q.width,height:q.height}):this.clipRect=b.clipRect(q);v="animate";g||(v="attr",this.plotBorder=g=b.rect().addClass("highcharts-plot-border").attr({zIndex:1}).add());m||g.attr({stroke:a.plotBorderColor,"stroke-width":a.plotBorderWidth||0,fill:"none"});g[v](g.crisp({x:w,y:p,width:u,height:n},-g.strokeWidth()));this.isDirtyBox=!1;A(this,"afterDrawChartBox")},propFromSeries:function(){var a=
this,b=a.options.chart,d,e=a.options.series,c,k;["inverted","angular","polar"].forEach(function(g){d=S[b.type||b.defaultSeriesType];k=b[g]||d&&d.prototype[g];for(c=e&&e.length;!k&&c--;)(d=S[e[c].type])&&d.prototype[g]&&(k=!0);a[g]=k})},linkSeries:function(){var a=this,b=a.series;b.forEach(function(a){a.linkedSeries.length=0});b.forEach(function(b){var d=b.options.linkedTo;y(d)&&(d=":previous"===d?a.series[b.index-1]:a.get(d))&&d.linkedParent!==b&&(d.linkedSeries.push(b),b.linkedParent=d,b.visible=
n(b.options.visible,d.options.visible,b.visible))});A(this,"afterLinkSeries")},renderSeries:function(){this.series.forEach(function(a){a.translate();a.render()})},renderLabels:function(){var a=this,b=a.options.labels;b.items&&b.items.forEach(function(d){var e=t(b.style,d.style),c=q(e.left)+a.plotLeft,k=q(e.top)+a.plotTop+12;delete e.left;delete e.top;a.renderer.text(d.html,c,k).attr({zIndex:2}).css(e).add()})},render:function(){var a=this.axes,b=this.colorAxis,d=this.renderer,e=this.options,c=0,k=
function(a){a.forEach(function(a){a.visible&&a.render()})};this.setTitle();this.legend=new w(this,e.legend);this.getStacks&&this.getStacks();this.getMargins(!0);this.setChartSize();e=this.plotWidth;a.some(function(a){if(a.horiz&&a.visible&&a.options.labels.enabled&&a.series.length)return c=21,!0});var g=this.plotHeight=Math.max(this.plotHeight-c,0);a.forEach(function(a){a.setScale()});this.getAxisMargins();var m=1.1<e/this.plotWidth;var r=1.05<g/this.plotHeight;if(m||r)a.forEach(function(a){(a.horiz&&
m||!a.horiz&&r)&&a.setTickInterval(!0)}),this.getMargins();this.drawChartBox();this.hasCartesianSeries?k(a):b&&b.length&&k(b);this.seriesGroup||(this.seriesGroup=d.g("series-group").attr({zIndex:3}).add());this.renderSeries();this.renderLabels();this.addCredits();this.setResponsive&&this.setResponsive();this.updateContainerScaling();this.hasRendered=!0},addCredits:function(a){var b=this;a=K(!0,this.options.credits,a);a.enabled&&!this.credits&&(this.credits=this.renderer.text(a.text+(this.mapCredits||
""),0,0).addClass("highcharts-credits").on("click",function(){a.href&&(Q.location.href=a.href)}).attr({align:a.position.align,zIndex:8}),b.styledMode||this.credits.css(a.style),this.credits.add().align(a.position),this.credits.update=function(a){b.credits=b.credits.destroy();b.addCredits(a)})},updateContainerScaling:function(){var a=this.container;if(a.offsetWidth&&a.offsetHeight&&a.getBoundingClientRect){var b=a.getBoundingClientRect(),d=b.width/a.offsetWidth;a=b.height/a.offsetHeight;1!==d||1!==
a?this.containerScaling={scaleX:d,scaleY:a}:delete this.containerScaling}},destroy:function(){var a=this,b=a.axes,d=a.series,e=a.container,g,m=e&&e.parentNode;A(a,"destroy");a.renderer.forExport?B(k,a):k[a.index]=void 0;c.chartCount--;a.renderTo.removeAttribute("data-highcharts-chart");U(a);for(g=b.length;g--;)b[g]=b[g].destroy();this.scroller&&this.scroller.destroy&&this.scroller.destroy();for(g=d.length;g--;)d[g]=d[g].destroy();"title subtitle chartBackground plotBackground plotBGImage plotBorder seriesGroup clipRect credits pointer rangeSelector legend resetZoomButton tooltip renderer".split(" ").forEach(function(b){var d=
a[b];d&&d.destroy&&(a[b]=d.destroy())});e&&(e.innerHTML="",U(e),m&&z(e));h(a,function(b,d){delete a[d]})},firstRender:function(){var a=this,b=a.options;if(!a.isReadyToRender||a.isReadyToRender()){a.getContainer();a.resetMargins();a.setChartSize();a.propFromSeries();a.getAxes();(v(b.series)?b.series:[]).forEach(function(b){a.initSeries(b)});a.linkSeries();A(a,"beforeRender");J&&(a.pointer=new J(a,b));a.render();if(!a.renderer.imgCount&&a.onload)a.onload();a.temporaryDisplay(!0)}},onload:function(){this.callbacks.concat([this.callback]).forEach(function(a){a&&
void 0!==this.index&&a.apply(this,[this])},this);A(this,"load");A(this,"render");G(this.index)&&this.setReflow(this.options.chart.reflow);this.onload=null}})});M(I,"parts/ScrollablePlotArea.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.pick,G=c.addEvent;f=c.Chart;"";G(f,"afterSetChartSize",function(f){var z=this.options.chart.scrollablePlotArea,t=z&&z.minWidth;z=z&&z.minHeight;if(!this.renderer.forExport){if(t){if(this.scrollablePixelsX=t=Math.max(0,t-this.chartWidth)){this.plotWidth+=
t;this.inverted?(this.clipBox.height+=t,this.plotBox.height+=t):(this.clipBox.width+=t,this.plotBox.width+=t);var v={1:{name:"right",value:t}}}}else z&&(this.scrollablePixelsY=t=Math.max(0,z-this.chartHeight))&&(this.plotHeight+=t,this.inverted?(this.clipBox.width+=t,this.plotBox.width+=t):(this.clipBox.height+=t,this.plotBox.height+=t),v={2:{name:"bottom",value:t}});v&&!f.skipAxes&&this.axes.forEach(function(f){v[f.side]?f.getPlotLinePath=function(){var t=v[f.side].name,y=this[t];this[t]=y-v[f.side].value;
var h=c.Axis.prototype.getPlotLinePath.apply(this,arguments);this[t]=y;return h}:(f.setAxisSize(),f.setAxisTranslation())})}});G(f,"render",function(){this.scrollablePixelsX||this.scrollablePixelsY?(this.setUpScrolling&&this.setUpScrolling(),this.applyFixed()):this.fixedDiv&&this.applyFixed()});f.prototype.setUpScrolling=function(){var f={WebkitOverflowScrolling:"touch",overflowX:"hidden",overflowY:"hidden"};this.scrollablePixelsX&&(f.overflowX="auto");this.scrollablePixelsY&&(f.overflowY="auto");
this.scrollingContainer=c.createElement("div",{className:"highcharts-scrolling"},f,this.renderTo);this.innerContainer=c.createElement("div",{className:"highcharts-inner-container"},null,this.scrollingContainer);this.innerContainer.appendChild(this.container);this.setUpScrolling=null};f.prototype.moveFixedElements=function(){var c=this.container,f=this.fixedRenderer,t=".highcharts-contextbutton .highcharts-credits .highcharts-legend .highcharts-legend-checkbox .highcharts-navigator-series .highcharts-navigator-xaxis .highcharts-navigator-yaxis .highcharts-navigator .highcharts-reset-zoom .highcharts-scrollbar .highcharts-subtitle .highcharts-title".split(" "),
v;this.scrollablePixelsX&&!this.inverted?v=".highcharts-yaxis":this.scrollablePixelsX&&this.inverted?v=".highcharts-xaxis":this.scrollablePixelsY&&!this.inverted?v=".highcharts-xaxis":this.scrollablePixelsY&&this.inverted&&(v=".highcharts-yaxis");t.push(v,v+"-labels");t.forEach(function(v){[].forEach.call(c.querySelectorAll(v),function(c){(c.namespaceURI===f.SVG_NS?f.box:f.box.parentNode).appendChild(c);c.style.pointerEvents="auto"})})};f.prototype.applyFixed=function(){var f,B=!this.fixedDiv,t=this.options.chart.scrollablePlotArea;
B?(this.fixedDiv=c.createElement("div",{className:"highcharts-fixed"},{position:"absolute",overflow:"hidden",pointerEvents:"none",zIndex:2},null,!0),this.renderTo.insertBefore(this.fixedDiv,this.renderTo.firstChild),this.renderTo.style.overflow="visible",this.fixedRenderer=f=new c.Renderer(this.fixedDiv,this.chartWidth,this.chartHeight),this.scrollableMask=f.path().attr({fill:c.color(this.options.chart.backgroundColor||"#fff").setOpacity(F(t.opacity,.85)).get(),zIndex:-1}).addClass("highcharts-scrollable-mask").add(),
this.moveFixedElements(),G(this,"afterShowResetZoom",this.moveFixedElements),G(this,"afterLayOutTitles",this.moveFixedElements)):this.fixedRenderer.setSize(this.chartWidth,this.chartHeight);f=this.chartWidth+(this.scrollablePixelsX||0);var v=this.chartHeight+(this.scrollablePixelsY||0);c.stop(this.container);this.container.style.width=f+"px";this.container.style.height=v+"px";this.renderer.boxWrapper.attr({width:f,height:v,viewBox:[0,0,f,v].join(" ")});this.chartBackground.attr({width:f,height:v});
this.scrollablePixelsY&&(this.scrollingContainer.style.height=this.chartHeight+"px");B&&(t.scrollPositionX&&(this.scrollingContainer.scrollLeft=this.scrollablePixelsX*t.scrollPositionX),t.scrollPositionY&&(this.scrollingContainer.scrollTop=this.scrollablePixelsY*t.scrollPositionY));v=this.axisOffset;B=this.plotTop-v[0]-1;t=this.plotLeft-v[3]-1;f=this.plotTop+this.plotHeight+v[2]+1;v=this.plotLeft+this.plotWidth+v[1]+1;var C=this.plotLeft+this.plotWidth-(this.scrollablePixelsX||0),H=this.plotTop+this.plotHeight-
(this.scrollablePixelsY||0);B=this.scrollablePixelsX?["M",0,B,"L",this.plotLeft-1,B,"L",this.plotLeft-1,f,"L",0,f,"Z","M",C,B,"L",this.chartWidth,B,"L",this.chartWidth,f,"L",C,f,"Z"]:this.scrollablePixelsY?["M",t,0,"L",t,this.plotTop-1,"L",v,this.plotTop-1,"L",v,0,"Z","M",t,H,"L",t,this.chartHeight,"L",v,this.chartHeight,"L",v,H,"Z"]:["M",0,0];"adjustHeight"!==this.redrawTrigger&&this.scrollableMask.attr({d:B})}});M(I,"parts/Point.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=
f.defined,G=f.erase,z=f.extend,B=f.isArray,t=f.isNumber,v=f.isObject,C=f.pick,H,y=c.fireEvent,h=c.format,n=c.uniqueKey,q=c.removeEvent;c.Point=H=function(){};c.Point.prototype={init:function(c,b,a){this.series=c;this.applyOptions(b,a);this.id=F(this.id)?this.id:n();this.resolveColor();c.chart.pointCount++;y(this,"afterInit");return this},resolveColor:function(){var c=this.series;var b=c.chart.options.chart.colorCount;var a=c.chart.styledMode;a||this.options.color||(this.color=c.color);c.options.colorByPoint?
(a||(b=c.options.colors||c.chart.options.colors,this.color=this.color||b[c.colorCounter],b=b.length),a=c.colorCounter,c.colorCounter++,c.colorCounter===b&&(c.colorCounter=0)):a=c.colorIndex;this.colorIndex=C(this.colorIndex,a)},applyOptions:function(c,b){var a=this.series,d=a.options.pointValKey||a.pointValKey;c=H.prototype.optionsToObject.call(this,c);z(this,c);this.options=this.options?z(this.options,c):c;c.group&&delete this.group;c.dataLabels&&delete this.dataLabels;d&&(this.y=this[d]);this.formatPrefix=
(this.isNull=C(this.isValid&&!this.isValid(),null===this.x||!t(this.y)))?"null":"point";this.selected&&(this.state="select");"name"in this&&void 0===b&&a.xAxis&&a.xAxis.hasNames&&(this.x=a.xAxis.nameToX(this));void 0===this.x&&a&&(this.x=void 0===b?a.autoIncrement(this):b);return this},setNestedProperty:function(c,b,a){a.split(".").reduce(function(a,e,c,g){a[e]=g.length-1===c?b:v(a[e],!0)?a[e]:{};return a[e]},c);return c},optionsToObject:function(g){var b={},a=this.series,d=a.options.keys,e=d||a.pointArrayMap||
["y"],h=e.length,f=0,n=0;if(t(g)||null===g)b[e[0]]=g;else if(B(g))for(!d&&g.length>h&&(a=typeof g[0],"string"===a?b.name=g[0]:"number"===a&&(b.x=g[0]),f++);n<h;)d&&void 0===g[f]||(0<e[n].indexOf(".")?c.Point.prototype.setNestedProperty(b,g[f],e[n]):b[e[n]]=g[f]),f++,n++;else"object"===typeof g&&(b=g,g.dataLabels&&(a._hasPointLabels=!0),g.marker&&(a._hasPointMarkers=!0));return b},getClassName:function(){return"highcharts-point"+(this.selected?" highcharts-point-select":"")+(this.negative?" highcharts-negative":
"")+(this.isNull?" highcharts-null-point":"")+(void 0!==this.colorIndex?" highcharts-color-"+this.colorIndex:"")+(this.options.className?" "+this.options.className:"")+(this.zone&&this.zone.className?" "+this.zone.className.replace("highcharts-negative",""):"")},getZone:function(){var c=this.series,b=c.zones;c=c.zoneAxis||"y";var a=0,d;for(d=b[a];this[c]>=d.value;)d=b[++a];this.nonZonedColor||(this.nonZonedColor=this.color);this.color=d&&d.color&&!this.options.color?d.color:this.nonZonedColor;return d},
hasNewShapeType:function(){return this.graphic&&this.graphic.element.nodeName!==this.shapeType},destroy:function(){var c=this.series.chart,b=c.hoverPoints,a;c.pointCount--;b&&(this.setState(),G(b,this),b.length||(c.hoverPoints=null));if(this===c.hoverPoint)this.onMouseOut();if(this.graphic||this.dataLabel||this.dataLabels)q(this),this.destroyElements();this.legendItem&&c.legend.destroyItem(this);for(a in this)this[a]=null},destroyElements:function(c){var b=this,a=[],d;c=c||{graphic:1,dataLabel:1};
c.graphic&&a.push("graphic","shadowGroup");c.dataLabel&&a.push("dataLabel","dataLabelUpper","connector");for(d=a.length;d--;){var e=a[d];b[e]&&(b[e]=b[e].destroy())}["dataLabel","connector"].forEach(function(a){var d=a+"s";c[a]&&b[d]&&(b[d].forEach(function(a){a.element&&a.destroy()}),delete b[d])})},getLabelConfig:function(){return{x:this.category,y:this.y,color:this.color,colorIndex:this.colorIndex,key:this.name||this.category,series:this.series,point:this,percentage:this.percentage,total:this.total||
this.stackTotal}},tooltipFormatter:function(c){var b=this.series,a=b.tooltipOptions,d=C(a.valueDecimals,""),e=a.valuePrefix||"",g=a.valueSuffix||"";b.chart.styledMode&&(c=b.chart.tooltip.styledModeFormat(c));(b.pointArrayMap||["y"]).forEach(function(a){a="{point."+a;if(e||g)c=c.replace(RegExp(a+"}","g"),e+a+"}"+g);c=c.replace(RegExp(a+"}","g"),a+":,."+d+"f}")});return h(c,{point:this,series:this.series},b.chart.time)},firePointEvent:function(c,b,a){var d=this,e=this.series.options;(e.point.events[c]||
d.options&&d.options.events&&d.options.events[c])&&this.importEvents();"click"===c&&e.allowPointSelect&&(a=function(a){d.select&&d.select(null,a.ctrlKey||a.metaKey||a.shiftKey)});y(this,c,b,a)},visible:!0}});M(I,"parts/Series.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.arrayMax,G=f.arrayMin,z=f.defined,B=f.erase,t=f.extend,v=f.isArray,C=f.isNumber,H=f.isString,y=f.objectEach,h=f.pick,n=f.splat,q=f.syncTimeout,g=c.addEvent,b=c.animObject,a=c.correctFloat,d=c.defaultOptions,
e=c.defaultPlotOptions,l=c.fireEvent,L=c.merge,E=c.removeEvent,p=c.SVGElement,u=c.win;c.Series=c.seriesType("line",null,{lineWidth:2,allowPointSelect:!1,showCheckbox:!1,animation:{duration:1E3},events:{},marker:{lineWidth:0,lineColor:"#ffffff",enabledThreshold:2,radius:4,states:{normal:{animation:!0},hover:{animation:{duration:50},enabled:!0,radiusPlus:2,lineWidthPlus:1},select:{fillColor:"#cccccc",lineColor:"#000000",lineWidth:2}}},point:{events:{}},dataLabels:{align:"center",formatter:function(){return null===
this.y?"":c.numberFormat(this.y,-1)},padding:5,style:{fontSize:"11px",fontWeight:"bold",color:"contrast",textOutline:"1px contrast"},verticalAlign:"bottom",x:0,y:0},cropThreshold:300,opacity:1,pointRange:0,softThreshold:!0,states:{normal:{animation:!0},hover:{animation:{duration:50},lineWidthPlus:1,marker:{},halo:{size:10,opacity:.25}},select:{animation:{duration:0}},inactive:{animation:{duration:50},opacity:.2}},stickyTracking:!0,turboThreshold:1E3,findNearestPointBy:"x"},{axisTypes:["xAxis","yAxis"],
coll:"series",colorCounter:0,cropShoulder:1,directTouch:!1,isCartesian:!0,parallelArrays:["x","y"],pointClass:c.Point,requireSorting:!0,sorted:!0,init:function(a,b){l(this,"init",{options:b});var d=this,e=a.series,k;this.eventOptions=this.eventOptions||{};d.chart=a;d.options=b=d.setOptions(b);d.linkedSeries=[];d.bindAxes();t(d,{name:b.name,state:"",visible:!1!==b.visible,selected:!0===b.selected});var m=b.events;y(m,function(a,b){c.isFunction(a)&&d.eventOptions[b]!==a&&(c.isFunction(d.eventOptions[b])&&
E(d,b,d.eventOptions[b]),d.eventOptions[b]=a,g(d,b,a))});if(m&&m.click||b.point&&b.point.events&&b.point.events.click||b.allowPointSelect)a.runTrackerClick=!0;d.getColor();d.getSymbol();d.parallelArrays.forEach(function(a){d[a+"Data"]||(d[a+"Data"]=[])});d.points||d.data||d.setData(b.data,!1);d.isCartesian&&(a.hasCartesianSeries=!0);e.length&&(k=e[e.length-1]);d._i=h(k&&k._i,-1)+1;a.orderSeries(this.insert(e));l(this,"afterInit")},insert:function(a){var b=this.options.index,d;if(C(b)){for(d=a.length;d--;)if(b>=
h(a[d].options.index,a[d]._i)){a.splice(d+1,0,this);break}-1===d&&a.unshift(this);d+=1}else a.push(this);return h(d,a.length-1)},bindAxes:function(){var a=this,b=a.options,d=a.chart,e;l(this,"bindAxes",null,function(){(a.axisTypes||[]).forEach(function(k){d[k].forEach(function(d){e=d.options;if(b[k]===e.index||void 0!==b[k]&&b[k]===e.id||void 0===b[k]&&0===e.index)a.insert(d.series),a[k]=d,d.isDirty=!0});a[k]||a.optionalAxis===k||c.error(18,!0,d)})})},updateParallelArrays:function(a,b){var d=a.series,
c=arguments,e=C(b)?function(c){var e="y"===c&&d.toYData?d.toYData(a):a[c];d[c+"Data"][b]=e}:function(a){Array.prototype[b].apply(d[a+"Data"],Array.prototype.slice.call(c,2))};d.parallelArrays.forEach(e)},hasData:function(){return this.visible&&void 0!==this.dataMax&&void 0!==this.dataMin||this.visible&&this.yData&&0<this.yData.length},autoIncrement:function(){var a=this.options,b=this.xIncrement,d,c=a.pointIntervalUnit,e=this.chart.time;b=h(b,a.pointStart,0);this.pointInterval=d=h(this.pointInterval,
a.pointInterval,1);c&&(a=new e.Date(b),"day"===c?e.set("Date",a,e.get("Date",a)+d):"month"===c?e.set("Month",a,e.get("Month",a)+d):"year"===c&&e.set("FullYear",a,e.get("FullYear",a)+d),d=a.getTime()-b);this.xIncrement=b+d;return b},setOptions:function(a){var b=this.chart,c=b.options,e=c.plotOptions,k=b.userOptions||{};a=L(a);b=b.styledMode;var g={plotOptions:e,userOptions:a};l(this,"setOptions",g);var f=g.plotOptions[this.type],p=k.plotOptions||{};this.userOptions=g.userOptions;k=L(f,e.series,k.plotOptions&&
k.plotOptions[this.type],a);this.tooltipOptions=L(d.tooltip,d.plotOptions.series&&d.plotOptions.series.tooltip,d.plotOptions[this.type].tooltip,c.tooltip.userOptions,e.series&&e.series.tooltip,e[this.type].tooltip,a.tooltip);this.stickyTracking=h(a.stickyTracking,p[this.type]&&p[this.type].stickyTracking,p.series&&p.series.stickyTracking,this.tooltipOptions.shared&&!this.noSharedTooltip?!0:k.stickyTracking);null===f.marker&&delete k.marker;this.zoneAxis=k.zoneAxis;c=this.zones=(k.zones||[]).slice();
!k.negativeColor&&!k.negativeFillColor||k.zones||(e={value:k[this.zoneAxis+"Threshold"]||k.threshold||0,className:"highcharts-negative"},b||(e.color=k.negativeColor,e.fillColor=k.negativeFillColor),c.push(e));c.length&&z(c[c.length-1].value)&&c.push(b?{}:{color:this.color,fillColor:this.fillColor});l(this,"afterSetOptions",{options:k});return k},getName:function(){return h(this.options.name,"Series "+(this.index+1))},getCyclic:function(a,b,d){var c=this.chart,e=this.userOptions,k=a+"Index",g=a+"Counter",
f=d?d.length:h(c.options.chart[a+"Count"],c[a+"Count"]);if(!b){var r=h(e[k],e["_"+k]);z(r)||(c.series.length||(c[g]=0),e["_"+k]=r=c[g]%f,c[g]+=1);d&&(b=d[r])}void 0!==r&&(this[k]=r);this[a]=b},getColor:function(){this.chart.styledMode?this.getCyclic("color"):this.options.colorByPoint?this.options.color=null:this.getCyclic("color",this.options.color||e[this.type].color,this.chart.options.colors)},getSymbol:function(){this.getCyclic("symbol",this.options.marker.symbol,this.chart.options.symbols)},findPointIndex:function(a,
b){var d=a.id;a=a.x;var c=this.points,e;if(d){var k=(d=this.chart.get(d))&&d.index;void 0!==k&&(e=!0)}void 0===k&&C(a)&&(k=this.xData.indexOf(a,b));-1!==k&&void 0!==k&&this.cropped&&(k=k>=this.cropStart?k-this.cropStart:k);!e&&c[k]&&c[k].touched&&(k=void 0);return k},drawLegendSymbol:c.LegendSymbolMixin.drawLineMarker,updateData:function(a){var b=this.options,d=this.points,c=[],e,k,g,h=this.requireSorting,f=a.length===d.length,l=!0;this.xIncrement=null;a.forEach(function(a,k){var m=z(a)&&this.pointClass.prototype.optionsToObject.call({series:this},
a)||{};var r=m.x;if(m.id||C(r))if(r=this.findPointIndex(m,g),-1===r||void 0===r?c.push(a):d[r]&&a!==b.data[r]?(d[r].update(a,!1,null,!1),d[r].touched=!0,h&&(g=r+1)):d[r]&&(d[r].touched=!0),!f||k!==r||this.hasDerivedData)e=!0},this);if(e)for(a=d.length;a--;)(k=d[a])&&!k.touched&&k.remove(!1);else f?a.forEach(function(a,b){d[b].update&&a!==d[b].y&&d[b].update(a,!1,null,!1)}):l=!1;d.forEach(function(a){a&&(a.touched=!1)});if(!l)return!1;c.forEach(function(a){this.addPoint(a,!1,null,null,!1)},this);return!0},
setData:function(a,b,d,e){var k=this,g=k.points,f=g&&g.length||0,r,l=k.options,p=k.chart,x=null,A=k.xAxis;x=l.turboThreshold;var u=this.xData,n=this.yData,q=(r=k.pointArrayMap)&&r.length,y=l.keys,t=0,E=1,L;a=a||[];r=a.length;b=h(b,!0);!1!==e&&r&&f&&!k.cropped&&!k.hasGroupedData&&k.visible&&!k.isSeriesBoosting&&(L=this.updateData(a));if(!L){k.xIncrement=null;k.colorCounter=0;this.parallelArrays.forEach(function(a){k[a+"Data"].length=0});if(x&&r>x)if(x=k.getFirstValidPoint(a),C(x))for(d=0;d<r;d++)u[d]=
this.autoIncrement(),n[d]=a[d];else if(v(x))if(q)for(d=0;d<r;d++)e=a[d],u[d]=e[0],n[d]=e.slice(1,q+1);else for(y&&(t=y.indexOf("x"),E=y.indexOf("y"),t=0<=t?t:0,E=0<=E?E:1),d=0;d<r;d++)e=a[d],u[d]=e[t],n[d]=e[E];else c.error(12,!1,p);else for(d=0;d<r;d++)void 0!==a[d]&&(e={series:k},k.pointClass.prototype.applyOptions.apply(e,[a[d]]),k.updateParallelArrays(e,d));n&&H(n[0])&&c.error(14,!0,p);k.data=[];k.options.data=k.userOptions.data=a;for(d=f;d--;)g[d]&&g[d].destroy&&g[d].destroy();A&&(A.minRange=
A.userMinRange);k.isDirty=p.isDirtyBox=!0;k.isDirtyData=!!g;d=!1}"point"===l.legendType&&(this.processData(),this.generatePoints());b&&p.redraw(d)},processData:function(a){var b=this.xData,d=this.yData,e=b.length;var k=0;var g=this.xAxis,h=this.options;var f=h.cropThreshold;var l=this.getExtremesFromAll||h.getExtremesFromAll,p=this.isCartesian;h=g&&g.val2lin;var u=g&&g.isLog,n=this.requireSorting;if(p&&!this.isDirty&&!g.isDirty&&!this.yAxis.isDirty&&!a)return!1;if(g){a=g.getExtremes();var q=a.min;
var v=a.max}if(p&&this.sorted&&!l&&(!f||e>f||this.forceCrop))if(b[e-1]<q||b[0]>v)b=[],d=[];else if(this.yData&&(b[0]<q||b[e-1]>v)){k=this.cropData(this.xData,this.yData,q,v);b=k.xData;d=k.yData;k=k.start;var y=!0}for(f=b.length||1;--f;)if(e=u?h(b[f])-h(b[f-1]):b[f]-b[f-1],0<e&&(void 0===t||e<t))var t=e;else 0>e&&n&&(c.error(15,!1,this.chart),n=!1);this.cropped=y;this.cropStart=k;this.processedXData=b;this.processedYData=d;this.closestPointRange=this.basePointRange=t},cropData:function(a,b,d,e,c){var k=
a.length,g=0,f=k,r;c=h(c,this.cropShoulder);for(r=0;r<k;r++)if(a[r]>=d){g=Math.max(0,r-c);break}for(d=r;d<k;d++)if(a[d]>e){f=d+c;break}return{xData:a.slice(g,f),yData:b.slice(g,f),start:g,end:f}},generatePoints:function(){var a=this.options,b=a.data,d=this.data,e,c=this.processedXData,g=this.processedYData,f=this.pointClass,h=c.length,p=this.cropStart||0,u=this.hasGroupedData;a=a.keys;var q=[],v;d||u||(d=[],d.length=b.length,d=this.data=d);a&&u&&(this.options.keys=!1);for(v=0;v<h;v++){var y=p+v;if(u){var E=
(new f).init(this,[c[v]].concat(n(g[v])));E.dataGroup=this.groupMap[v];E.dataGroup.options&&(E.options=E.dataGroup.options,t(E,E.dataGroup.options),delete E.dataLabels)}else(E=d[y])||void 0===b[y]||(d[y]=E=(new f).init(this,b[y],c[v]));E&&(E.index=y,q[v]=E)}this.options.keys=a;if(d&&(h!==(e=d.length)||u))for(v=0;v<e;v++)v!==p||u||(v+=h),d[v]&&(d[v].destroyElements(),d[v].plotX=void 0);this.data=d;this.points=q;l(this,"afterGeneratePoints")},getXExtremes:function(a){return{min:G(a),max:F(a)}},getExtremes:function(a){var b=
this.xAxis,d=this.yAxis,e=this.processedXData||this.xData,c=[],k=0,g=0;var f=0;var h=this.requireSorting?this.cropShoulder:0,p=d?d.positiveValuesOnly:!1,u;a=a||this.stackedYData||this.processedYData||[];d=a.length;b&&(f=b.getExtremes(),g=f.min,f=f.max);for(u=0;u<d;u++){var n=e[u];var q=a[u];var y=(C(q)||v(q))&&(q.length||0<q||!p);n=this.getExtremesFromAll||this.options.getExtremesFromAll||this.cropped||!b||(e[u+h]||n)>=g&&(e[u-h]||n)<=f;if(y&&n)if(y=q.length)for(;y--;)C(q[y])&&(c[k++]=q[y]);else c[k++]=
q}this.dataMin=G(c);this.dataMax=F(c);l(this,"afterGetExtremes")},getFirstValidPoint:function(a){for(var b=null,d=a.length,e=0;null===b&&e<d;)b=a[e],e++;return b},translate:function(){this.processedXData||this.processData();this.generatePoints();var b=this.options,d=b.stacking,e=this.xAxis,c=e.categories,g=this.yAxis,m=this.points,f=m.length,p=!!this.modifyValue,u,n=this.pointPlacementToXValue(),q=C(n),y=b.threshold,t=b.startFromThreshold?y:0,E,L=this.zoneAxis||"y",B=Number.MAX_VALUE;for(u=0;u<f;u++){var H=
m[u],G=H.x;var F=H.y;var I=H.low,M=d&&g.stacks[(this.negStacks&&F<(t?0:y)?"-":"")+this.stackKey];g.positiveValuesOnly&&null!==F&&0>=F&&(H.isNull=!0);H.plotX=E=a(Math.min(Math.max(-1E5,e.translate(G,0,0,0,1,n,"flags"===this.type)),1E5));if(d&&this.visible&&M&&M[G]){var X=this.getStackIndicator(X,G,this.index);if(!H.isNull){var P=M[G];var Y=P.points[X.key]}}v(Y)&&(I=Y[0],F=Y[1],I===t&&X.key===M[G].base&&(I=h(C(y)&&y,g.min)),g.positiveValuesOnly&&0>=I&&(I=null),H.total=H.stackTotal=P.total,H.percentage=
P.total&&H.y/P.total*100,H.stackY=F,this.irregularWidths||P.setOffset(this.pointXOffset||0,this.barW||0));H.yBottom=z(I)?Math.min(Math.max(-1E5,g.translate(I,0,1,0,1)),1E5):null;p&&(F=this.modifyValue(F,H));H.plotY=F="number"===typeof F&&Infinity!==F?Math.min(Math.max(-1E5,g.translate(F,0,1,0,1)),1E5):void 0;H.isInside=void 0!==F&&0<=F&&F<=g.len&&0<=E&&E<=e.len;H.clientX=q?a(e.translate(G,0,0,0,1,n)):E;H.negative=H[L]<(b[L+"Threshold"]||y||0);H.category=c&&void 0!==c[H.x]?c[H.x]:H.x;if(!H.isNull){void 0!==
Z&&(B=Math.min(B,Math.abs(E-Z)));var Z=E}H.zone=this.zones.length&&H.getZone()}this.closestPointRangePx=B;l(this,"afterTranslate")},getValidPoints:function(a,b,d){var e=this.chart;return(a||this.points||[]).filter(function(a){return b&&!e.isInsidePlot(a.plotX,a.plotY,e.inverted)?!1:d||!a.isNull})},getClipBox:function(a,b){var d=this.options,e=this.chart,c=e.inverted,k=this.xAxis,g=k&&this.yAxis;a&&!1===d.clip&&g?a=c?{y:-e.chartWidth+g.len+g.pos,height:e.chartWidth,width:e.chartHeight,x:-e.chartHeight+
k.len+k.pos}:{y:-g.pos,height:e.chartHeight,width:e.chartWidth,x:-k.pos}:(a=this.clipBox||e.clipBox,b&&(a.width=e.plotSizeX,a.x=0));return b?{width:a.width,x:a.x}:a},setClip:function(a){var b=this.chart,d=this.options,e=b.renderer,c=b.inverted,k=this.clipBox,g=this.getClipBox(a),f=this.sharedClipKey||["_sharedClip",a&&a.duration,a&&a.easing,g.height,d.xAxis,d.yAxis].join(),h=b[f],l=b[f+"m"];h||(a&&(g.width=0,c&&(g.x=b.plotSizeX+(!1!==d.clip?0:b.plotTop)),b[f+"m"]=l=e.clipRect(c?b.plotSizeX+99:-99,
c?-b.plotLeft:-b.plotTop,99,c?b.chartWidth:b.chartHeight)),b[f]=h=e.clipRect(g),h.count={length:0});a&&!h.count[this.index]&&(h.count[this.index]=!0,h.count.length+=1);if(!1!==d.clip||a)this.group.clip(a||k?h:b.clipRect),this.markerGroup.clip(l),this.sharedClipKey=f;a||(h.count[this.index]&&(delete h.count[this.index],--h.count.length),0===h.count.length&&f&&b[f]&&(k||(b[f]=b[f].destroy()),b[f+"m"]&&(b[f+"m"]=b[f+"m"].destroy())))},animate:function(a){var d=this.chart,e=b(this.options.animation);
if(a)this.setClip(e);else{var c=this.sharedClipKey;a=d[c];var k=this.getClipBox(e,!0);a&&a.animate(k,e);d[c+"m"]&&d[c+"m"].animate({width:k.width+99,x:k.x-(d.inverted?0:99)},e);this.animate=null}},afterAnimate:function(){this.setClip();l(this,"afterAnimate");this.finishedAnimating=!0},drawPoints:function(){var a=this.points,b=this.chart,d,e=this.options.marker,c=this[this.specialGroup]||this.markerGroup;var g=this.xAxis;var f=h(e.enabled,!g||g.isRadial?!0:null,this.closestPointRangePx>=e.enabledThreshold*
e.radius);if(!1!==e.enabled||this._hasPointMarkers)for(g=0;g<a.length;g++){var l=a[g];var p=(d=l.graphic)?"animate":"attr";var u=l.marker||{};var n=!!l.marker;var q=f&&void 0===u.enabled||u.enabled;var v=!1!==l.isInside;if(q&&!l.isNull){var y=h(u.symbol,this.symbol);q=this.markerAttribs(l,l.selected&&"select");d?d[v?"show":"hide"](v).animate(q):v&&(0<q.width||l.hasImage)&&(l.graphic=d=b.renderer.symbol(y,q.x,q.y,q.width,q.height,n?u:e).add(c));if(d&&!b.styledMode)d[p](this.pointAttribs(l,l.selected&&
"select"));d&&d.addClass(l.getClassName(),!0)}else d&&(l.graphic=d.destroy())}},markerAttribs:function(a,b){var d=this.options.marker,e=a.marker||{},c=e.symbol||d.symbol,k=h(e.radius,d.radius);b&&(d=d.states[b],b=e.states&&e.states[b],k=h(b&&b.radius,d&&d.radius,k+(d&&d.radiusPlus||0)));a.hasImage=c&&0===c.indexOf("url");a.hasImage&&(k=0);a={x:Math.floor(a.plotX)-k,y:a.plotY-k};k&&(a.width=a.height=2*k);return a},pointAttribs:function(a,b){var d=this.options.marker,e=a&&a.options,c=e&&e.marker||{},
k=this.color,g=e&&e.color,f=a&&a.color;e=h(c.lineWidth,d.lineWidth);var l=a&&a.zone&&a.zone.color;a=1;k=g||l||f||k;g=c.fillColor||d.fillColor||k;k=c.lineColor||d.lineColor||k;b=b||"normal";d=d.states[b];b=c.states&&c.states[b]||{};e=h(b.lineWidth,d.lineWidth,e+h(b.lineWidthPlus,d.lineWidthPlus,0));g=b.fillColor||d.fillColor||g;k=b.lineColor||d.lineColor||k;a=h(b.opacity,d.opacity,a);return{stroke:k,"stroke-width":e,fill:g,opacity:a}},destroy:function(a){var b=this,d=b.chart,e=/AppleWebKit\/533/.test(u.navigator.userAgent),
k,g,f=b.data||[],h,n;l(b,"destroy");a||E(b);(b.axisTypes||[]).forEach(function(a){(n=b[a])&&n.series&&(B(n.series,b),n.isDirty=n.forceRedraw=!0)});b.legendItem&&b.chart.legend.destroyItem(b);for(g=f.length;g--;)(h=f[g])&&h.destroy&&h.destroy();b.points=null;c.clearTimeout(b.animationTimeout);y(b,function(a,b){a instanceof p&&!a.survive&&(k=e&&"group"===b?"hide":"destroy",a[k]())});d.hoverSeries===b&&(d.hoverSeries=null);B(d.series,b);d.orderSeries();y(b,function(d,e){a&&"hcEvents"===e||delete b[e]})},
getGraphPath:function(a,b,d){var e=this,c=e.options,k=c.step,g,f=[],h=[],l;a=a||e.points;(g=a.reversed)&&a.reverse();(k={right:1,center:2}[k]||k&&3)&&g&&(k=4-k);!c.connectNulls||b||d||(a=this.getValidPoints(a));a.forEach(function(g,m){var r=g.plotX,p=g.plotY,u=a[m-1];(g.leftCliff||u&&u.rightCliff)&&!d&&(l=!0);g.isNull&&!z(b)&&0<m?l=!c.connectNulls:g.isNull&&!b?l=!0:(0===m||l?m=["M",g.plotX,g.plotY]:e.getPointSpline?m=e.getPointSpline(a,g,m):k?(m=1===k?["L",u.plotX,p]:2===k?["L",(u.plotX+r)/2,u.plotY,
"L",(u.plotX+r)/2,p]:["L",r,u.plotY],m.push("L",r,p)):m=["L",r,p],h.push(g.x),k&&(h.push(g.x),2===k&&h.push(g.x)),f.push.apply(f,m),l=!1)});f.xMap=h;return e.graphPath=f},drawGraph:function(){var a=this,b=this.options,d=(this.gappedPath||this.getGraphPath).call(this),e=this.chart.styledMode,c=[["graph","highcharts-graph"]];e||c[0].push(b.lineColor||this.color||"#cccccc",b.dashStyle);c=a.getZonesGraphs(c);c.forEach(function(c,k){var g=c[0],f=a[g],h=f?"animate":"attr";f?(f.endX=a.preventGraphAnimation?
null:d.xMap,f.animate({d:d})):d.length&&(a[g]=f=a.chart.renderer.path(d).addClass(c[1]).attr({zIndex:1}).add(a.group));f&&!e&&(g={stroke:c[2],"stroke-width":b.lineWidth,fill:a.fillGraph&&a.color||"none"},c[3]?g.dashstyle=c[3]:"square"!==b.linecap&&(g["stroke-linecap"]=g["stroke-linejoin"]="round"),f[h](g).shadow(2>k&&b.shadow));f&&(f.startX=d.xMap,f.isArea=d.isArea)})},getZonesGraphs:function(a){this.zones.forEach(function(b,d){d=["zone-graph-"+d,"highcharts-graph highcharts-zone-graph-"+d+" "+(b.className||
"")];this.chart.styledMode||d.push(b.color||this.color,b.dashStyle||this.options.dashStyle);a.push(d)},this);return a},applyZones:function(){var a=this,b=this.chart,d=b.renderer,e=this.zones,c,g,f=this.clips||[],l,p=this.graph,u=this.area,n=Math.max(b.chartWidth,b.chartHeight),q=this[(this.zoneAxis||"y")+"Axis"],v=b.inverted,y,t,E,C=!1;if(e.length&&(p||u)&&q&&void 0!==q.min){var L=q.reversed;var z=q.horiz;p&&!this.showLine&&p.hide();u&&u.hide();var B=q.getExtremes();e.forEach(function(e,k){c=L?z?
b.plotWidth:0:z?0:q.toPixels(B.min)||0;c=Math.min(Math.max(h(g,c),0),n);g=Math.min(Math.max(Math.round(q.toPixels(h(e.value,B.max),!0)||0),0),n);C&&(c=g=q.toPixels(B.max));y=Math.abs(c-g);t=Math.min(c,g);E=Math.max(c,g);q.isXAxis?(l={x:v?E:t,y:0,width:y,height:n},z||(l.x=b.plotHeight-l.x)):(l={x:0,y:v?E:t,width:n,height:y},z&&(l.y=b.plotWidth-l.y));v&&d.isVML&&(l=q.isXAxis?{x:0,y:L?t:E,height:l.width,width:b.chartWidth}:{x:l.y-b.plotLeft-b.spacingBox.x,y:0,width:l.height,height:b.chartHeight});f[k]?
f[k].animate(l):f[k]=d.clipRect(l);p&&a["zone-graph-"+k].clip(f[k]);u&&a["zone-area-"+k].clip(f[k]);C=e.value>B.max;a.resetZones&&0===g&&(g=void 0)});this.clips=f}else a.visible&&(p&&p.show(!0),u&&u.show(!0))},invertGroups:function(a){function b(){["group","markerGroup"].forEach(function(b){d[b]&&(e.renderer.isVML&&d[b].attr({width:d.yAxis.len,height:d.xAxis.len}),d[b].width=d.yAxis.len,d[b].height=d.xAxis.len,d[b].invert(a))})}var d=this,e=d.chart;if(d.xAxis){var c=g(e,"resize",b);g(d,"destroy",
c);b(a);d.invertGroups=b}},plotGroup:function(a,b,d,e,c){var k=this[a],g=!k;g&&(this[a]=k=this.chart.renderer.g().attr({zIndex:e||.1}).add(c));k.addClass("highcharts-"+b+" highcharts-series-"+this.index+" highcharts-"+this.type+"-series "+(z(this.colorIndex)?"highcharts-color-"+this.colorIndex+" ":"")+(this.options.className||"")+(k.hasClass("highcharts-tracker")?" highcharts-tracker":""),!0);k.attr({visibility:d})[g?"attr":"animate"](this.getPlotBox());return k},getPlotBox:function(){var a=this.chart,
b=this.xAxis,d=this.yAxis;a.inverted&&(b=d,d=this.xAxis);return{translateX:b?b.left:a.plotLeft,translateY:d?d.top:a.plotTop,scaleX:1,scaleY:1}},render:function(){var a=this,d=a.chart,e=a.options,c=!!a.animate&&d.renderer.isSVG&&b(e.animation).duration,g=a.visible?"inherit":"hidden",f=e.zIndex,h=a.hasRendered,p=d.seriesGroup,u=d.inverted;l(this,"render");var n=a.plotGroup("group","series",g,f,p);a.markerGroup=a.plotGroup("markerGroup","markers",g,f,p);c&&a.animate(!0);n.inverted=a.isCartesian||a.invertable?
u:!1;a.drawGraph&&(a.drawGraph(),a.applyZones());a.visible&&a.drawPoints();a.drawDataLabels&&a.drawDataLabels();a.redrawPoints&&a.redrawPoints();a.drawTracker&&!1!==a.options.enableMouseTracking&&a.drawTracker();a.invertGroups(u);!1===e.clip||a.sharedClipKey||h||n.clip(d.clipRect);c&&a.animate();h||(a.animationTimeout=q(function(){a.afterAnimate()},c||0));a.isDirty=!1;a.hasRendered=!0;l(a,"afterRender")},redraw:function(){var a=this.chart,b=this.isDirty||this.isDirtyData,d=this.group,e=this.xAxis,
c=this.yAxis;d&&(a.inverted&&d.attr({width:a.plotWidth,height:a.plotHeight}),d.animate({translateX:h(e&&e.left,a.plotLeft),translateY:h(c&&c.top,a.plotTop)}));this.translate();this.render();b&&delete this.kdTree},kdAxisArray:["clientX","plotY"],searchPoint:function(a,b){var d=this.xAxis,e=this.yAxis,c=this.chart.inverted;return this.searchKDTree({clientX:c?d.len-a.chartY+d.pos:a.chartX-d.pos,plotY:c?e.len-a.chartX+e.pos:a.chartY-e.pos},b,a)},buildKDTree:function(a){function b(a,e,c){var g;if(g=a&&
a.length){var k=d.kdAxisArray[e%c];a.sort(function(a,b){return a[k]-b[k]});g=Math.floor(g/2);return{point:a[g],left:b(a.slice(0,g),e+1,c),right:b(a.slice(g+1),e+1,c)}}}this.buildingKdTree=!0;var d=this,e=-1<d.options.findNearestPointBy.indexOf("y")?2:1;delete d.kdTree;q(function(){d.kdTree=b(d.getValidPoints(null,!d.directTouch),e,e);d.buildingKdTree=!1},d.options.kdNow||a&&"touchstart"===a.type?0:1)},searchKDTree:function(a,b,d){function e(a,b,d,h){var l=b.point,m=c.kdAxisArray[d%h],p=l;var r=z(a[g])&&
z(l[g])?Math.pow(a[g]-l[g],2):null;var u=z(a[k])&&z(l[k])?Math.pow(a[k]-l[k],2):null;u=(r||0)+(u||0);l.dist=z(u)?Math.sqrt(u):Number.MAX_VALUE;l.distX=z(r)?Math.sqrt(r):Number.MAX_VALUE;m=a[m]-l[m];u=0>m?"left":"right";r=0>m?"right":"left";b[u]&&(u=e(a,b[u],d+1,h),p=u[f]<p[f]?u:l);b[r]&&Math.sqrt(m*m)<p[f]&&(a=e(a,b[r],d+1,h),p=a[f]<p[f]?a:p);return p}var c=this,g=this.kdAxisArray[0],k=this.kdAxisArray[1],f=b?"distX":"dist";b=-1<c.options.findNearestPointBy.indexOf("y")?2:1;this.kdTree||this.buildingKdTree||
this.buildKDTree(d);if(this.kdTree)return e(a,this.kdTree,b,b)},pointPlacementToXValue:function(){var a=this.xAxis,b=this.options.pointPlacement;"between"===b&&(b=a.reversed?-.5:.5);C(b)&&(b*=h(this.options.pointRange||a.pointRange));return b}});""});M(I,"parts/Stacking.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.defined,G=f.destroyObjectProperties,z=f.objectEach,B=f.pick;f=c.Axis;var t=c.Chart,v=c.correctFloat,C=c.format,H=c.Series;c.StackItem=function(c,f,n,q,g){var b=
c.chart.inverted;this.axis=c;this.isNegative=n;this.options=f=f||{};this.x=q;this.total=null;this.points={};this.stack=g;this.rightCliff=this.leftCliff=0;this.alignOptions={align:f.align||(b?n?"left":"right":"center"),verticalAlign:f.verticalAlign||(b?"middle":n?"bottom":"top"),y:f.y,x:f.x};this.textAlign=f.textAlign||(b?n?"right":"left":"center")};c.StackItem.prototype={destroy:function(){G(this,this.axis)},render:function(c){var f=this.axis.chart,n=this.options,q=n.format;q=q?C(q,this,f.time):n.formatter.call(this);
this.label?this.label.attr({text:q,visibility:"hidden"}):(this.label=f.renderer.label(q,null,null,n.shape,null,null,n.useHTML,!1,"stack-labels"),q={text:q,align:this.textAlign,rotation:n.rotation,padding:B(n.padding,0),visibility:"hidden"},this.label.attr(q),f.styledMode||this.label.css(n.style),this.label.added||this.label.add(c));this.label.labelrank=f.plotHeight},setOffset:function(c,f,n,q,g){var b=this.axis,a=b.chart;q=b.translate(b.usePercentage?100:q?q:this.total,0,0,0,1);n=b.translate(n?n:
0);n=F(q)&&Math.abs(q-n);c=B(g,a.xAxis[0].translate(this.x))+c;b=F(q)&&this.getStackBox(a,this,c,q,f,n,b);f=this.label;c=this.isNegative;g="justify"===B(this.options.overflow,"justify");if(f&&b){n=f.getBBox();var d=a.inverted?c?n.width:0:n.width/2,e=a.inverted?n.height/2:c?-4:n.height+4;this.alignOptions.x=B(this.options.x,0);f.align(this.alignOptions,null,b);q=f.alignAttr;f.show();q.y-=e;g&&(q.x-=d,H.prototype.justifyDataLabel.call(this.axis,f,this.alignOptions,q,n,b),q.x+=d);q.x=f.alignAttr.x;f.attr({x:q.x,
y:q.y});B(!g&&this.options.crop,!0)&&((a=a.isInsidePlot(f.x+(a.inverted?0:-n.width/2),f.y)&&a.isInsidePlot(f.x+(a.inverted?c?-n.width:n.width:n.width/2),f.y+n.height))||f.hide())}},getStackBox:function(c,f,n,q,g,b,a){var d=f.axis.reversed,e=c.inverted;c=a.height+a.pos-(e?c.plotLeft:c.plotTop);f=f.isNegative&&!d||!f.isNegative&&d;return{x:e?f?q:q-b:n,y:e?c-n-g:f?c-q-b:c-q,width:e?b:g,height:e?g:b}}};t.prototype.getStacks=function(){var c=this,f=c.inverted;c.yAxis.forEach(function(c){c.stacks&&c.hasVisibleSeries&&
(c.oldStacks=c.stacks)});c.series.forEach(function(h){var n=h.xAxis&&h.xAxis.options||{};!h.options.stacking||!0!==h.visible&&!1!==c.options.chart.ignoreHiddenSeries||(h.stackKey=[h.type,B(h.options.stack,""),f?n.top:n.left,f?n.height:n.width].join())})};f.prototype.buildStacks=function(){var c=this.series,f=B(this.options.reversedStacks,!0),n=c.length,q;if(!this.isXAxis){this.usePercentage=!1;for(q=n;q--;)c[f?q:n-q-1].setStackedPoints();for(q=0;q<n;q++)c[q].modifyStacks()}};f.prototype.renderStackTotals=
function(){var c=this.chart,f=c.renderer,n=this.stacks,q=this.stackTotalGroup;q||(this.stackTotalGroup=q=f.g("stack-labels").attr({visibility:"visible",zIndex:6}).add());q.translate(c.plotLeft,c.plotTop);z(n,function(c){z(c,function(b){b.render(q)})})};f.prototype.resetStacks=function(){var c=this,f=c.stacks;c.isXAxis||z(f,function(f){z(f,function(h,g){h.touched<c.stacksTouched?(h.destroy(),delete f[g]):(h.total=null,h.cumulative=null)})})};f.prototype.cleanStacks=function(){if(!this.isXAxis){if(this.oldStacks)var c=
this.stacks=this.oldStacks;z(c,function(c){z(c,function(c){c.cumulative=c.total})})}};H.prototype.setStackedPoints=function(){if(this.options.stacking&&(!0===this.visible||!1===this.chart.options.chart.ignoreHiddenSeries)){var f=this.processedXData,h=this.processedYData,n=[],q=h.length,g=this.options,b=g.threshold,a=B(g.startFromThreshold&&b,0),d=g.stack;g=g.stacking;var e=this.stackKey,l="-"+e,t=this.negStacks,E=this.yAxis,p=E.stacks,u=E.oldStacks,k,r;E.stacksTouched+=1;for(r=0;r<q;r++){var x=f[r];
var A=h[r];var w=this.getStackIndicator(w,x,this.index);var m=w.key;var K=(k=t&&A<(a?0:b))?l:e;p[K]||(p[K]={});p[K][x]||(u[K]&&u[K][x]?(p[K][x]=u[K][x],p[K][x].total=null):p[K][x]=new c.StackItem(E,E.options.stackLabels,k,x,d));K=p[K][x];null!==A?(K.points[m]=K.points[this.index]=[B(K.cumulative,a)],F(K.cumulative)||(K.base=m),K.touched=E.stacksTouched,0<w.index&&!1===this.singleStacks&&(K.points[m][0]=K.points[this.index+","+x+",0"][0])):K.points[m]=K.points[this.index]=null;"percent"===g?(k=k?e:
l,t&&p[k]&&p[k][x]?(k=p[k][x],K.total=k.total=Math.max(k.total,K.total)+Math.abs(A)||0):K.total=v(K.total+(Math.abs(A)||0))):K.total=v(K.total+(A||0));K.cumulative=B(K.cumulative,a)+(A||0);null!==A&&(K.points[m].push(K.cumulative),n[r]=K.cumulative)}"percent"===g&&(E.usePercentage=!0);this.stackedYData=n;E.oldStacks={}}};H.prototype.modifyStacks=function(){var c=this,f=c.stackKey,n=c.yAxis.stacks,q=c.processedXData,g,b=c.options.stacking;c[b+"Stacker"]&&[f,"-"+f].forEach(function(a){for(var d=q.length,
e,f;d--;)if(e=q[d],g=c.getStackIndicator(g,e,c.index,a),f=(e=n[a]&&n[a][e])&&e.points[g.key])c[b+"Stacker"](f,e,d)})};H.prototype.percentStacker=function(c,f,n){f=f.total?100/f.total:0;c[0]=v(c[0]*f);c[1]=v(c[1]*f);this.stackedYData[n]=c[1]};H.prototype.getStackIndicator=function(c,f,n,q){!F(c)||c.x!==f||q&&c.key!==q?c={x:f,index:0,key:q}:c.index++;c.key=[n,f,c.index].join();return c}});M(I,"parts/Dynamics.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.defined,G=f.erase,
z=f.extend,B=f.isArray,t=f.isNumber,v=f.isObject,C=f.isString,H=f.objectEach,y=f.pick,h=f.setAnimation,n=f.splat,q=c.addEvent,g=c.animate,b=c.Axis;f=c.Chart;var a=c.createElement,d=c.css,e=c.fireEvent,l=c.merge,L=c.Point,E=c.Series,p=c.seriesTypes;c.cleanRecursively=function(a,b){var d={};H(a,function(e,g){if(v(a[g],!0)&&!a.nodeType&&b[g])e=c.cleanRecursively(a[g],b[g]),Object.keys(e).length&&(d[g]=e);else if(v(a[g])||a[g]!==b[g])d[g]=a[g]});return d};z(f.prototype,{addSeries:function(a,b,d){var c,
g=this;a&&(b=y(b,!0),e(g,"addSeries",{options:a},function(){c=g.initSeries(a);g.isDirtyLegend=!0;g.linkSeries();e(g,"afterAddSeries",{series:c});b&&g.redraw(d)}));return c},addAxis:function(a,b,d,c){return this.createAxis(b?"xAxis":"yAxis",{axis:a,redraw:d,animation:c})},addColorAxis:function(a,b,d){return this.createAxis("colorAxis",{axis:a,redraw:b,animation:d})},createAxis:function(a,d){var e=this.options,g="colorAxis"===a,k=d.redraw,f=d.animation;d=l(d.axis,{index:this[a].length,isX:"xAxis"===
a});var h=g?new c.ColorAxis(this,d):new b(this,d);e[a]=n(e[a]||{});e[a].push(d);g&&(this.isDirtyLegend=!0,this.axes.forEach(function(a){a.series=[]}),this.series.forEach(function(a){a.bindAxes();a.isDirtyData=!0}));y(k,!0)&&this.redraw(f);return h},showLoading:function(b){var c=this,e=c.options,f=c.loadingDiv,h=e.loading,l=function(){f&&d(f,{left:c.plotLeft+"px",top:c.plotTop+"px",width:c.plotWidth+"px",height:c.plotHeight+"px"})};f||(c.loadingDiv=f=a("div",{className:"highcharts-loading highcharts-loading-hidden"},
null,c.container),c.loadingSpan=a("span",{className:"highcharts-loading-inner"},null,f),q(c,"redraw",l));f.className="highcharts-loading";c.loadingSpan.innerHTML=y(b,e.lang.loading,"");c.styledMode||(d(f,z(h.style,{zIndex:10})),d(c.loadingSpan,h.labelStyle),c.loadingShown||(d(f,{opacity:0,display:""}),g(f,{opacity:h.style.opacity||.5},{duration:h.showDuration||0})));c.loadingShown=!0;l()},hideLoading:function(){var a=this.options,b=this.loadingDiv;b&&(b.className="highcharts-loading highcharts-loading-hidden",
this.styledMode||g(b,{opacity:0},{duration:a.loading.hideDuration||100,complete:function(){d(b,{display:"none"})}}));this.loadingShown=!1},propsRequireDirtyBox:"backgroundColor borderColor borderWidth borderRadius plotBackgroundColor plotBackgroundImage plotBorderColor plotBorderWidth plotShadow shadow".split(" "),propsRequireReflow:"margin marginTop marginRight marginBottom marginLeft spacing spacingTop spacingRight spacingBottom spacingLeft".split(" "),propsRequireUpdateSeries:"chart.inverted chart.polar chart.ignoreHiddenSeries chart.type colors plotOptions time tooltip".split(" "),
collectionsWithUpdate:"xAxis yAxis zAxis colorAxis series pane".split(" "),update:function(a,b,d,g){var k=this,f={credits:"addCredits",title:"setTitle",subtitle:"setSubtitle",caption:"setCaption"},h,p,r,u=a.isResponsiveOptions,q=[];e(k,"update",{options:a});u||k.setResponsive(!1,!0);a=c.cleanRecursively(a,k.options);l(!0,k.userOptions,a);if(h=a.chart){l(!0,k.options.chart,h);"className"in h&&k.setClassName(h.className);"reflow"in h&&k.setReflow(h.reflow);if("inverted"in h||"polar"in h||"type"in h){k.propFromSeries();
var x=!0}"alignTicks"in h&&(x=!0);H(h,function(a,b){-1!==k.propsRequireUpdateSeries.indexOf("chart."+b)&&(p=!0);-1!==k.propsRequireDirtyBox.indexOf(b)&&(k.isDirtyBox=!0);u||-1===k.propsRequireReflow.indexOf(b)||(r=!0)});!k.styledMode&&"style"in h&&k.renderer.setStyle(h.style)}!k.styledMode&&a.colors&&(this.options.colors=a.colors);a.plotOptions&&l(!0,this.options.plotOptions,a.plotOptions);a.time&&this.time===c.time&&(this.time=new c.Time(a.time));H(a,function(a,b){if(k[b]&&"function"===typeof k[b].update)k[b].update(a,
!1);else if("function"===typeof k[f[b]])k[f[b]](a);"chart"!==b&&-1!==k.propsRequireUpdateSeries.indexOf(b)&&(p=!0)});this.collectionsWithUpdate.forEach(function(b){if(a[b]){if("series"===b){var c=[];k[b].forEach(function(a,b){a.options.isInternal||c.push(y(a.options.index,b))})}n(a[b]).forEach(function(a,e){(e=F(a.id)&&k.get(a.id)||k[b][c?c[e]:e])&&e.coll===b&&(e.update(a,!1),d&&(e.touched=!0));!e&&d&&k.collectionsWithInit[b]&&(k.collectionsWithInit[b][0].apply(k,[a].concat(k.collectionsWithInit[b][1]||
[]).concat([!1])).touched=!0)});d&&k[b].forEach(function(a){a.touched||a.options.isInternal?delete a.touched:q.push(a)})}});q.forEach(function(a){a.remove&&a.remove(!1)});x&&k.axes.forEach(function(a){a.update({},!1)});p&&k.series.forEach(function(a){a.update({},!1)});a.loading&&l(!0,k.options.loading,a.loading);x=h&&h.width;h=h&&h.height;C(h)&&(h=c.relativeLength(h,x||k.chartWidth));r||t(x)&&x!==k.chartWidth||t(h)&&h!==k.chartHeight?k.setSize(x,h,g):y(b,!0)&&k.redraw(g);e(k,"afterUpdate",{options:a,
redraw:b,animation:g})},setSubtitle:function(a,b){this.applyDescription("subtitle",a);this.layOutTitles(b)},setCaption:function(a,b){this.applyDescription("caption",a);this.layOutTitles(b)}});f.prototype.collectionsWithInit={xAxis:[f.prototype.addAxis,[!0]],yAxis:[f.prototype.addAxis,[!1]],colorAxis:[f.prototype.addColorAxis,[!1]],series:[f.prototype.addSeries]};z(L.prototype,{update:function(a,b,d,c){function e(){g.applyOptions(a);null===g.y&&f&&(g.graphic=f.destroy());v(a,!0)&&(f&&f.element&&a&&
a.marker&&void 0!==a.marker.symbol&&(g.graphic=f.destroy()),a&&a.dataLabels&&g.dataLabel&&(g.dataLabel=g.dataLabel.destroy()),g.connector&&(g.connector=g.connector.destroy()));h=g.index;k.updateParallelArrays(g,h);p.data[h]=v(p.data[h],!0)||v(a,!0)?g.options:y(a,p.data[h]);k.isDirty=k.isDirtyData=!0;!k.fixedBox&&k.hasCartesianSeries&&(l.isDirtyBox=!0);"point"===p.legendType&&(l.isDirtyLegend=!0);b&&l.redraw(d)}var g=this,k=g.series,f=g.graphic,h,l=k.chart,p=k.options;b=y(b,!0);!1===c?e():g.firePointEvent("update",
{options:a},e)},remove:function(a,b){this.series.removePoint(this.series.data.indexOf(this),a,b)}});z(E.prototype,{addPoint:function(a,b,d,c,g){var k=this.options,f=this.data,h=this.chart,l=this.xAxis;l=l&&l.hasNames&&l.names;var p=k.data,r=this.xData,n;b=y(b,!0);var u={series:this};this.pointClass.prototype.applyOptions.apply(u,[a]);var q=u.x;var x=r.length;if(this.requireSorting&&q<r[x-1])for(n=!0;x&&r[x-1]>q;)x--;this.updateParallelArrays(u,"splice",x,0,0);this.updateParallelArrays(u,x);l&&u.name&&
(l[q]=u.name);p.splice(x,0,a);n&&(this.data.splice(x,0,null),this.processData());"point"===k.legendType&&this.generatePoints();d&&(f[0]&&f[0].remove?f[0].remove(!1):(f.shift(),this.updateParallelArrays(u,"shift"),p.shift()));!1!==g&&e(this,"addPoint",{point:u});this.isDirtyData=this.isDirty=!0;b&&h.redraw(c)},removePoint:function(a,b,d){var c=this,e=c.data,g=e[a],k=c.points,f=c.chart,l=function(){k&&k.length===e.length&&k.splice(a,1);e.splice(a,1);c.options.data.splice(a,1);c.updateParallelArrays(g||
{series:c},"splice",a,1);g&&g.destroy();c.isDirty=!0;c.isDirtyData=!0;b&&f.redraw()};h(d,f);b=y(b,!0);g?g.firePointEvent("remove",null,l):l()},remove:function(a,b,d,c){function g(){k.destroy(c);k.remove=null;f.isDirtyLegend=f.isDirtyBox=!0;f.linkSeries();y(a,!0)&&f.redraw(b)}var k=this,f=k.chart;!1!==d?e(k,"remove",null,g):g()},update:function(a,b){a=c.cleanRecursively(a,this.userOptions);e(this,"update",{options:a});var d=this,g=d.chart,k=d.userOptions,f=d.initialType||d.type,h=a.type||k.type||g.options.chart.type,
n=!(this.hasDerivedData||a.dataGrouping||h&&h!==this.type||void 0!==a.pointStart||a.pointInterval||a.pointIntervalUnit||a.keys),u=p[f].prototype,q,v=["group","markerGroup","dataLabelsGroup","transformGroup"],t=["eventOptions","navigatorSeries","baseSeries"],E=d.finishedAnimating&&{animation:!1},C={};n&&(t.push("data","isDirtyData","points","processedXData","processedYData","xIncrement","_hasPointMarkers","_hasPointLabels","mapMap","mapData","minY","maxY","minX","maxX"),!1!==a.visible&&t.push("area",
"graph"),d.parallelArrays.forEach(function(a){t.push(a+"Data")}),a.data&&this.setData(a.data,!1));a=l(k,E,{index:void 0===k.index?d.index:k.index,pointStart:y(k.pointStart,d.xData[0])},!n&&{data:d.options.data},a);n&&a.data&&(a.data=d.options.data);t=v.concat(t);t.forEach(function(a){t[a]=d[a];delete d[a]});d.remove(!1,null,!1,!0);for(q in u)d[q]=void 0;p[h||f]?z(d,p[h||f].prototype):c.error(17,!0,g,{missingModuleFor:h||f});t.forEach(function(a){d[a]=t[a]});d.init(g,a);if(n&&this.points){var L=d.options;
!1===L.visible?(C.graphic=1,C.dataLabel=1):d._hasPointLabels||(h=L.marker,u=L.dataLabels,h&&(!1===h.enabled||"symbol"in h)&&(C.graphic=1),u&&!1===u.enabled&&(C.dataLabel=1));this.points.forEach(function(a){a&&a.series&&(a.resolveColor(),Object.keys(C).length&&a.destroyElements(C),!1===L.showInLegend&&a.legendItem&&g.legend.destroyItem(a))},this)}a.zIndex!==k.zIndex&&v.forEach(function(b){d[b]&&d[b].attr({zIndex:a.zIndex})});d.initialType=f;g.linkSeries();e(this,"afterUpdate");y(b,!0)&&g.redraw(n?
void 0:!1)},setName:function(a){this.name=this.options.name=this.userOptions.name=a;this.chart.isDirtyLegend=!0}});z(b.prototype,{update:function(a,b){var d=this.chart,c=a&&a.events||{};a=l(this.userOptions,a);d.options[this.coll].indexOf&&(d.options[this.coll][d.options[this.coll].indexOf(this.userOptions)]=a);H(d.options[this.coll].events,function(a,b){"undefined"===typeof c[b]&&(c[b]=void 0)});this.destroy(!0);this.init(d,z(a,{events:c}));d.isDirtyBox=!0;y(b,!0)&&d.redraw()},remove:function(a){for(var b=
this.chart,d=this.coll,c=this.series,e=c.length;e--;)c[e]&&c[e].remove(!1);G(b.axes,this);G(b[d],this);B(b.options[d])?b.options[d].splice(this.options.index,1):delete b.options[d];b[d].forEach(function(a,b){a.options.index=a.userOptions.index=b});this.destroy();b.isDirtyBox=!0;y(a,!0)&&b.redraw()},setTitle:function(a,b){this.update({title:a},b)},setCategories:function(a,b){this.update({categories:a},b)}})});M(I,"parts/AreaSeries.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=
f.objectEach,G=f.pick,z=c.color,B=c.Series;f=c.seriesType;f("area","line",{softThreshold:!1,threshold:0},{singleStacks:!1,getStackPoints:function(c){var f=[],t=[],z=this.xAxis,y=this.yAxis,h=y.stacks[this.stackKey],n={},q=this.index,g=y.series,b=g.length,a=G(y.options.reversedStacks,!0)?1:-1,d;c=c||this.points;if(this.options.stacking){for(d=0;d<c.length;d++)c[d].leftNull=c[d].rightNull=void 0,n[c[d].x]=c[d];F(h,function(a,b){null!==a.total&&t.push(b)});t.sort(function(a,b){return a-b});var e=g.map(function(a){return a.visible});
t.forEach(function(c,g){var l=0,p,u;if(n[c]&&!n[c].isNull)f.push(n[c]),[-1,1].forEach(function(k){var f=1===k?"rightNull":"leftNull",l=0,v=h[t[g+k]];if(v)for(d=q;0<=d&&d<b;)p=v.points[d],p||(d===q?n[c][f]=!0:e[d]&&(u=h[c].points[d])&&(l-=u[1]-u[0])),d+=a;n[c][1===k?"rightCliff":"leftCliff"]=l});else{for(d=q;0<=d&&d<b;){if(p=h[c].points[d]){l=p[1];break}d+=a}l=y.translate(l,0,1,0,1);f.push({isNull:!0,plotX:z.translate(c,0,0,0,1),x:c,plotY:l,yBottom:l})}})}return f},getGraphPath:function(c){var f=B.prototype.getGraphPath,
t=this.options,z=t.stacking,y=this.yAxis,h,n=[],q=[],g=this.index,b=y.stacks[this.stackKey],a=t.threshold,d=Math.round(y.getThreshold(t.threshold));t=G(t.connectNulls,"percent"===z);var e=function(e,f,k){var h=c[e];e=z&&b[h.x].points[g];var l=h[k+"Null"]||0;k=h[k+"Cliff"]||0;h=!0;if(k||l){var p=(l?e[0]:e[1])+k;var u=e[0]+k;h=!!l}else!z&&c[f]&&c[f].isNull&&(p=u=a);void 0!==p&&(q.push({plotX:L,plotY:null===p?d:y.getThreshold(p),isNull:h,isCliff:!0}),n.push({plotX:L,plotY:null===u?d:y.getThreshold(u),
doCurve:!1}))};c=c||this.points;z&&(c=this.getStackPoints(c));for(h=0;h<c.length;h++){z||(c[h].leftCliff=c[h].rightCliff=c[h].leftNull=c[h].rightNull=void 0);var l=c[h].isNull;var L=G(c[h].rectPlotX,c[h].plotX);var E=G(c[h].yBottom,d);if(!l||t)t||e(h,h-1,"left"),l&&!z&&t||(q.push(c[h]),n.push({x:h,plotX:L,plotY:E})),t||e(h,h+1,"right")}h=f.call(this,q,!0,!0);n.reversed=!0;l=f.call(this,n,!0,!0);l.length&&(l[0]="L");l=h.concat(l);f=f.call(this,q,!1,t);l.xMap=h.xMap;this.areaPath=l;return f},drawGraph:function(){this.areaPath=
[];B.prototype.drawGraph.apply(this);var c=this,f=this.areaPath,C=this.options,H=[["area","highcharts-area",this.color,C.fillColor]];this.zones.forEach(function(f,h){H.push(["zone-area-"+h,"highcharts-area highcharts-zone-area-"+h+" "+f.className,f.color||c.color,f.fillColor||C.fillColor])});H.forEach(function(v){var h=v[0],n=c[h],q=n?"animate":"attr",g={};n?(n.endX=c.preventGraphAnimation?null:f.xMap,n.animate({d:f})):(g.zIndex=0,n=c[h]=c.chart.renderer.path(f).addClass(v[1]).add(c.group),n.isArea=
!0);c.chart.styledMode||(g.fill=G(v[3],z(v[2]).setOpacity(G(C.fillOpacity,.75)).get()));n[q](g);n.startX=f.xMap;n.shiftUnit=C.step?2:1})},drawLegendSymbol:c.LegendSymbolMixin.drawRectangle});""});M(I,"parts/SplineSeries.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.pick;c=c.seriesType;c("spline","line",{},{getPointSpline:function(c,f,B){var t=f.plotX,v=f.plotY,C=c[B-1];B=c[B+1];if(C&&!C.isNull&&!1!==C.doCurve&&!f.isCliff&&B&&!B.isNull&&!1!==B.doCurve&&!f.isCliff){c=C.plotY;
var z=B.plotX;B=B.plotY;var y=0;var h=(1.5*t+C.plotX)/2.5;var n=(1.5*v+c)/2.5;z=(1.5*t+z)/2.5;var q=(1.5*v+B)/2.5;z!==h&&(y=(q-n)*(z-t)/(z-h)+v-q);n+=y;q+=y;n>c&&n>v?(n=Math.max(c,v),q=2*v-n):n<c&&n<v&&(n=Math.min(c,v),q=2*v-n);q>B&&q>v?(q=Math.max(B,v),n=2*v-q):q<B&&q<v&&(q=Math.min(B,v),n=2*v-q);f.rightContX=z;f.rightContY=q}f=["C",F(C.rightContX,C.plotX),F(C.rightContY,C.plotY),F(h,t),F(n,v),t,v];C.rightContX=C.rightContY=null;return f}});""});M(I,"parts/AreaSplineSeries.js",[I["parts/Globals.js"]],
function(c){var f=c.seriesTypes.area.prototype,F=c.seriesType;F("areaspline","spline",c.defaultPlotOptions.area,{getStackPoints:f.getStackPoints,getGraphPath:f.getGraphPath,drawGraph:f.drawGraph,drawLegendSymbol:c.LegendSymbolMixin.drawRectangle});""});M(I,"parts/ColumnSeries.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.defined,G=f.extend,z=f.isNumber,B=f.pick,t=c.animObject,v=c.color,C=c.merge,H=c.Series;f=c.seriesType;var y=c.svg;f("column","line",{borderRadius:0,crisp:!0,
groupPadding:.2,marker:null,pointPadding:.1,minPointLength:0,cropThreshold:50,pointRange:null,states:{hover:{halo:!1,brightness:.1},select:{color:"#cccccc",borderColor:"#000000"}},dataLabels:{align:null,verticalAlign:null,y:null},softThreshold:!1,startFromThreshold:!0,stickyTracking:!1,tooltip:{distance:6},threshold:0,borderColor:"#ffffff"},{cropShoulder:0,directTouch:!0,trackerGroups:["group","dataLabelsGroup"],negStacks:!0,init:function(){H.prototype.init.apply(this,arguments);var c=this,f=c.chart;
f.hasRendered&&f.series.forEach(function(f){f.type===c.type&&(f.isDirty=!0)})},getColumnMetrics:function(){var c=this,f=c.options,q=c.xAxis,g=c.yAxis,b=q.options.reversedStacks;b=q.reversed&&!b||!q.reversed&&b;var a,d={},e=0;!1===f.grouping?e=1:c.chart.series.forEach(function(b){var f=b.yAxis,k=b.options;if(b.type===c.type&&(b.visible||!c.chart.options.chart.ignoreHiddenSeries)&&g.len===f.len&&g.pos===f.pos){if(k.stacking){a=b.stackKey;void 0===d[a]&&(d[a]=e++);var h=d[a]}else!1!==k.grouping&&(h=
e++);b.columnIndex=h}});var l=Math.min(Math.abs(q.transA)*(q.ordinalSlope||f.pointRange||q.closestPointRange||q.tickInterval||1),q.len),v=l*f.groupPadding,t=(l-2*v)/(e||1);f=Math.min(f.maxPointWidth||q.len,B(f.pointWidth,t*(1-2*f.pointPadding)));c.columnMetrics={width:f,offset:(t-f)/2+(v+((c.columnIndex||0)+(b?1:0))*t-l/2)*(b?-1:1)};return c.columnMetrics},crispCol:function(c,f,q,g){var b=this.chart,a=this.borderWidth,d=-(a%2?.5:0);a=a%2?.5:1;b.inverted&&b.renderer.isVML&&(a+=1);this.options.crisp&&
(q=Math.round(c+q)+d,c=Math.round(c)+d,q-=c);g=Math.round(f+g)+a;d=.5>=Math.abs(f)&&.5<g;f=Math.round(f)+a;g-=f;d&&g&&(--f,g+=1);return{x:c,y:f,width:q,height:g}},translate:function(){var c=this,f=c.chart,q=c.options,g=c.dense=2>c.closestPointRange*c.xAxis.transA;g=c.borderWidth=B(q.borderWidth,g?0:1);var b=c.yAxis,a=q.threshold,d=c.translatedThreshold=b.getThreshold(a),e=B(q.minPointLength,5),l=c.getColumnMetrics(),v=l.width,t=c.barW=Math.max(v,1+2*g),p=c.pointXOffset=l.offset,u=c.dataMin,k=c.dataMax;
f.inverted&&(d-=.5);q.pointPadding&&(t=Math.ceil(t));H.prototype.translate.apply(c);c.points.forEach(function(g){var h=B(g.yBottom,d),l=999+Math.abs(h),r=v;l=Math.min(Math.max(-l,g.plotY),b.len+l);var m=g.plotX+p,n=t,q=Math.min(l,h),y=Math.max(l,h)-q;if(e&&Math.abs(y)<e){y=e;var E=!b.reversed&&!g.negative||b.reversed&&g.negative;g.y===a&&c.dataMax<=a&&b.min<a&&u!==k&&(E=!E);q=Math.abs(q-d)>e?h-e:d-(E?e:0)}F(g.options.pointWidth)&&(r=n=Math.ceil(g.options.pointWidth),m-=Math.round((r-v)/2));g.barX=
m;g.pointWidth=r;g.tooltipPos=f.inverted?[b.len+b.pos-f.plotLeft-l,c.xAxis.len-m-n/2,y]:[m+n/2,l+b.pos-f.plotTop,y];g.shapeType=c.pointClass.prototype.shapeType||"rect";g.shapeArgs=c.crispCol.apply(c,g.isNull?[m,d,n,0]:[m,q,n,y])})},getSymbol:c.noop,drawLegendSymbol:c.LegendSymbolMixin.drawRectangle,drawGraph:function(){this.group[this.dense?"addClass":"removeClass"]("highcharts-dense-data")},pointAttribs:function(c,f){var h=this.options,g=this.pointAttrToOptions||{};var b=g.stroke||"borderColor";
var a=g["stroke-width"]||"borderWidth",d=c&&c.color||this.color,e=c&&c[b]||h[b]||this.color||d,l=c&&c[a]||h[a]||this[a]||0;g=c&&c.options.dashStyle||h.dashStyle;var n=B(h.opacity,1);if(c&&this.zones.length){var t=c.getZone();d=c.options.color||t&&(t.color||c.nonZonedColor)||this.color;t&&(e=t.borderColor||e,g=t.dashStyle||g,l=t.borderWidth||l)}f&&(c=C(h.states[f],c.options.states&&c.options.states[f]||{}),f=c.brightness,d=c.color||void 0!==f&&v(d).brighten(c.brightness).get()||d,e=c[b]||e,l=c[a]||
l,g=c.dashStyle||g,n=B(c.opacity,n));b={fill:d,stroke:e,"stroke-width":l,opacity:n};g&&(b.dashstyle=g);return b},drawPoints:function(){var c=this,f=this.chart,q=c.options,g=f.renderer,b=q.animationLimit||250,a;c.points.forEach(function(d){var e=d.graphic,l=e&&f.pointCount<b?"animate":"attr";if(z(d.plotY)&&null!==d.y){a=d.shapeArgs;e&&d.hasNewShapeType()&&(e=e.destroy());if(e)e[l](C(a));else d.graphic=e=g[d.shapeType](a).add(d.group||c.group);if(q.borderRadius)e[l]({r:q.borderRadius});f.styledMode||
e[l](c.pointAttribs(d,d.selected&&"select")).shadow(!1!==d.allowShadow&&q.shadow,null,q.stacking&&!q.borderRadius);e.addClass(d.getClassName(),!0)}else e&&(d.graphic=e.destroy())})},animate:function(c){var f=this,h=this.yAxis,g=f.options,b=this.chart.inverted,a={},d=b?"translateX":"translateY";if(y)if(c)a.scaleY=.001,c=Math.min(h.pos+h.len,Math.max(h.pos,h.toPixels(g.threshold))),b?a.translateX=c-h.len:a.translateY=c,f.clipBox&&f.setClip(),f.group.attr(a);else{var e=f.group.attr(d);f.group.animate({scaleY:1},
G(t(f.options.animation),{step:function(b,c){a[d]=e+c.pos*(h.pos-e);f.group.attr(a)}}));f.animate=null}},remove:function(){var c=this,f=c.chart;f.hasRendered&&f.series.forEach(function(f){f.type===c.type&&(f.isDirty=!0)});H.prototype.remove.apply(c,arguments)}});""});M(I,"parts/BarSeries.js",[I["parts/Globals.js"]],function(c){c=c.seriesType;c("bar","column",null,{inverted:!0});""});M(I,"parts/ScatterSeries.js",[I["parts/Globals.js"]],function(c){var f=c.Series,F=c.seriesType;F("scatter","line",{lineWidth:0,
findNearestPointBy:"xy",jitter:{x:0,y:0},marker:{enabled:!0},tooltip:{headerFormat:'<span style="color:{point.color}">\u25cf</span> <span style="font-size: 10px"> {series.name}</span><br/>',pointFormat:"x: <b>{point.x}</b><br/>y: <b>{point.y}</b><br/>"}},{sorted:!1,requireSorting:!1,noSharedTooltip:!0,trackerGroups:["group","markerGroup","dataLabelsGroup"],takeOrdinalPosition:!1,drawGraph:function(){this.options.lineWidth&&f.prototype.drawGraph.call(this)},applyJitter:function(){var c=this,f=this.options.jitter,
B=this.points.length;f&&this.points.forEach(function(t,v){["x","y"].forEach(function(C,z){var y="plot"+C.toUpperCase();if(f[C]&&!t.isNull){var h=c[C+"Axis"];var n=f[C]*h.transA;if(h&&!h.isLog){var q=Math.max(0,t[y]-n);h=Math.min(h.len,t[y]+n);z=1E4*Math.sin(v+z*B);t[y]=q+(h-q)*(z-Math.floor(z));"x"===C&&(t.clientX=t.plotX)}}})})}});c.addEvent(f,"afterTranslate",function(){this.applyJitter&&this.applyJitter()});""});M(I,"mixins/centered-series.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,
f){var F=f.isNumber,G=f.pick,z=c.deg2rad,B=c.relativeLength;c.CenteredSeriesMixin={getCenter:function(){var c=this.options,f=this.chart,C=2*(c.slicedOffset||0),z=f.plotWidth-2*C;f=f.plotHeight-2*C;var y=c.center;y=[G(y[0],"50%"),G(y[1],"50%"),c.size||"100%",c.innerSize||0];var h=Math.min(z,f),n;for(n=0;4>n;++n){var q=y[n];c=2>n||2===n&&/%$/.test(q);y[n]=B(q,[z,f,h,y[2]][n])+(c?C:0)}y[3]>y[2]&&(y[3]=y[2]);return y},getStartAndEndRadians:function(c,f){c=F(c)?c:0;f=F(f)&&f>c&&360>f-c?f:c+360;return{start:z*
(c+-90),end:z*(f+-90)}}}});M(I,"parts/PieSeries.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.defined,G=f.isNumber,z=f.pick,B=f.setAnimation,t=c.addEvent;f=c.CenteredSeriesMixin;var v=f.getStartAndEndRadians,C=c.merge,H=c.noop,y=c.Point,h=c.Series,n=c.seriesType,q=c.fireEvent;n("pie","line",{center:[null,null],clip:!1,colorByPoint:!0,dataLabels:{allowOverlap:!0,connectorPadding:5,distance:30,enabled:!0,formatter:function(){return this.point.isNull?void 0:this.point.name},
softConnector:!0,x:0,connectorShape:"fixedOffset",crookDistance:"70%"},fillColor:void 0,ignoreHiddenPoint:!0,inactiveOtherPoints:!0,legendType:"point",marker:null,size:null,showInLegend:!1,slicedOffset:10,stickyTracking:!1,tooltip:{followPointer:!0},borderColor:"#ffffff",borderWidth:1,lineWidth:void 0,states:{hover:{brightness:.1}}},{isCartesian:!1,requireSorting:!1,directTouch:!0,noSharedTooltip:!0,trackerGroups:["group","dataLabelsGroup"],axisTypes:[],pointAttribs:c.seriesTypes.column.prototype.pointAttribs,
animate:function(c){var b=this,a=b.points,d=b.startAngleRad;c||(a.forEach(function(a){var c=a.graphic,e=a.shapeArgs;c&&(c.attr({r:a.startR||b.center[3]/2,start:d,end:d}),c.animate({r:e.r,start:e.start,end:e.end},b.options.animation))}),b.animate=null)},hasData:function(){return!!this.processedXData.length},updateTotals:function(){var c,b=0,a=this.points,d=a.length,e=this.options.ignoreHiddenPoint;for(c=0;c<d;c++){var f=a[c];b+=e&&!f.visible?0:f.isNull?0:f.y}this.total=b;for(c=0;c<d;c++)f=a[c],f.percentage=
0<b&&(f.visible||!e)?f.y/b*100:0,f.total=b},generatePoints:function(){h.prototype.generatePoints.call(this);this.updateTotals()},getX:function(c,b,a){var d=this.center,e=this.radii?this.radii[a.index]:d[2]/2;return d[0]+(b?-1:1)*Math.cos(Math.asin(Math.max(Math.min((c-d[1])/(e+a.labelDistance),1),-1)))*(e+a.labelDistance)+(0<a.labelDistance?(b?-1:1)*this.options.dataLabels.padding:0)},translate:function(g){this.generatePoints();var b=0,a=this.options,d=a.slicedOffset,e=d+(a.borderWidth||0),f=v(a.startAngle,
a.endAngle),h=this.startAngleRad=f.start;f=(this.endAngleRad=f.end)-h;var n=this.points,p=a.dataLabels.distance;a=a.ignoreHiddenPoint;var u,k=n.length;g||(this.center=g=this.getCenter());for(u=0;u<k;u++){var r=n[u];var x=h+b*f;if(!a||r.visible)b+=r.percentage/100;var A=h+b*f;r.shapeType="arc";r.shapeArgs={x:g[0],y:g[1],r:g[2]/2,innerR:g[3]/2,start:Math.round(1E3*x)/1E3,end:Math.round(1E3*A)/1E3};r.labelDistance=z(r.options.dataLabels&&r.options.dataLabels.distance,p);r.labelDistance=c.relativeLength(r.labelDistance,
r.shapeArgs.r);this.maxLabelDistance=Math.max(this.maxLabelDistance||0,r.labelDistance);A=(A+x)/2;A>1.5*Math.PI?A-=2*Math.PI:A<-Math.PI/2&&(A+=2*Math.PI);r.slicedTranslation={translateX:Math.round(Math.cos(A)*d),translateY:Math.round(Math.sin(A)*d)};var w=Math.cos(A)*g[2]/2;var m=Math.sin(A)*g[2]/2;r.tooltipPos=[g[0]+.7*w,g[1]+.7*m];r.half=A<-Math.PI/2||A>Math.PI/2?1:0;r.angle=A;x=Math.min(e,r.labelDistance/5);r.labelPosition={natural:{x:g[0]+w+Math.cos(A)*r.labelDistance,y:g[1]+m+Math.sin(A)*r.labelDistance},
"final":{},alignment:0>r.labelDistance?"center":r.half?"right":"left",connectorPosition:{breakAt:{x:g[0]+w+Math.cos(A)*x,y:g[1]+m+Math.sin(A)*x},touchingSliceAt:{x:g[0]+w,y:g[1]+m}}}}q(this,"afterTranslate")},drawEmpty:function(){var c=this.options;if(0===this.total){var b=this.center[0];var a=this.center[1];this.graph||(this.graph=this.chart.renderer.circle(b,a,0).addClass("highcharts-graph").add(this.group));this.graph.animate({"stroke-width":c.borderWidth,cx:b,cy:a,r:this.center[2]/2,fill:c.fillColor||
"none",stroke:c.color||"#cccccc"})}else this.graph&&(this.graph=this.graph.destroy())},redrawPoints:function(){var c=this,b=c.chart,a=b.renderer,d,e,f,h,n=c.options.shadow;this.drawEmpty();!n||c.shadowGroup||b.styledMode||(c.shadowGroup=a.g("shadow").attr({zIndex:-1}).add(c.group));c.points.forEach(function(g){var l={};e=g.graphic;if(!g.isNull&&e){h=g.shapeArgs;d=g.getTranslate();if(!b.styledMode){var k=g.shadowGroup;n&&!k&&(k=g.shadowGroup=a.g("shadow").add(c.shadowGroup));k&&k.attr(d);f=c.pointAttribs(g,
g.selected&&"select")}g.delayedRendering?(e.setRadialReference(c.center).attr(h).attr(d),b.styledMode||e.attr(f).attr({"stroke-linejoin":"round"}).shadow(n,k),g.delayedRendering=!1):(e.setRadialReference(c.center),b.styledMode||C(!0,l,f),C(!0,l,h,d),e.animate(l));e.attr({visibility:g.visible?"inherit":"hidden"});e.addClass(g.getClassName())}else e&&(g.graphic=e.destroy())})},drawPoints:function(){var c=this.chart.renderer;this.points.forEach(function(b){b.graphic||(b.graphic=c[b.shapeType](b.shapeArgs).add(b.series.group),
b.delayedRendering=!0)})},searchPoint:H,sortByAngle:function(c,b){c.sort(function(a,d){return void 0!==a.angle&&(d.angle-a.angle)*b})},drawLegendSymbol:c.LegendSymbolMixin.drawRectangle,getCenter:f.getCenter,getSymbol:H,drawGraph:null},{init:function(){y.prototype.init.apply(this,arguments);var c=this;c.name=z(c.name,"Slice");var b=function(a){c.slice("select"===a.type)};t(c,"select",b);t(c,"unselect",b);return c},isValid:function(){return G(this.y)&&0<=this.y},setVisible:function(c,b){var a=this,
d=a.series,e=d.chart,f=d.options.ignoreHiddenPoint;b=z(b,f);c!==a.visible&&(a.visible=a.options.visible=c=void 0===c?!a.visible:c,d.options.data[d.data.indexOf(a)]=a.options,["graphic","dataLabel","connector","shadowGroup"].forEach(function(b){if(a[b])a[b][c?"show":"hide"](!0)}),a.legendItem&&e.legend.colorizeItem(a,c),c||"hover"!==a.state||a.setState(""),f&&(d.isDirty=!0),b&&e.redraw())},slice:function(c,b,a){var d=this.series;B(a,d.chart);z(b,!0);this.sliced=this.options.sliced=F(c)?c:!this.sliced;
d.options.data[d.data.indexOf(this)]=this.options;this.graphic.animate(this.getTranslate());this.shadowGroup&&this.shadowGroup.animate(this.getTranslate())},getTranslate:function(){return this.sliced?this.slicedTranslation:{translateX:0,translateY:0}},haloPath:function(c){var b=this.shapeArgs;return this.sliced||!this.visible?[]:this.series.chart.renderer.symbols.arc(b.x,b.y,b.r+c,b.r+c,{innerR:b.r-1,start:b.start,end:b.end})},connectorShapes:{fixedOffset:function(c,b,a){var d=b.breakAt;b=b.touchingSliceAt;
return["M",c.x,c.y].concat(a.softConnector?["C",c.x+("left"===c.alignment?-5:5),c.y,2*d.x-b.x,2*d.y-b.y,d.x,d.y]:["L",d.x,d.y]).concat(["L",b.x,b.y])},straight:function(c,b){b=b.touchingSliceAt;return["M",c.x,c.y,"L",b.x,b.y]},crookedLine:function(f,b,a){b=b.touchingSliceAt;var d=this.series,e=d.center[0],g=d.chart.plotWidth,h=d.chart.plotLeft;d=f.alignment;var n=this.shapeArgs.r;a=c.relativeLength(a.crookDistance,1);a="left"===d?e+n+(g+h-e-n)*(1-a):h+(e-n)*a;e=["L",a,f.y];if("left"===d?a>f.x||a<
b.x:a<f.x||a>b.x)e=[];return["M",f.x,f.y].concat(e).concat(["L",b.x,b.y])}},getConnectorPath:function(){var c=this.labelPosition,b=this.series.options.dataLabels,a=b.connectorShape,d=this.connectorShapes;d[a]&&(a=d[a]);return a.call(this,{x:c.final.x,y:c.final.y,alignment:c.alignment},c.connectorPosition,b)}});""});M(I,"parts/DataLabels.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.arrayMax,G=f.defined,z=f.extend,B=f.isArray,t=f.objectEach,v=f.pick,C=f.splat,H=c.format,
y=c.merge;f=c.noop;var h=c.relativeLength,n=c.Series,q=c.seriesTypes,g=c.stableSort;c.distribute=function(b,a,d){function e(a,b){return a.target-b.target}var f,h=!0,n=b,p=[];var u=0;var k=n.reducedLen||a;for(f=b.length;f--;)u+=b[f].size;if(u>k){g(b,function(a,b){return(b.rank||0)-(a.rank||0)});for(u=f=0;u<=k;)u+=b[f].size,f++;p=b.splice(f-1,b.length)}g(b,e);for(b=b.map(function(a){return{size:a.size,targets:[a.target],align:v(a.align,.5)}});h;){for(f=b.length;f--;)h=b[f],u=(Math.min.apply(0,h.targets)+
Math.max.apply(0,h.targets))/2,h.pos=Math.min(Math.max(0,u-h.size*h.align),a-h.size);f=b.length;for(h=!1;f--;)0<f&&b[f-1].pos+b[f-1].size>b[f].pos&&(b[f-1].size+=b[f].size,b[f-1].targets=b[f-1].targets.concat(b[f].targets),b[f-1].align=.5,b[f-1].pos+b[f-1].size>a&&(b[f-1].pos=a-b[f-1].size),b.splice(f,1),h=!0)}n.push.apply(n,p);f=0;b.some(function(b){var e=0;if(b.targets.some(function(){n[f].pos=b.pos+e;if(Math.abs(n[f].pos-n[f].target)>d)return n.slice(0,f+1).forEach(function(a){delete a.pos}),n.reducedLen=
(n.reducedLen||a)-.1*a,n.reducedLen>.1*a&&c.distribute(n,a,d),!0;e+=n[f].size;f++}))return!0});g(n,e)};n.prototype.drawDataLabels=function(){function b(a,b){var d=b.filter;return d?(b=d.operator,a=a[d.property],d=d.value,">"===b&&a>d||"<"===b&&a<d||">="===b&&a>=d||"<="===b&&a<=d||"=="===b&&a==d||"==="===b&&a===d?!0:!1):!0}function a(a,b){var d=[],c;if(B(a)&&!B(b))d=a.map(function(a){return y(a,b)});else if(B(b)&&!B(a))d=b.map(function(b){return y(a,b)});else if(B(a)||B(b))for(c=Math.max(a.length,
b.length);c--;)d[c]=y(a[c],b[c]);else d=y(a,b);return d}var d=this,e=d.chart,f=d.options,g=f.dataLabels,h=d.points,p,n=d.hasRendered||0,k=c.animObject(f.animation).duration,r=Math.min(k,200),q=!e.renderer.forExport&&v(g.defer,0<r),A=e.renderer;g=a(a(e.options.plotOptions&&e.options.plotOptions.series&&e.options.plotOptions.series.dataLabels,e.options.plotOptions&&e.options.plotOptions[d.type]&&e.options.plotOptions[d.type].dataLabels),g);c.fireEvent(this,"drawDataLabels");if(B(g)||g.enabled||d._hasPointLabels){var w=
d.plotGroup("dataLabelsGroup","data-labels",q&&!n?"hidden":"inherit",g.zIndex||6);q&&(w.attr({opacity:+n}),n||setTimeout(function(){var a=d.dataLabelsGroup;a&&(d.visible&&w.show(!0),a[f.animation?"animate":"attr"]({opacity:1},{duration:r}))},k-r));h.forEach(function(c){p=C(a(g,c.dlOptions||c.options&&c.options.dataLabels));p.forEach(function(a,g){var k=a.enabled&&(!c.isNull||c.dataLabelOnNull)&&b(c,a),h=c.dataLabels?c.dataLabels[g]:c.dataLabel,l=c.connectors?c.connectors[g]:c.connector,p=v(a.distance,
c.labelDistance),m=!h;if(k){var r=c.getLabelConfig();var n=v(a[c.formatPrefix+"Format"],a.format);r=G(n)?H(n,r,e.time):(a[c.formatPrefix+"Formatter"]||a.formatter).call(r,a);n=a.style;var u=a.rotation;e.styledMode||(n.color=v(a.color,n.color,d.color,"#000000"),"contrast"===n.color&&(c.contrastColor=A.getContrast(c.color||d.color),n.color=!G(p)&&a.inside||0>p||f.stacking?c.contrastColor:"#000000"),f.cursor&&(n.cursor=f.cursor));var q={r:a.borderRadius||0,rotation:u,padding:a.padding,zIndex:1};e.styledMode||
(q.fill=a.backgroundColor,q.stroke=a.borderColor,q["stroke-width"]=a.borderWidth);t(q,function(a,b){void 0===a&&delete q[b]})}!h||k&&G(r)?k&&G(r)&&(h?q.text=r:(c.dataLabels=c.dataLabels||[],h=c.dataLabels[g]=u?A.text(r,0,-9999).addClass("highcharts-data-label"):A.label(r,0,-9999,a.shape,null,null,a.useHTML,null,"data-label"),g||(c.dataLabel=h),h.addClass(" highcharts-data-label-color-"+c.colorIndex+" "+(a.className||"")+(a.useHTML?" highcharts-tracker":""))),h.options=a,h.attr(q),e.styledMode||h.css(n).shadow(a.shadow),
h.added||h.add(w),a.textPath&&!a.useHTML&&h.setTextPath(c.getDataLabelPath&&c.getDataLabelPath(h)||c.graphic,a.textPath),d.alignDataLabel(c,h,a,null,m)):(c.dataLabel=c.dataLabel&&c.dataLabel.destroy(),c.dataLabels&&(1===c.dataLabels.length?delete c.dataLabels:delete c.dataLabels[g]),g||delete c.dataLabel,l&&(c.connector=c.connector.destroy(),c.connectors&&(1===c.connectors.length?delete c.connectors:delete c.connectors[g])))})})}c.fireEvent(this,"afterDrawDataLabels")};n.prototype.alignDataLabel=
function(b,a,d,c,f){var e=this.chart,g=this.isCartesian&&e.inverted,h=v(b.dlBox&&b.dlBox.centerX,b.plotX,-9999),l=v(b.plotY,-9999),k=a.getBBox(),n=d.rotation,q=d.align,A=this.visible&&(b.series.forceDL||e.isInsidePlot(h,Math.round(l),g)||c&&e.isInsidePlot(h,g?c.x+1:c.y+c.height-1,g)),w="justify"===v(d.overflow,"justify");if(A){var m=e.renderer.fontMetrics(e.styledMode?void 0:d.style.fontSize,a).b;c=z({x:g?this.yAxis.len-l:h,y:Math.round(g?this.xAxis.len-h:l),width:0,height:0},c);z(d,{width:k.width,
height:k.height});n?(w=!1,h=e.renderer.rotCorr(m,n),h={x:c.x+d.x+c.width/2+h.x,y:c.y+d.y+{top:0,middle:.5,bottom:1}[d.verticalAlign]*c.height},a[f?"attr":"animate"](h).attr({align:q}),l=(n+720)%360,l=180<l&&360>l,"left"===q?h.y-=l?k.height:0:"center"===q?(h.x-=k.width/2,h.y-=k.height/2):"right"===q&&(h.x-=k.width,h.y-=l?0:k.height),a.placed=!0,a.alignAttr=h):(a.align(d,null,c),h=a.alignAttr);w&&0<=c.height?this.justifyDataLabel(a,d,h,k,c,f):v(d.crop,!0)&&(A=e.isInsidePlot(h.x,h.y)&&e.isInsidePlot(h.x+
k.width,h.y+k.height));if(d.shape&&!n)a[f?"attr":"animate"]({anchorX:g?e.plotWidth-b.plotY:b.plotX,anchorY:g?e.plotHeight-b.plotX:b.plotY})}A||(a.hide(!0),a.placed=!1)};n.prototype.justifyDataLabel=function(b,a,d,c,f,g){var e=this.chart,h=a.align,l=a.verticalAlign,k=b.box?0:b.padding||0;var n=d.x+k;if(0>n){"right"===h?(a.align="left",a.inside=!0):a.x=-n;var q=!0}n=d.x+c.width-k;n>e.plotWidth&&("left"===h?(a.align="right",a.inside=!0):a.x=e.plotWidth-n,q=!0);n=d.y+k;0>n&&("bottom"===l?(a.verticalAlign=
"top",a.inside=!0):a.y=-n,q=!0);n=d.y+c.height-k;n>e.plotHeight&&("top"===l?(a.verticalAlign="bottom",a.inside=!0):a.y=e.plotHeight-n,q=!0);q&&(b.placed=!g,b.align(a,null,f));return q};q.pie&&(q.pie.prototype.dataLabelPositioners={radialDistributionY:function(b){return b.top+b.distributeBox.pos},radialDistributionX:function(b,a,d,c){return b.getX(d<a.top+2||d>a.bottom-2?c:d,a.half,a)},justify:function(b,a,d){return d[0]+(b.half?-1:1)*(a+b.labelDistance)},alignToPlotEdges:function(b,a,d,c){b=b.getBBox().width;
return a?b+c:d-b-c},alignToConnectors:function(b,a,d,c){var e=0,f;b.forEach(function(a){f=a.dataLabel.getBBox().width;f>e&&(e=f)});return a?e+c:d-e-c}},q.pie.prototype.drawDataLabels=function(){var b=this,a=b.data,d,e=b.chart,f=b.options.dataLabels,g=f.connectorPadding,h,p=e.plotWidth,u=e.plotHeight,k=e.plotLeft,r=Math.round(e.chartWidth/3),q,A=b.center,w=A[2]/2,m=A[1],t,z,C,B,H=[[],[]],I,D,N,M,R=[0,0,0,0],P=b.dataLabelPositioners,W;b.visible&&(f.enabled||b._hasPointLabels)&&(a.forEach(function(a){a.dataLabel&&
a.visible&&a.dataLabel.shortened&&(a.dataLabel.attr({width:"auto"}).css({width:"auto",textOverflow:"clip"}),a.dataLabel.shortened=!1)}),n.prototype.drawDataLabels.apply(b),a.forEach(function(a){a.dataLabel&&(a.visible?(H[a.half].push(a),a.dataLabel._pos=null,!G(f.style.width)&&!G(a.options.dataLabels&&a.options.dataLabels.style&&a.options.dataLabels.style.width)&&a.dataLabel.getBBox().width>r&&(a.dataLabel.css({width:.7*r}),a.dataLabel.shortened=!0)):(a.dataLabel=a.dataLabel.destroy(),a.dataLabels&&
1===a.dataLabels.length&&delete a.dataLabels))}),H.forEach(function(a,h){var l=a.length,n=[],r;if(l){b.sortByAngle(a,h-.5);if(0<b.maxLabelDistance){var q=Math.max(0,m-w-b.maxLabelDistance);var x=Math.min(m+w+b.maxLabelDistance,e.plotHeight);a.forEach(function(a){0<a.labelDistance&&a.dataLabel&&(a.top=Math.max(0,m-w-a.labelDistance),a.bottom=Math.min(m+w+a.labelDistance,e.plotHeight),r=a.dataLabel.getBBox().height||21,a.distributeBox={target:a.labelPosition.natural.y-a.top+r/2,size:r,rank:a.y},n.push(a.distributeBox))});
q=x+r-q;c.distribute(n,q,q/5)}for(M=0;M<l;M++){d=a[M];C=d.labelPosition;t=d.dataLabel;N=!1===d.visible?"hidden":"inherit";D=q=C.natural.y;n&&G(d.distributeBox)&&(void 0===d.distributeBox.pos?N="hidden":(B=d.distributeBox.size,D=P.radialDistributionY(d)));delete d.positionIndex;if(f.justify)I=P.justify(d,w,A);else switch(f.alignTo){case "connectors":I=P.alignToConnectors(a,h,p,k);break;case "plotEdges":I=P.alignToPlotEdges(t,h,p,k);break;default:I=P.radialDistributionX(b,d,D,q)}t._attr={visibility:N,
align:C.alignment};t._pos={x:I+f.x+({left:g,right:-g}[C.alignment]||0),y:D+f.y-10};C.final.x=I;C.final.y=D;v(f.crop,!0)&&(z=t.getBBox().width,q=null,I-z<g&&1===h?(q=Math.round(z-I+g),R[3]=Math.max(q,R[3])):I+z>p-g&&0===h&&(q=Math.round(I+z-p+g),R[1]=Math.max(q,R[1])),0>D-B/2?R[0]=Math.max(Math.round(-D+B/2),R[0]):D+B/2>u&&(R[2]=Math.max(Math.round(D+B/2-u),R[2])),t.sideOverflow=q)}}}),0===F(R)||this.verifyDataLabelOverflow(R))&&(this.placeDataLabels(),this.points.forEach(function(a){W=y(f,a.options.dataLabels);
if(h=v(W.connectorWidth,1)){var d;q=a.connector;if((t=a.dataLabel)&&t._pos&&a.visible&&0<a.labelDistance){N=t._attr.visibility;if(d=!q)a.connector=q=e.renderer.path().addClass("highcharts-data-label-connector  highcharts-color-"+a.colorIndex+(a.className?" "+a.className:"")).add(b.dataLabelsGroup),e.styledMode||q.attr({"stroke-width":h,stroke:W.connectorColor||a.color||"#666666"});q[d?"attr":"animate"]({d:a.getConnectorPath()});q.attr("visibility",N)}else q&&(a.connector=q.destroy())}}))},q.pie.prototype.placeDataLabels=
function(){this.points.forEach(function(b){var a=b.dataLabel,d;a&&b.visible&&((d=a._pos)?(a.sideOverflow&&(a._attr.width=Math.max(a.getBBox().width-a.sideOverflow,0),a.css({width:a._attr.width+"px",textOverflow:(this.options.dataLabels.style||{}).textOverflow||"ellipsis"}),a.shortened=!0),a.attr(a._attr),a[a.moved?"animate":"attr"](d),a.moved=!0):a&&a.attr({y:-9999}));delete b.distributeBox},this)},q.pie.prototype.alignDataLabel=f,q.pie.prototype.verifyDataLabelOverflow=function(b){var a=this.center,
d=this.options,c=d.center,f=d.minSize||80,g=null!==d.size;if(!g){if(null!==c[0])var n=Math.max(a[2]-Math.max(b[1],b[3]),f);else n=Math.max(a[2]-b[1]-b[3],f),a[0]+=(b[3]-b[1])/2;null!==c[1]?n=Math.max(Math.min(n,a[2]-Math.max(b[0],b[2])),f):(n=Math.max(Math.min(n,a[2]-b[0]-b[2]),f),a[1]+=(b[0]-b[2])/2);n<a[2]?(a[2]=n,a[3]=Math.min(h(d.innerSize||0,n),n),this.translate(a),this.drawDataLabels&&this.drawDataLabels()):g=!0}return g});q.column&&(q.column.prototype.alignDataLabel=function(b,a,d,c,f){var e=
this.chart.inverted,g=b.series,h=b.dlBox||b.shapeArgs,l=v(b.below,b.plotY>v(this.translatedThreshold,g.yAxis.len)),k=v(d.inside,!!this.options.stacking);h&&(c=y(h),0>c.y&&(c.height+=c.y,c.y=0),h=c.y+c.height-g.yAxis.len,0<h&&(c.height-=h),e&&(c={x:g.yAxis.len-c.y-c.height,y:g.xAxis.len-c.x-c.width,width:c.height,height:c.width}),k||(e?(c.x+=l?0:c.width,c.width=0):(c.y+=l?c.height:0,c.height=0)));d.align=v(d.align,!e||k?"center":l?"right":"left");d.verticalAlign=v(d.verticalAlign,e||k?"middle":l?"top":
"bottom");n.prototype.alignDataLabel.call(this,b,a,d,c,f);d.inside&&b.contrastColor&&a.css({color:b.contrastColor})})});M(I,"modules/overlapping-datalabels.src.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.isArray,G=f.objectEach,z=f.pick;f=c.Chart;var B=c.addEvent,t=c.fireEvent;B(f,"render",function(){var c=[];(this.labelCollectors||[]).forEach(function(f){c=c.concat(f())});(this.yAxis||[]).forEach(function(f){f.options.stackLabels&&!f.options.stackLabels.allowOverlap&&
G(f.stacks,function(f){G(f,function(f){c.push(f.label)})})});(this.series||[]).forEach(function(f){var v=f.options.dataLabels;f.visible&&(!1!==v.enabled||f._hasPointLabels)&&f.points.forEach(function(f){f.visible&&(F(f.dataLabels)?f.dataLabels:f.dataLabel?[f.dataLabel]:[]).forEach(function(h){var n=h.options;h.labelrank=z(n.labelrank,f.labelrank,f.shapeArgs&&f.shapeArgs.height);n.allowOverlap||c.push(h)})})});this.hideOverlappingLabels(c)});f.prototype.hideOverlappingLabels=function(c){var f=this,
v=c.length,y=f.renderer,h,n,q;var g=function(a){var b=a.box?0:a.padding||0;var d=0;if(a&&(!a.alignAttr||a.placed)){var c=a.attr("x");var f=a.attr("y");c="number"===typeof c&&"number"===typeof f?{x:c,y:f}:a.alignAttr;f=a.parentGroup;a.width||(d=a.getBBox(),a.width=d.width,a.height=d.height,d=y.fontMetrics(null,a.element).h);return{x:c.x+(f.translateX||0)+b,y:c.y+(f.translateY||0)+b-d,width:a.width-2*b,height:a.height-2*b}}};for(n=0;n<v;n++)if(h=c[n])h.oldOpacity=h.opacity,h.newOpacity=1,h.absoluteBox=
g(h);c.sort(function(a,b){return(b.labelrank||0)-(a.labelrank||0)});for(n=0;n<v;n++){var b=(g=c[n])&&g.absoluteBox;for(h=n+1;h<v;++h){var a=(q=c[h])&&q.absoluteBox;!b||!a||g===q||0===g.newOpacity||0===q.newOpacity||a.x>b.x+b.width||a.x+a.width<b.x||a.y>b.y+b.height||a.y+a.height<b.y||((g.labelrank<q.labelrank?g:q).newOpacity=0)}}c.forEach(function(a){var b;if(a){var d=a.newOpacity;a.oldOpacity!==d&&(a.alignAttr&&a.placed?(d?a.show(!0):b=function(){a.hide(!0);a.placed=!1},a.alignAttr.opacity=d,a[a.isOld?
"animate":"attr"](a.alignAttr,null,b),t(f,"afterHideOverlappingLabels")):a.attr({opacity:d}));a.isOld=!0}})}});M(I,"parts/Interaction.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.defined,G=f.extend,z=f.isArray,B=f.isObject,t=f.objectEach,v=f.pick,C=c.addEvent;f=c.Chart;var H=c.createElement,y=c.css,h=c.defaultOptions,n=c.defaultPlotOptions,q=c.fireEvent,g=c.hasTouch,b=c.Legend,a=c.merge,d=c.Point,e=c.Series,l=c.seriesTypes,I=c.svg;var E=c.TrackerMixin={drawTrackerPoint:function(){var a=
this,b=a.chart,d=b.pointer,c=function(a){var b=d.getPointFromEvent(a);void 0!==b&&(d.isDirectTouch=!0,b.onMouseOver(a))},e;a.points.forEach(function(a){e=z(a.dataLabels)?a.dataLabels:a.dataLabel?[a.dataLabel]:[];a.graphic&&(a.graphic.element.point=a);e.forEach(function(b){b.div?b.div.point=a:b.element.point=a})});a._hasTracking||(a.trackerGroups.forEach(function(e){if(a[e]){a[e].addClass("highcharts-tracker").on("mouseover",c).on("mouseout",function(a){d.onTrackerMouseOut(a)});if(g)a[e].on("touchstart",
c);!b.styledMode&&a.options.cursor&&a[e].css(y).css({cursor:a.options.cursor})}}),a._hasTracking=!0);q(this,"afterDrawTracker")},drawTrackerGraph:function(){var a=this,b=a.options,d=b.trackByArea,c=[].concat(d?a.areaPath:a.graphPath),e=c.length,f=a.chart,h=f.pointer,l=f.renderer,n=f.options.tooltip.snap,v=a.tracker,t,y=function(){if(f.hoverSeries!==a)a.onMouseOver()},z="rgba(192,192,192,"+(I?.0001:.002)+")";if(e&&!d)for(t=e+1;t--;)"M"===c[t]&&c.splice(t+1,0,c[t+1]-n,c[t+2],"L"),(t&&"M"===c[t]||t===
e)&&c.splice(t,0,"L",c[t-2]+n,c[t-1]);v?v.attr({d:c}):a.graph&&(a.tracker=l.path(c).attr({visibility:a.visible?"visible":"hidden",zIndex:2}).addClass(d?"highcharts-tracker-area":"highcharts-tracker-line").add(a.group),f.styledMode||a.tracker.attr({"stroke-linejoin":"round",stroke:z,fill:d?z:"none","stroke-width":a.graph.strokeWidth()+(d?0:2*n)}),[a.tracker,a.markerGroup].forEach(function(a){a.addClass("highcharts-tracker").on("mouseover",y).on("mouseout",function(a){h.onTrackerMouseOut(a)});b.cursor&&
!f.styledMode&&a.css({cursor:b.cursor});if(g)a.on("touchstart",y)}));q(this,"afterDrawTracker")}};l.column&&(l.column.prototype.drawTracker=E.drawTrackerPoint);l.pie&&(l.pie.prototype.drawTracker=E.drawTrackerPoint);l.scatter&&(l.scatter.prototype.drawTracker=E.drawTrackerPoint);G(b.prototype,{setItemEvents:function(b,c,e){var f=this,g=f.chart.renderer.boxWrapper,k=b instanceof d,h="highcharts-legend-"+(k?"point":"series")+"-active",l=f.chart.styledMode;(e?c:b.legendGroup).on("mouseover",function(){b.visible&&
f.allItems.forEach(function(a){b!==a&&a.setState("inactive",!k)});b.setState("hover");b.visible&&g.addClass(h);l||c.css(f.options.itemHoverStyle)}).on("mouseout",function(){f.chart.styledMode||c.css(a(b.visible?f.itemStyle:f.itemHiddenStyle));f.allItems.forEach(function(a){b!==a&&a.setState("",!k)});g.removeClass(h);b.setState()}).on("click",function(a){var c=function(){b.setVisible&&b.setVisible();f.allItems.forEach(function(a){b!==a&&a.setState(b.visible?"inactive":"",!k)})};g.removeClass(h);a=
{browserEvent:a};b.firePointEvent?b.firePointEvent("legendItemClick",a,c):q(b,"legendItemClick",a,c)})},createCheckboxForItem:function(a){a.checkbox=H("input",{type:"checkbox",className:"highcharts-legend-checkbox",checked:a.selected,defaultChecked:a.selected},this.options.itemCheckboxStyle,this.chart.container);C(a.checkbox,"click",function(b){q(a.series||a,"checkboxClick",{checked:b.target.checked,item:a},function(){a.select()})})}});G(f.prototype,{showResetZoom:function(){function a(){b.zoomOut()}
var b=this,c=h.lang,d=b.options.chart.resetZoomButton,e=d.theme,f=e.states,g="chart"===d.relativeTo||"spaceBox"===d.relativeTo?null:"plotBox";q(this,"beforeShowResetZoom",null,function(){b.resetZoomButton=b.renderer.button(c.resetZoom,null,null,a,e,f&&f.hover).attr({align:d.position.align,title:c.resetZoomTitle}).addClass("highcharts-reset-zoom").add().align(d.position,!1,g)});q(this,"afterShowResetZoom")},zoomOut:function(){q(this,"selection",{resetSelection:!0},this.zoom)},zoom:function(a){var b=
this,c,d=b.pointer,e=!1,f=b.inverted?d.mouseDownX:d.mouseDownY;!a||a.resetSelection?(b.axes.forEach(function(a){c=a.zoom()}),d.initiated=!1):a.xAxis.concat(a.yAxis).forEach(function(a){var g=a.axis,k=b.inverted?g.left:g.top,h=b.inverted?k+g.width:k+g.height,l=g.isXAxis,m=!1;if(!l&&f>=k&&f<=h||l||!F(f))m=!0;d[l?"zoomX":"zoomY"]&&m&&(c=g.zoom(a.min,a.max),g.displayBtn&&(e=!0))});var g=b.resetZoomButton;e&&!g?b.showResetZoom():!e&&B(g)&&(b.resetZoomButton=g.destroy());c&&b.redraw(v(b.options.chart.animation,
a&&a.animation,100>b.pointCount))},pan:function(a,b){var c=this,d=c.hoverPoints,e;q(this,"pan",{originalEvent:a},function(){d&&d.forEach(function(a){a.setState()});("xy"===b?[1,0]:[1]).forEach(function(b){b=c[b?"xAxis":"yAxis"][0];var d=b.horiz,f=a[d?"chartX":"chartY"];d=d?"mouseDownX":"mouseDownY";var g=c[d],k=(b.pointRange||0)/2,h=b.reversed&&!c.inverted||!b.reversed&&c.inverted?-1:1,l=b.getExtremes(),p=b.toValue(g-f,!0)+k*h;h=b.toValue(g+b.len-f,!0)-k*h;var n=h<p;g=n?h:p;p=n?p:h;h=Math.min(l.dataMin,
k?l.min:b.toValue(b.toPixels(l.min)-b.minPixelPadding));k=Math.max(l.dataMax,k?l.max:b.toValue(b.toPixels(l.max)+b.minPixelPadding));n=h-g;0<n&&(p+=n,g=h);n=p-k;0<n&&(p=k,g-=n);b.series.length&&g!==l.min&&p!==l.max&&(b.setExtremes(g,p,!1,!1,{trigger:"pan"}),e=!0);c[d]=f});e&&c.redraw(!1);y(c.container,{cursor:"move"})})}});G(d.prototype,{select:function(a,b){var c=this,d=c.series,e=d.chart;this.selectedStaging=a=v(a,!c.selected);c.firePointEvent(a?"select":"unselect",{accumulate:b},function(){c.selected=
c.options.selected=a;d.options.data[d.data.indexOf(c)]=c.options;c.setState(a&&"select");b||e.getSelectedPoints().forEach(function(a){var b=a.series;a.selected&&a!==c&&(a.selected=a.options.selected=!1,b.options.data[b.data.indexOf(a)]=a.options,a.setState(e.hoverPoints&&b.options.inactiveOtherPoints?"inactive":""),a.firePointEvent("unselect"))})});delete this.selectedStaging},onMouseOver:function(a){var b=this.series.chart,c=b.pointer;a=a?c.normalize(a):c.getChartCoordinatesFromPoint(this,b.inverted);
c.runPointActions(a,this)},onMouseOut:function(){var a=this.series.chart;this.firePointEvent("mouseOut");this.series.options.inactiveOtherPoints||(a.hoverPoints||[]).forEach(function(a){a.setState()});a.hoverPoints=a.hoverPoint=null},importEvents:function(){if(!this.hasImportedEvents){var b=this,d=a(b.series.options.point,b.options).events;b.events=d;t(d,function(a,d){c.isFunction(a)&&C(b,d,a)});this.hasImportedEvents=!0}},setState:function(a,b){var c=this.series,d=this.state,e=c.options.states[a||
"normal"]||{},f=n[c.type].marker&&c.options.marker,g=f&&!1===f.enabled,h=f&&f.states&&f.states[a||"normal"]||{},l=!1===h.enabled,p=c.stateMarkerGraphic,u=this.marker||{},t=c.chart,y=c.halo,z,B=f&&c.markerAttribs;a=a||"";if(!(a===this.state&&!b||this.selected&&"select"!==a||!1===e.enabled||a&&(l||g&&!1===h.enabled)||a&&u.states&&u.states[a]&&!1===u.states[a].enabled)){this.state=a;B&&(z=c.markerAttribs(this,a));if(this.graphic){d&&this.graphic.removeClass("highcharts-point-"+d);a&&this.graphic.addClass("highcharts-point-"+
a);if(!t.styledMode){var C=c.pointAttribs(this,a);var H=v(t.options.chart.animation,e.animation);c.options.inactiveOtherPoints&&((this.dataLabels||[]).forEach(function(a){a&&a.animate({opacity:C.opacity},H)}),this.connector&&this.connector.animate({opacity:C.opacity},H));this.graphic.animate(C,H)}z&&this.graphic.animate(z,v(t.options.chart.animation,h.animation,f.animation));p&&p.hide()}else{if(a&&h){d=u.symbol||c.symbol;p&&p.currentSymbol!==d&&(p=p.destroy());if(z)if(p)p[b?"animate":"attr"]({x:z.x,
y:z.y});else d&&(c.stateMarkerGraphic=p=t.renderer.symbol(d,z.x,z.y,z.width,z.height).add(c.markerGroup),p.currentSymbol=d);!t.styledMode&&p&&p.attr(c.pointAttribs(this,a))}p&&(p[a&&this.isInside?"show":"hide"](),p.element.point=this)}a=e.halo;e=(p=this.graphic||p)&&p.visibility||"inherit";a&&a.size&&p&&"hidden"!==e?(y||(c.halo=y=t.renderer.path().add(p.parentGroup)),y.show()[b?"animate":"attr"]({d:this.haloPath(a.size)}),y.attr({"class":"highcharts-halo highcharts-color-"+v(this.colorIndex,c.colorIndex)+
(this.className?" "+this.className:""),visibility:e,zIndex:-1}),y.point=this,t.styledMode||y.attr(G({fill:this.color||c.color,"fill-opacity":a.opacity},a.attributes))):y&&y.point&&y.point.haloPath&&y.animate({d:y.point.haloPath(0)},null,y.hide);q(this,"afterSetState")}},haloPath:function(a){return this.series.chart.renderer.symbols.circle(Math.floor(this.plotX)-a,this.plotY-a,2*a,2*a)}});G(e.prototype,{onMouseOver:function(){var a=this.chart,b=a.hoverSeries;if(b&&b!==this)b.onMouseOut();this.options.events.mouseOver&&
q(this,"mouseOver");this.setState("hover");a.hoverSeries=this},onMouseOut:function(){var a=this.options,b=this.chart,c=b.tooltip,d=b.hoverPoint;b.hoverSeries=null;if(d)d.onMouseOut();this&&a.events.mouseOut&&q(this,"mouseOut");!c||this.stickyTracking||c.shared&&!this.noSharedTooltip||c.hide();b.series.forEach(function(a){a.setState("",!0)})},setState:function(a,b){var c=this,d=c.options,e=c.graph,f=d.inactiveOtherPoints,g=d.states,h=d.lineWidth,l=d.opacity,n=v(g[a||"normal"]&&g[a||"normal"].animation,
c.chart.options.chart.animation);d=0;a=a||"";if(c.state!==a&&([c.group,c.markerGroup,c.dataLabelsGroup].forEach(function(b){b&&(c.state&&b.removeClass("highcharts-series-"+c.state),a&&b.addClass("highcharts-series-"+a))}),c.state=a,!c.chart.styledMode)){if(g[a]&&!1===g[a].enabled)return;a&&(h=g[a].lineWidth||h+(g[a].lineWidthPlus||0),l=v(g[a].opacity,l));if(e&&!e.dashstyle)for(g={"stroke-width":h},e.animate(g,n);c["zone-graph-"+d];)c["zone-graph-"+d].attr(g),d+=1;f||[c.group,c.markerGroup,c.dataLabelsGroup,
c.labelBySeries].forEach(function(a){a&&a.animate({opacity:l},n)})}b&&f&&c.points&&c.setAllPointsToState(a)},setAllPointsToState:function(a){this.points.forEach(function(b){b.setState&&b.setState(a)})},setVisible:function(a,b){var c=this,d=c.chart,e=c.legendItem,f=d.options.chart.ignoreHiddenSeries,g=c.visible;var h=(c.visible=a=c.options.visible=c.userOptions.visible=void 0===a?!g:a)?"show":"hide";["group","dataLabelsGroup","markerGroup","tracker","tt"].forEach(function(a){if(c[a])c[a][h]()});if(d.hoverSeries===
c||(d.hoverPoint&&d.hoverPoint.series)===c)c.onMouseOut();e&&d.legend.colorizeItem(c,a);c.isDirty=!0;c.options.stacking&&d.series.forEach(function(a){a.options.stacking&&a.visible&&(a.isDirty=!0)});c.linkedSeries.forEach(function(b){b.setVisible(a,!1)});f&&(d.isDirtyBox=!0);q(c,h);!1!==b&&d.redraw()},show:function(){this.setVisible(!0)},hide:function(){this.setVisible(!1)},select:function(a){this.selected=a=this.options.selected=void 0===a?!this.selected:a;this.checkbox&&(this.checkbox.checked=a);
q(this,a?"select":"unselect")},drawTracker:E.drawTrackerGraph})});M(I,"parts/Responsive.js",[I["parts/Globals.js"],I["parts/Utilities.js"]],function(c,f){var F=f.isArray,G=f.isObject,z=f.objectEach,B=f.pick,t=f.splat;f=c.Chart;f.prototype.setResponsive=function(f,t){var v=this.options.responsive,y=[],h=this.currentResponsive;!t&&v&&v.rules&&v.rules.forEach(function(f){void 0===f._id&&(f._id=c.uniqueKey());this.matchResponsiveRule(f,y)},this);t=c.merge.apply(0,y.map(function(f){return c.find(v.rules,
function(c){return c._id===f}).chartOptions}));t.isResponsiveOptions=!0;y=y.toString()||void 0;y!==(h&&h.ruleIds)&&(h&&this.update(h.undoOptions,f,!0),y?(h=this.currentOptions(t),h.isResponsiveOptions=!0,this.currentResponsive={ruleIds:y,mergedOptions:t,undoOptions:h},this.update(t,f,!0)):this.currentResponsive=void 0)};f.prototype.matchResponsiveRule=function(c,f){var t=c.condition;(t.callback||function(){return this.chartWidth<=B(t.maxWidth,Number.MAX_VALUE)&&this.chartHeight<=B(t.maxHeight,Number.MAX_VALUE)&&
this.chartWidth>=B(t.minWidth,0)&&this.chartHeight>=B(t.minHeight,0)}).call(this)&&f.push(c._id)};f.prototype.currentOptions=function(c){function f(c,n,q,g){var b;z(c,function(a,c){if(!g&&-1<v.collectionsWithUpdate.indexOf(c))for(a=t(a),q[c]=[],b=0;b<a.length;b++)n[c][b]&&(q[c][b]={},f(a[b],n[c][b],q[c][b],g+1));else G(a)?(q[c]=F(a)?[]:{},f(a,n[c]||{},q[c],g+1)):q[c]=void 0===n[c]?null:n[c]})}var v=this,y={};f(c,this.options,y,0);return y}});M(I,"masters/highcharts.src.js",[I["parts/Globals.js"],
I["parts/Utilities.js"]],function(c,f){var F=f.extend;F(c,{arrayMax:f.arrayMax,arrayMin:f.arrayMin,attr:f.attr,defined:f.defined,erase:f.erase,extend:f.extend,isArray:f.isArray,isClass:f.isClass,isDOMElement:f.isDOMElement,isNumber:f.isNumber,isObject:f.isObject,isString:f.isString,objectEach:f.objectEach,pick:f.pick,pInt:f.pInt,setAnimation:f.setAnimation,splat:f.splat,syncTimeout:f.syncTimeout});return c});I["masters/highcharts.src.js"]._modules=I;return I["masters/highcharts.src.js"]});

// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//










;
