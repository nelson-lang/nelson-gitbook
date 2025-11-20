# COM_xlsread

Lire un fichier de feuille de calcul Microsoft Excel en utilisant COM.

## 📝 Syntaxe

- numeric_data = COM_xlsread(filename)
- numeric_data = COM_xlsread(filename, sheet)
- numeric_data = COM_xlsread(filename, range)
- numeric_data = COM_xlsread(filename, sheet, range)
- numeric_data = COM_xlsread(filename, sheet, range)
- [numeric\_data, txt\_data, raw\_data] = COM_xlsread(filename)
- [numeric\_data, txt\_data, raw\_data] = COM_xlsread(filename, sheet)
- [numeric\_data, txt\_data, raw\_data] = COM_xlsread(filename, range)
- [numeric\_data, txt\_data, raw\_data] = COM_xlsread(filename, sheet, range)
- [numeric\_data, txt\_data, raw\_data] = COM_xlsread(filename, sheet, range)

## 📥 Argument d'entrée

- filename - une chaîne : un nom de fichier existant.
- sheet - un entier ou une chaîne : id de feuille ou nom de feuille
- range - une chaîne : une plage xx:xx

## 📤 Argument de sortie

- numeric_data - une matrice ou un vecteur : données de chaîne converties en double.
- txt_data - une cellule de chaînes avec seulement des chaînes.
- raw_data - une cellule de chaînes : données brutes sans conversion.

## 📄 Description

<b>COM_xlsread</b> lit un fichier de feuille de calcul Microsoft Excel en utilisant COM.

## 💡 Exemple

```matlab
data = {'Time', 'Temp'; 12 98; 13 99; Inf 97};
s = COM_xlswrite([tempdir(), 'example_xlswrite_2.xlsx'], data, 'Temperatures');
[numeric_data, txt_data, raw_data] = COM_xlsread([tempdir(), 'example_xlswrite_2.xlsx'])
```

## 🔗 Voir aussi

[COM_xlswrite](../com_engine/COM_xlswrite.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
