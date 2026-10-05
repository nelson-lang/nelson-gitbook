# htmltopdf

Convers html page to pdf.

## 📝 Syntax

- htmltopdf(html\_filename, pdf\_filename)

## 📥 Input argument

- html\_filename - a string: html filename.
- pdf\_filename - a string: pdf filename (destination).

## 📄 Description


<b>htmltopdf</b> converts html page to pdf.

## 💡 Example



```matlab
txt = {'## Example of Markdown text';
'>Nelson html to pdf conversion example'};

html = markdown(txt);
f = fopen([tempdir(), 'htmltopdf_example.html'], 'wt');
fwrite(f, html);
fclose(f);

htmltopdf([tempdir(), 'htmltopdf_example.html'], [tempdir(), 'htmltopdf_example.pdf'])
if ispc()
  winopen([tempdir(), 'htmltopdf_example.pdf']);
end
```


## 🔗 See also

[markdown](../help_tools/markdown.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
