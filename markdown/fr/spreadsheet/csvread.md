# csvread

Lire un fichier de valeurs séparées par des virgules (CSV).

## Syntaxe

- M = csvread(filename)
- M = csvread(filename, R1, C1)
- M = csvread(filename, R1, C1, [R1 C1 R2 C2])

## Argument d'entrée

- filename - une chaîne : nom de fichier source.
- R1, C1 - entier non négatif : décalage. par défaut : 0, 0
- [R1 C1 R2 C2] - entiers non négatifs : décalage de la ligne de départ, décalage de la colonne de départ, décalage de la ligne de fin et décalage de la colonne de fin.

## Argument de sortie

- M - une matrice double.

## Description

<p>
            M = csvread(filename, R1, C1, [R1 C1 R2 C2]) lit uniquement les données dans la plage spécifiée par les décalages de lignes R1 à R2 et de colonnes C1 à C2.</p>

<p>
                M = csvread(filename, R1, C1) commence la lecture des données aux décalages de ligne et de colonne spécifiés par R1 et C1. Par exemple, R1=0, C1=0 correspond à la première valeur du fichier.</p>

<p>Pour définir des décalages de ligne et de colonne sans définir un délimiteur, utilisez un caractère vide comme espace réservé, par exemple M = csvread(filename, 3, 1).</p>

<p>
                    M = csvread(filename) lit un fichier au format CSV (valeurs séparées par des virgules) dans la matrice M.</p>

<p>Importation de nombres complexes : csvread lit chaque nombre complexe comme une unité unique et le stocke dans un champ numérique complexe.</p>

<p>Formes valides pour les nombres complexes :</p>

<p></p>

| Forme :             | Exemple : |
| ------------------- | --------- | ----------- |
| ±b1<real>±b1<imag>i | j         | 3.1347-2.1i |
| ±b1<imag>i          | j         | -2.1j       |

<p>
                        Remarque : les espaces à l'intérieur d'un nombre complexe ne sont pas autorisés ; csvread interprète tout espace comme un délimiteur de champ.</p>

## Exemple

```matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'csvread_example.csv'];
csvwrite(filename, A);
R = csvread(filename)
```

## Voir aussi

[csvwrite](../spreadsheet/csvwrite.md), [dlmread](../spreadsheet/dlmread.md), [fileread](../stream_manager/fileread.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## Auteur

Allan CORNET
