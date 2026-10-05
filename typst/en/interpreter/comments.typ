#import "nelson_help.typ": *

= comments <interpreter:comments>

Add comments to Nelson code.

== Syntax

- #raw("% comment");
- #raw("code % inline comment");
- #raw("%{");
- #raw("block comment");
- #raw("%}");

== Description

Comments are used to describe code and improve readability. They are ignored during execution.

 Nelson supports single-line comments using the #strong[%]; character and block comments using the #strong[%{]; and #strong[%}]; delimiters.

 Block comment delimiters must appear alone on their respective lines. Any text between them is treated as a comment.

 Multi-line comments are supported by the interpreter, editor, debugger, and #strong[headcomments];.


== Examples

Single-line and inline comments

``````matlab

% Add two numbers
a = 1;
b = 2;
c = a + b; % store result

``````

Block comments

``````matlab

a = magic(3);
%{
sum(a)
diag(a)
sum(diag(a))
%}
disp(a)

``````


== See also

#nlink(<help_tools:headcomments>)[headcomments];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [Initial version.],
)

// Author: Allan CORNET
