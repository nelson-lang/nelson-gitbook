# comments

Add comments to Nelson code.

## 📝 Syntax

- % comment
- code % inline comment
- %{
- block comment
- %}

## 📄 Description

Comments are used to describe code and improve readability. They are ignored during execution.

Nelson supports single-line comments using the <b>%</b> character and block comments using the <b>%{</b> and <b>%}</b> delimiters.

Block comment delimiters must appear alone on their respective lines. Any text between them is treated as a comment.

Multi-line comments are supported by the interpreter, editor, debugger, and <b>headcomments</b>.

## 💡 Examples

        Single-line and inline comments

```matlab

% Add two numbers
a = 1;
b = 2;
c = a + b; % store result

```

        Block comments

```matlab

a = magic(3);
%{
sum(a)
diag(a)
sum(diag(a))
%}
disp(a)

```

## 🔗 See also

[headcomments](../help_tools/headcomments.md).

## 🕔 History

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
