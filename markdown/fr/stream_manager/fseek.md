# fseek

Positionne le pointeur de fichier à un emplacement.

## Syntaxe

- fseek(fid, offset, origin)
- status = fseek(fid, offset, origin)

## Argument d'entrée

- fid - une valeur entière : descripteur de fichier
- offset - une valeur entière : nombre d'octets à déplacer depuis l'origine.
- origin - une valeur entière ou une chaîne : emplacement dans le fichier.

## Argument de sortie

- status - an integer value: 0 or -1 if there is an error.

## Description

<p>
        fseek déplace le pointeur de fichier à l'emplacement offset dans le fichier fid.</p>

<p>origin peut prendre comme valeurs :</p>

<p>'bof' ou -1 : début du fichier.</p>

<p>'cof' ou 0 : position courante dans le fichier.</p>

<p>'eof' ou 1 : fin du fichier.</p>

<p>
            offset peut être l'une des variables prédéfinies SEEK_CUR (position courante, ou 0), SEEK_SET (début, ou -1), ou SEEK_END (fin du fichier, ou 1).</p>

## Exemple

```matlab

fileID = fopen([tempdir(), 'fseek.txt'],'wt');
fprintf(fileID, 'son is beautiful.');
fseek(fileID, SEEK_CUR, 'bof');
fprintf(fileID, 'sun');
fclose(fileID);
R = fileread([tempdir(), 'fseek.txt'])
```

## Voir aussi

[frewind](../stream_manager/frewind.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
