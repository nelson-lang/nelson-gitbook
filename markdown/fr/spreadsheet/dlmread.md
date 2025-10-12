# dlmread

Lire une matrice numérique depuis un fichier texte utilisant un délimiteur.

## Syntaxe

- M = dlmread(filename)
- M = dlmread(filename, delimiter)
- M = dlmread(filename, delimiter, R1, C1)
- M = dlmread(filename, delimiter, [R1 C1 R2 C2])

## Argument d'entrée

- filename - une chaîne : nom de fichier source.
- delimiter - une chaîne : délimiteur ',' , '\t', ';'. par défaut ','
- R1, C1 - entier non négatif : décalage. par défaut : 0, 0
- [R1 C1 R2 C2] - entiers non négatifs : décalage de la ligne de départ, décalage de la colonne de départ, décalage de la ligne de fin et décalage de la colonne de fin.

## Argument de sortie

- M - une matrice double.

## Description

<p>
        M = dlmread(filename, delimiter, [R1 C1 R2 C2]) lit uniquement les données dans la plage spécifiée par les décalages de ligne R1 à R2 et de colonne C1 à C2. Vous pouvez alternativement spécifier la plage en notation de feuille de calcul, par exemple 'A1..B6' au lieu de [0 0 5 1].</p>

<p>
                M = dlmread(filename, delimiter, R1, C1) commence la lecture des données aux décalages de ligne et de colonne indiqués par R1 et C1. Par exemple, R1=0, C1=0 correspond à la première valeur du fichier.</p>

<p>Pour définir des décalages de ligne et de colonne sans définir de délimiteur, utilisez un caractère vide comme espace réservé, par exemple M = dlmread(filename, '', 3, 1).</p>

<p>
                    M = dlmread(filename, delimiter) lit les données du fichier en utilisant le délimiteur spécifié et traite les caractères délimiteurs répétés comme des délimiteurs séparés.</p>

<p>
                        M = dlmread(filename) lit un fichier de données numériques au format ASCII délimité dans la matrice M. La fonction dlmread détecte automatiquement le délimiteur à partir du fichier et consolide les espaces consécutifs en un seul délimiteur.</p>

<p>Importation de nombres complexes : dlmread lit chaque nombre complexe comme une unité unique et le stocke dans un champ numérique complexe.</p>

<p>Formes valides pour les nombres complexes :</p>

<p></p>

| Forme :         | Exemple : |
| --------------- | --------- | ----------- |
| ±<real>±<imag>i | j         | 3.1347-2.1i |
| ±<imag>i        | j         | -2.1j       |

<p>
                            Remarque : les espaces à l'intérieur d'un nombre complexe ne sont pas autorisés ; dlmread interprète tout espace comme un délimiteur de champ.</p>

## Exemples

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

## Voir aussi

[dlmwrite](../spreadsheet/dlmwrite.md), [fileread](../stream_manager/fileread.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## Auteur

Allan CORNET
