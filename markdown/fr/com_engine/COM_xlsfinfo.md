# COM_xlsfinfo

Détermine si le fichier contient une feuille de calcul Microsoft Excel.

## 📝 Syntaxe

- status = xlsfinfo(filename)
- [status, sheets] = xlsfinfo(filename)
- [status, sheets, xlsformat] = xlsfinfo(filename)

## 📥 Argument d'entrée

- filename - une chaîne : un nom de fichier.

## 📤 Argument de sortie

- status - une chaîne : type de fichier
- sheets - un vecteur de chaînes : noms des feuilles
- xlsformat - une chaîne : format de fichier Excel

## 📄 Description

Interroge le fichier de feuille de calcul Excel filename pour obtenir des informations sur son contenu.

## 💡 Exemple

```matlab
[status, sheets, xlsformat] =COM_xlsfinfo([modulepath('com_engine'), '/examples/sample_xslx.xlsx'])
```

## 🔗 Voir aussi

[COM_xlswrite](../com_engine/COM_xlswrite.md), [COM_xlsread](../com_engine/COM_xlsread.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
