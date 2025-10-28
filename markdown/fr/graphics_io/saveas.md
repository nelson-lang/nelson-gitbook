# saveas

Enregistre une figure dans un format de fichier spécifique.

## 📝 Syntaxe

- saveas(fig, filename)
- saveas(fig, filename, formattype)

## 📥 Argument d'entrée

- fig - objet figure.
- filename - vecteur de caractères ou chaîne scalaire : nom de fichier de destination.
- formattype - vecteur de caractères ou chaîne scalaire : extension ou type de format.

## 📄 Description

<b>saveas</b> enregistre la figure dans un format de fichier spécifique.

<b>Formats pris en charge</b> :
| Option | Format | Extension |
| --- | --- | --- |
| svg | SVG (scalable vector graphics) | .svg |
| pdf | Portable Document Format (PDF) page entière, couleur | .pdf |
| png | PNG 24-bit | .png |
| jpg | JPEG 24-bit | .jpg |
| gif | Graphics Interchange Format | .gif |
| tif | Tagged Image File Format | .tif |

## 💡 Exemple

```matlab
x = -2:0.25:2;
y = x;
[X,Y] = meshgrid(x);
F = X.*exp(-X.^2-Y.^2);
surf(X,Y,F);
saveas(gcf(), [tempdir, 'svg-file.svg']);

```

## 🔗 Voir aussi

[gcf](../graphics/gcf.md).

## 🕔 Historique

| Version | 📄 Description    |
| ------- | ----------------- |
| 1.0.0   | version initiale  |
| 1.13.0  | tiff format added |

## 👤 Auteur

Allan CORNET
