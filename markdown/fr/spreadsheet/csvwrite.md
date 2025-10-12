# csvwrite

Écrire un fichier de valeurs séparées par des virgules (CSV).

## Syntaxe

- csvwrite(filename, M)
- csvwrite(filename, M, r, c)

## Argument d'entrée

- filename - une chaîne : nom de fichier de destination.
- M - une matrice numérique ou logique.
- r, c - entier : décalage. par défaut : 0, 0

## Description

<p>
            csvwrite écrit une matrice numérique dans un fichier au format CSV (valeurs séparées par des virgules).</p>

## Exemple

```matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'dlmwrite_example.csv'];
csvwrite(filename, A);
R = csvread(filename)
A = eye(3, 2);
csvwrite(filename, A);
R = fileread(filename)

```

## Voir aussi

[csvread](../spreadsheet/csvread.md), [dlmread](../spreadsheet/dlmread.md), [fileread](../stream_manager/fileread.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
