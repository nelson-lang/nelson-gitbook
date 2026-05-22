# editor

appelle l'éditeur de texte intégré.

## 📝 Syntaxe

- editor()
- editor(filename)
- editor('editor_command', cmd)

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier à ouvrir.
- cmd - une chaîne représentant la commande pour lancer votre éditeur de code préféré.

## 📄 Description

<b>editor</b> ouvre un fichier existant dans l'éditeur intégré de Nelson.

<b>editor</b> doit être considéré comme interne et il est préférable d'utiliser <b>edit</b>.

Définir un autre éditeur de texte par défaut : (exemple avec VS Code)

<code>editor('editor_command', 'code')</code>

Pour restaurer l'éditeur par défaut, utilisez :

<code>editor('editor_command', '
')</code>

Le changement d'éditeur est persistant et sera enregistré dans un fichier de configuration.

## 💡 Exemple

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

## 🔗 Voir aussi

[edit](../text_editor/edit.md).

## 🕔 Historique

| Version | 📄 Description                                    |
| ------- | ------------------------------------------------- |
| 1.0.0   | version initiale                                  |
| 1.10.0  | Option pour changer l'éditeur de texte par défaut |

<!--
## 👤 Auteur

Allan CORNET
-->
