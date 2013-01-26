
(function(){ window.TEMPLATE = window.TEMPLATE || {};
function anonymous(locals, attrs, escape, rethrow, merge) {
attrs = attrs || jade.attrs; escape = escape || jade.escape; rethrow = rethrow || jade.rethrow; merge = merge || jade.merge;
var __jade = [{ lineno: 1, filename: undefined }];
try {
var buf = [];
with (locals || {}) {
var interp;
__jade.unshift({ lineno: 1, filename: __jade[0].filename });
__jade.unshift({ lineno: 2, filename: __jade[0].filename });
buf.push('<header>');
__jade.unshift({ lineno: undefined, filename: __jade[0].filename });
__jade.unshift({ lineno: 2, filename: __jade[0].filename });
buf.push('<div class="navitems left">');
__jade.unshift({ lineno: undefined, filename: __jade[0].filename });
__jade.unshift({ lineno: 3, filename: __jade[0].filename });
buf.push('<button class="back">');
__jade.unshift({ lineno: undefined, filename: __jade[0].filename });
__jade.unshift({ lineno: 3, filename: __jade[0].filename });
buf.push('Back');
__jade.shift();
__jade.shift();
buf.push('</button>');
__jade.shift();
__jade.shift();
buf.push('</div>');
__jade.shift();
__jade.unshift({ lineno: 4, filename: __jade[0].filename });
buf.push('<h1>');
__jade.unshift({ lineno: undefined, filename: __jade[0].filename });
__jade.unshift({ lineno: 4, filename: __jade[0].filename });
buf.push('' + escape((interp = title) == null ? '' : interp) + '');
__jade.shift();
__jade.shift();
buf.push('</h1>');
__jade.shift();
__jade.shift();
buf.push('</header>');
__jade.shift();
__jade.unshift({ lineno: 6, filename: __jade[0].filename });
buf.push('<div class="content">');
__jade.unshift({ lineno: undefined, filename: __jade[0].filename });
__jade.shift();
buf.push('</div>');
__jade.shift();
__jade.shift();
}
return buf.join("");
} catch (err) {
  rethrow(err, __jade[0].filename, __jade[0].lineno);
}
}window.TEMPLATE['detail.jade'] = anonymous;})();
