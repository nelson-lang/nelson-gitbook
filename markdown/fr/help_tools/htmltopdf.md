# htmltopdf

Convertit une page HTML en PDF.

## 📝 Syntaxe

- htmltopdf(html_filename, pdf_filename)

## 📥 Argument d'entrée

- html_filename - une chaîne : nom du fichier html.
- pdf_filename - une chaîne : nom du fichier pdf (destination).

## 📄 Description

<b>htmltopdf</b> convertit une page HTML en PDF.

## 💡 Exemple

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

## 🔗 Voir aussi

[markdown](../help_tools/markdown.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
