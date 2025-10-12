# frewind

Positionne le flux au début du fichier.

## Syntaxe

- frewind(fid)

## Argument d'entrée

- fid - une valeur entière : descripteur de fichier

## Description

<p>
            frewind positionne le pointeur au début du fichier</p>

## Exemple

```matlab

fileID = fopen([tempdir(), 'frewind.txt'],'wt');
fprintf(fileID, 'son is beautiful.');
frewind(fileID);
fprintf(fileID, 'sun');
fclose(fileID);
R = fileread([tempdir(), 'frewind.txt'])
```

## Voir aussi

[fclose](../stream_manager/fclose.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
