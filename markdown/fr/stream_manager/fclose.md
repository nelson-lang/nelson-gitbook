# fclose

Ferme un fichier ouvert.

## Syntaxe

- fclose(fid)
- fclose('all')
- status = fclose(fid)
- status = fclose('all')

## Argument d'entrée

- fid - un descripteur de fichier

## Argument de sortie

- status - une valeur entière : 0 si le fichier est fermé ou -1 sinon.

## Description

<p>
            fclose doit être utilisé pour fermer un fichier ouvert par fopen.</p>

<p>
                fclose('all') ferme tous les fichiers ouverts par fopen.</p>

## Exemple

```matlab


fd = fopen([tempdir(), filesep(), 'fclose_tst'],'wt');
status = fclose(fd)
status = fclose(fd)


```

## Voir aussi

[fopen](../stream_manager/fopen.md), [fread](../stream_manager/fread.md), [feof](../stream_manager/feof.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
