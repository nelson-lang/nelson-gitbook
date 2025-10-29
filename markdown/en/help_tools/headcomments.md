# headcomments

Display Nelson function header comments.

## 📝 Syntax

- headcomments(function_name)
- ce = headcomments(function_name)

## 📥 Input argument

- function_name - a string: function name or a .m filename.

## 📤 Output argument

- ce - a cell of strings

## 📄 Description

<b>head_comments</b> displays the function header comments.

Comments are read from the associated .m file.

Nelson predefined functions have no header comments.

## 💡 Example

```matlab
comments = headcomments('cellstr'); md = markdown(comments);inserthtml(md)
```

<img src="headcomments.png" align="middle"/>

## 🔗 See also

[doc](../help_tools/doc.md), [markdown](../help_tools/markdown.md), [inserthtml](../gui/inserthtml.md), [which](../function_manager/which.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
