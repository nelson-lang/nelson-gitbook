# ls

Liste le contenu d'un répertoire.

## Syntaxe

- ls
- ls(name)
- res = ls()
- res = ls(options)

## Argument d'entrée

- name - a string: nom de fichier ou de répertoire.
- options - varie selon le système.

## Argument de sortie

- res - Sur Windows, res est un tableau m-by-n de caractères. Sur Unix, c'est un vecteur de noms séparés par des tabulations et espaces.

## Description

<p>ls appelle la commande de liste de répertoire native du système d'exploitation - les options disponibles varient selon le système.</p>

## Exemple

```matlab
res = ls(nelsonroot())
if ~ispc()
  res = ls(nelsonroot(), '-l')
end
```

## Voir aussi

[dir](../files_folders_functions/dir.md), [isdir](../files_folders_functions/isdir.md), [isfile](../files_folders_functions/isfile.md).

## Historique

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Auteur

Allan CORNET
