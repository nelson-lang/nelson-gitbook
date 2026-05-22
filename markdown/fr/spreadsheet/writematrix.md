# writematrix

Écrire une matrice dans un fichier.

## 📝 Syntaxe

- writematrix(M)
- writematrix(M, filename)
- writematrix(..., Name, Value)

## 📥 Argument d'entrée

- M - une matrice numérique ou logique.
- filename - une chaîne : nom de fichier de destination.
- Name, Value - Arguments Nom-Valeur

## 📄 Description

<b>writematrix</b> écrit une matrice numérique dans un fichier au format CSV.

<b>writematrix</b> ne prend pas en charge les matrices creuses (sparse).

<b>writematrix</b> formate les données numériques en utilisant le format long G.

Arguments Nom-Valeur disponibles

Les paires nom-valeur doivent suivre tous les autres arguments.

L'ordre des paires nom-valeur n'a pas d'importance

Les options Delimiter et QuoteStrings ne s'appliquent qu'aux fichiers texte délimités.

<b>FileType</b>: Specifies the type of output file

Syntaxe : <b>
'FileType','text'
</b>

Prend en charge les fichiers texte délimités (.txt, .dat, .csv)

<b>WriteMode</b>: Controls how data is written to the file

Syntaxe : <b>
'WriteMode', mode</b>

Options :

'overwrite' (par défaut) - crée un nouveau fichier ou remplace le contenu existant

'append' - ajoute les données à la fin du fichier existant

Si le fichier cible n'existe pas, un nouveau fichier sera créé quel que soit le mode.

<b>Delimiter</b>: Defines the character used to separate fields

Syntaxe : <b>
'Delimiter', delimiter</b>

Délimiteurs disponibles : uniquement applicables aux fichiers texte délimités.

<b>QuoteStrings</b> : contrôle le comportement de citation des textes (applicable uniquement aux fichiers texte délimités).

<b>
        'QuoteStrings', option</b>

with <b>options</b>

<b>
        'minimal'
      </b> (par défaut) : cite uniquement les textes contenant des délimiteurs, des fins de ligne ou des guillemets.

<b>
        'all'
      </b> : cite toutes les variables texte.

<b>
        'none'
      </b> : n'utilise pas de guillemets.

## 💡 Exemple

```matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'writematrix_example.csv'];
writematrix(A, filename);
R = fileread(filename)

```

## 🔗 Voir aussi

[readcell](../spreadsheet/readcell.md), [csvwrite](../spreadsheet/csvwrite.md), [dlmread](../spreadsheet/dlmread.md), [fileread](../stream_manager/fileread.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.10.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
