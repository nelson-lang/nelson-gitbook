# ftell

Retourne le décalage de l'octet courant par rapport au début d'un fichier.

## Syntaxe

- p = ftell(fid)

## Argument d'entrée

- fid - un descripteur de fichier

## Argument de sortie

- p - une valeur entière : position du pointeur de fichier en nombre de caractères depuis le début du fichier.

## Description

<p>
                        ftell retourne le décalage de l'octet courant par rapport au début du fichier associé au flux nommé fid.</p>

## Exemple

```matlab
TXT = 'example about ftell.';
fileID = fopen([tempdir(), 'ftell.txt'],'wt');
fprintf(fileID, TXT);
p1 = ftell(fileID)
fseek(fileID, SEEK_CUR, 'bof');
p2 = ftell(fileID)
status = fclose(fileID);
```

## Voir aussi

[fopen](../stream_manager/fopen.md), [fprintf](../stream_manager/fread.md), [fclose](../stream_manager/fclose.md), [fseek](../stream_manager/fseek.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
