# editor

appelle l'éditeur de texte intégré.

## Syntaxe

- editor()
- editor(filename)
- editor('editor_command', cmd)

## Argument d'entrée

- filename - une chaîne : nom de fichier à ouvrir.
- cmd - une chaîne représentant la commande pour lancer votre éditeur de code préféré.

## Description

<p>
            editor ouvre un fichier existant dans l'éditeur intégré de Nelson.</p>

<p>
                editor doit être considéré comme interne et il est préférable d'utiliser edit.</p>

<p>Définir un autre éditeur de texte par défaut : (exemple avec VS Code)</p>

<p>
                    editor('editor_command', 'code')
                </p>

<p>Pour restaurer l'éditeur par défaut, utilisez :</p>

<p>
                    editor('editor_command', '')
                </p>

<p>Le changement d'éditeur est persistant et sera enregistré dans un fichier de configuration.</p>

## Exemple

```matlab
edit('edit')
if ispc()
  editor('editor_command ', 'notepad')
else
  editor('editor_command ', 'vim')
end
edit('edit')
% restore default editor
editor('editor_command ', '')

```

## Voir aussi

[edit](../text_editor/edit.md).

## Historique

| Version | Description                                       |
| ------- | ------------------------------------------------- |
| 1.0.0   | version initiale                                  |
| 1.10.0  | Option pour changer l'éditeur de texte par défaut |

## Auteur

Allan CORNET
