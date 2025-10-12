# dlmwrite

Écrire une matrice numérique dans un fichier texte en utilisant un délimiteur.

## Syntaxe

- dlmwrite(filename, M)
- dlmwrite(filename, M, delimiter)
- dlmwrite(filename, M, '-append')
- dlmwrite(filename, M, '-append', delimiter)
- dlmwrite(filename, M, delimiter, r, c)
- dlmwrite(filename, M, '-append', delimiter, r, c)
- dlmwrite(filename, M, delimiter, r, c, eol)
- dlmwrite(filename, M, '-append', delimiter, r, c, eol)
- dlmwrite(filename, M, delimiter, r, c, eol, precision)
- dlmwrite(filename, M, '-append', delimiter, r, c, eol, precision)

## Argument d'entrée

- filename - une chaîne : nom de fichier de destination.
- M - une matrice numérique ou logique.
- delimiter - une chaîne : délimiteur ',' , '\t', ';'. par défaut ','
- r, c - entier : décalage. par défaut : 0, 0
- eol - a string: 'pc' ou 'unix'.
- precision - un entier ou une chaîne de format C. (par défaut : 5)

## Description

<p>
            dlmwrite écrit une matrice numérique dans un fichier au format ASCII.</p>

## Exemple

```matlab
A = [Inf, -Inf, NaN, 3];
filename = [tempdir(), 'dlmwrite_example.csv'];
dlmwrite(filename, A);
R = dlmread(filename)
A = eye(3, 2);
dlmwrite(filename, A, ';', 4, 5);
R = fileread(filename)

```

## Voir aussi

[dlmread](../spreadsheet/dlmread.md), [fileread](../stream_manager/fileread.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
