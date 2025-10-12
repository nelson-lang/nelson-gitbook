# edit

éditeur de fonctions.

## Syntaxe

- edit()
- edit filename
- edit function_name

## Argument d'entrée

- filename - une chaîne : nom de fichier à ouvrir.
- function_name - une chaîne : nom de la fonction

## Description

<p>
        edit ouvre un nouveau fichier nommé untitled.m dans l'éditeur intégré de Nelson.</p>

<p>Si function_name est le nom d'une fonction Nelson définie, edit(function_name) tente d'ouvrir le fichier associé function_name.m.</p>

<p>
            edit(dirname) ouvre tous les fichiers .m disponibles dans dirname.</p>

## Exemple

```matlab
edit('edit')
```

## Voir aussi

[smartindent](../text_editor/smartindent.md).

## Historique

| Version | Description         |
| ------- | ------------------- |
| 1.0.0   | version initiale    |
| 1.5.0   | edit(dirname) added |

## Auteur

Allan CORNET
