/*!

 handlebars v1.1.2

Copyright (C) 2011 by Yehuda Katz

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

@license
*/
var Handlebars=function(){var r=function(){"use strict";function r(r){this.string=r}var e;return r.prototype.toString=function(){return""+this.string},e=r}(),e=function(r){"use strict";function e(r){return s[r]||"&amp;"}function t(r,e){for(var t in e)e.hasOwnProperty(t)&&(r[t]=e[t])}function n(r){return r instanceof a?r.toString():r||0===r?(r=""+r,u.test(r)?r.replace(l,e):r):""}function i(r){return r||0===r?f(r)&&0===r.length?!0:!1:!0}var o={},a=r,s={"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#x27;","`":"&#x60;"},l=/[&<>"'`]/g,u=/[&<>"'`]/;o.extend=t;var c=Object.prototype.toString;o.toString=c;var p=function(r){return"function"==typeof r};p(/x/)&&(p=function(r){return"function"==typeof r&&"[object Function]"===c.call(r)});var p;o.isFunction=p;var f=Array.isArray||function(r){return r&&"object"==typeof r?"[object Array]"===c.call(r):!1};return o.isArray=f,o.escapeExpression=n,o.isEmpty=i,o}(r),t=function(){"use strict";function r(){for(var r=Error.prototype.constructor.apply(this,arguments),e=0;e<t.length;e++)this[t[e]]=r[t[e]]}var e,t=["description","fileName","lineNumber","message","name","number","stack"];return r.prototype=new Error,e=r}(),n=function(r,e){"use strict";function t(r,e){this.helpers=r||{},this.partials=e||{},n(this)}function n(r){r.registerHelper("helperMissing",function(r){if(2===arguments.length)return void 0;throw new Error("Missing helper: '"+r+"'")}),r.registerHelper("blockHelperMissing",function(e,t){var n=t.inverse||function(){},i=t.fn;return f(e)&&(e=e.call(this)),e===!0?i(this):e===!1||null==e?n(this):p(e)?e.length>0?r.helpers.each(e,t):n(this):i(e)}),r.registerHelper("each",function(r,e){var t,n=e.fn,i=e.inverse,o=0,a="";if(f(r)&&(r=r.call(this)),e.data&&(t=d(e.data)),r&&"object"==typeof r)if(p(r))for(var s=r.length;s>o;o++)t&&(t.index=o,t.first=0===o,t.last=o===r.length-1),a+=n(r[o],{data:t});else for(var l in r)r.hasOwnProperty(l)&&(t&&(t.key=l),a+=n(r[l],{data:t}),o++);return 0===o&&(a=i(this)),a}),r.registerHelper("if",function(r,e){return f(r)&&(r=r.call(this)),!e.hash.includeZero&&!r||a.isEmpty(r)?e.inverse(this):e.fn(this)}),r.registerHelper("unless",function(e,t){return r.helpers["if"].call(this,e,{fn:t.inverse,inverse:t.fn,hash:t.hash})}),r.registerHelper("with",function(r,e){return f(r)&&(r=r.call(this)),a.isEmpty(r)?void 0:e.fn(r)}),r.registerHelper("log",function(e,t){var n=t.data&&null!=t.data.level?parseInt(t.data.level,10):1;r.log(n,e)})}function i(r,e){g.log(r,e)}var o={},a=r,s=e,l="1.1.2";o.VERSION=l;var u=4;o.COMPILER_REVISION=u;var c={1:"<= 1.0.rc.2",2:"== 1.0.0-rc.3",3:"== 1.0.0-rc.4",4:">= 1.0.0"};o.REVISION_CHANGES=c;var p=a.isArray,f=a.isFunction,h=a.toString,v="[object Object]";o.HandlebarsEnvironment=t,t.prototype={constructor:t,logger:g,log:i,registerHelper:function(r,e,t){if(h.call(r)===v){if(t||e)throw new s("Arg not supported with multiple helpers");a.extend(this.helpers,r)}else t&&(e.not=t),this.helpers[r]=e},registerPartial:function(r,e){h.call(r)===v?a.extend(this.partials,r):this.partials[r]=e}};var g={methodMap:{0:"debug",1:"info",2:"warn",3:"error"},DEBUG:0,INFO:1,WARN:2,ERROR:3,level:3,log:function(r,e){if(g.level<=r){var t=g.methodMap[r];"undefined"!=typeof console&&console[t]&&console[t].call(console,e)}}};o.logger=g,o.log=i;var d=function(r){var e={};return a.extend(e,r),e};return o.createFrame=d,o}(e,t),i=function(r,e,t){"use strict";function n(r){var e=r&&r[0]||1,t=f;if(e!==t){if(t>e){var n=h[t],i=h[e];throw new Error("Template was precompiled with an older version of Handlebars than the current runtime. Please update your precompiler to a newer version ("+n+") or downgrade your runtime to an older version ("+i+").")}throw new Error("Template was precompiled with a newer version of Handlebars than the current runtime. Please update your runtime to a newer version ("+r[1]+").")}}function i(r,e){if(!e)throw new Error("No environment passed to template");var t;t=e.compile?function(r,t,n,i,o,a){var l=s.apply(this,arguments);if(l)return l;var u={helpers:i,partials:o,data:a};return o[t]=e.compile(r,{data:void 0!==a},e),o[t](n,u)}:function(r,e){var t=s.apply(this,arguments);if(t)return t;throw new p("The partial "+e+" could not be compiled when running in runtime-only mode")};var i={escapeExpression:c.escapeExpression,invokePartial:t,programs:[],program:function(r,e,t){var n=this.programs[r];return t?n=a(r,e,t):n||(n=this.programs[r]=a(r,e)),n},merge:function(r,e){var t=r||e;return r&&e&&r!==e&&(t={},c.extend(t,e),c.extend(t,r)),t},programWithDepth:o,noop:l,compilerInfo:null};return function(t,o){o=o||{};var a,s,l=o.partial?o:e;o.partial||(a=o.helpers,s=o.partials);var u=r.call(i,l,t,a,s,o.data);return o.partial||n(i.compilerInfo),u}}function o(r,e,t){var n=Array.prototype.slice.call(arguments,3),i=function(r,i){return i=i||{},e.apply(this,[r,i.data||t].concat(n))};return i.program=r,i.depth=n.length,i}function a(r,e,t){var n=function(r,n){return n=n||{},e(r,n.data||t)};return n.program=r,n.depth=0,n}function s(r,e,t,n,i,o){var a={partial:!0,helpers:n,partials:i,data:o};if(void 0===r)throw new p("The partial "+e+" could not be found");return r instanceof Function?r(t,a):void 0}function l(){return""}var u={},c=r,p=e,f=t.COMPILER_REVISION,h=t.REVISION_CHANGES;return u.template=i,u.programWithDepth=o,u.program=a,u.invokePartial=s,u.noop=l,u}(e,t,n),o=function(r,e,t,n,i){"use strict";var o,a=r,s=e,l=t,u=n,c=i,p=function(){var r=new a.HandlebarsEnvironment;return u.extend(r,a),r.SafeString=s,r.Exception=l,r.Utils=u,r.VM=c,r.template=function(e){return c.template(e,r)},r},f=p();return f.create=p,o=f}(n,r,t,e,i);return o}();