# cd

Change le répertoire courant de Nelson.

## Syntaxe

- cd(dirname)
- cd dirname
- previous_path = cd(dirname)
- cd ..
- cd

## Argument d'entrée

- dirname - a string: nom du répertoire où se déplacer.

## Argument de sortie

- previous_path - a string: répertoire précédent.

## Description

<p>Change le répertoire de travail courant vers dirname.</p>

<p>a = cd() sans argument renvoie le répertoire de travail courant.</p>

<p>cd() sans argument affiche le répertoire de travail courant.</p>

<p></p>

## Exemple

```matlab
previous = cd(tempdir())
cd
cd ..

```

## Voir aussi

[mkdir](../files_folders_functions/mkdir.md), [pwd](../files_folders_functions/pwd.md).

## Historique

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Auteur

Allan CORNET
