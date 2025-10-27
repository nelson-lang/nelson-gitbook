# writecell

Écrire un tableau de cellules dans un fichier.

## 📝 Syntaxe

- writecell(C)
- writecell(C, filename)
- writecell(..., Name, Value)

## 📥 Argument d'entrée

- C - un tableau de cellules.
- filename - une chaîne : nom de fichier de destination.
- Name, Value - Arguments Nom-Valeur

## 📄 Description

<b>writecell</b> écrit un tableau de cellules dans un fichier au format CSV.

<b>writecell</b> ne prend pas en charge les matrices creuses (sparse).

<b>writecell</b> formate les données numériques en utilisant le format long G.

Arguments Nom-Valeur disponibles

Les paires nom-valeur doivent suivre tous les autres arguments.

L'ordre des paires nom-valeur n'a pas d'importance

Les options Delimiter et QuoteStrings ne s'appliquent qu'aux fichiers texte délimités.

<b>FileType</b>: Specifies the type of output file

Syntaxe : <b>'FileType','text'</b>

Prend en charge les fichiers texte délimités (.txt, .dat, .csv)

<b>WriteMode</b>: Controls how data is written to the file

Syntaxe : <b>'WriteMode', mode</b>

Options :

'overwrite' (par défaut) - crée un nouveau fichier ou remplace le contenu existant

'append' - ajoute les données à la fin du fichier existant

Si le fichier cible n'existe pas, un nouveau fichier sera créé quel que soit le mode.

<b>Delimiter</b>: Defines the character used to separate fields

Syntaxe : <b>'Delimiter', delimiter</b>

Délimiteurs disponibles : uniquement applicables aux fichiers texte délimités.

<b>QuoteStrings</b> : contrôle le comportement de citation des textes (applicable uniquement aux fichiers texte délimités).

<b>'QuoteStrings', option</b>

with <b>options</b>

<b>'minimal'</b> (par défaut) : cite uniquement les textes contenant des délimiteurs, des fins de ligne ou des guillemets.

<b>'all'</b> : cite toutes les variables texte.

<b>'none'</b> : n'utilise pas de guillemets.

## 💡 Exemple

```matlab
C = {'ID', 'Product', 'Price'; 1, 'Laptop', 799.99; 2, 'Phone', 699.49; 3, 'Tablet', 499.00};
filename = [tempdir(), 'writecell_example.csv'];
writecell(C, filename);
R = fileread(filename)

```

## 🔗 Voir aussi

[readcell](../spreadsheet/readcell.md), [csvwrite](../spreadsheet/csvwrite.md), [dlmread](../spreadsheet/dlmread.md), [fileread](../stream_manager/fileread.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## 👤 Auteur

Allan CORNET
