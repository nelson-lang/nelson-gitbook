# markdown

Converts markdown to html.

## 📝 Syntax

- html_txt = markdown(md_txt)
- html_txt = markdown(md_txt, options)
- status = markdown(md_filename, html_filename)
- status = markdown(md_filename, html_filename, options)

## 📥 Input argument

- md_txt - a string: markdown text to convert.
- md_filename - a string: markdown filename to convert (source).
- html_filename - a string: html filename (destination).
- options - a string: options for the conversion. 'secure' (default), or 'advanced'.

## 📤 Output argument

- status - a logical: html file generated or not.

## 📄 Description

<b>markdown</b> converts Markdown text-to-HTML.

options:

- <b>secure</b> (default): only a subset of markdown is supported (no raw HTML, no tables, no images, no links).
- <b>advanced</b>: full markdown supported (including raw HTML, tables, images, links).

## 💡 Examples

```matlab
txt = {'## Example of Markdown text';
'>Nelson supports markdown ...'};
html = markdown(txt);
filewrite([tempdir(), 'markdown_example.html'], html)

if ispc()
  winopen([tempdir(), 'markdown_example.html']);
end
```

```matlab
txt = 'Hello <script>alert("XSS")</script> World';
advanced_html = markdown(txt, 'advanced')
secure_html = markdown(txt, 'secure')

```

## 🔗 See also

[htmltopdf](../help_tools/htmltopdf.md).

## 🕔 History

| Version | 📄 Description                   |
| ------- | -------------------------------- |
| 1.0.0   | initial version                  |
| 1.15.0  | 'secure', 'advanced' modes added |

<!--
## 👤 Author

Allan CORNET
-->
