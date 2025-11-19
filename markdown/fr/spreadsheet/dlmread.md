# dlmread

Lire une matrice numérique depuis un fichier texte utilisant un délimiteur.

## 📝 Syntaxe

- M = dlmread(filename)
- M = dlmread(filename, delimiter)
- M = dlmread(filename, delimiter, R1, C1)
- M = dlmread(filename, delimiter, [R1 C1 R2 C2])

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier source.
- delimiter - une chaîne : délimiteur ',' , '\t', ';'. par défaut ','
- R1, C1 - entier non négatif : décalage. par défaut : 0, 0
- [R1 C1 R2 C2] - entiers non négatifs : décalage de la ligne de départ, décalage de la colonne de départ, décalage de la ligne de fin et décalage de la colonne de fin.

## 📤 Argument de sortie

- M - une matrice double.

## 📄 Description

<b>M = dlmread(filename, delimiter, [R1 C1 R2 C2])</b> lit uniquement les données dans la plage spécifiée par les décalages de ligne<b>R1</b> à <b>R2</b> et de colonne <b>C1</b> à<b>C2</b>. Vous pouvez alternativement spécifier la plage en notation de feuille de calcul, par exemple 'A1..B6' au lieu de<b>[0 0 5 1]</b>.

<b>M = dlmread(filename, delimiter, R1, C1)</b> commence la lecture des données aux décalages de ligne et de colonne indiqués par<b>R1</b> et<b>C1</b>. Par exemple, R1=0, C1=0 correspond à la première valeur du fichier.

Pour définir des décalages de ligne et de colonne sans définir de délimiteur, utilisez un caractère vide comme espace réservé, par exemple<b>M = dlmread(filename, '', 3, 1)</b>.

<b>M = dlmread(filename, delimiter)</b> lit les données du fichier en utilisant le délimiteur spécifié et traite les caractères délimiteurs répétés comme des délimiteurs séparés.

<b>M = dlmread(filename)</b> lit un fichier de données numériques au format ASCII délimité dans la matrice<b>M</b>. La fonction dlmread détecte automatiquement le délimiteur à partir du fichier et consolide les espaces consécutifs en un seul délimiteur.

Importation de nombres complexes :<b>dlmread</b> lit chaque nombre complexe comme une unité unique et le stocke dans un champ numérique complexe.

Formes valides pour les nombres complexes :

| Forme :           | Exemple :   |
| ----------------- | ----------- |
| ±real ± imag i\|j | 3.1347-2.1i |
| ±imag i\|j        | -2.1j       |

<b>Remarque</b> : les espaces à l'intérieur d'un nombre complexe ne sont pas autorisés ;<b>dlmread</b> interprète tout espace comme un délimiteur de champ.

## 💡 Exemples

```matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'dlmread_example.csv'];
dlmwrite(filename, A);
R = dlmread(filename)

```

Read a CSV file with a header

```matlab

filename = [tempdir(), 'dlmread_example.csv'];
filewrite(filename, ['A,B,C,D,E,F',char(10)]);
A = magic(6);
dlmwrite(filename, A, '-append');
fileread(filename)

R = dlmread(filename, '', 1, 0)


```

## 🔗 Voir aussi

[dlmwrite](../spreadsheet/dlmwrite.md), [fileread](../stream_manager/fileread.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.10.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
