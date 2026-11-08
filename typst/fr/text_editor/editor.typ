#import "nelson_help.typ": *

= editor <text_editor:editor>

appelle l'éditeur de texte intégré.

== Syntaxe

- #raw("editor()");
- #raw("editor(filename)");
- #raw("editor(filename, line)");
- #raw("editor(filename, line, column)");
- #raw("editor('editor_command', cmd)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier à ouvrir.
/ line: un nombre : ligne où placer le curseur.
/ column: un nombre : colonne de cette ligne.
/ cmd: une chaîne représentant la commande pour lancer votre éditeur de code préféré.

== Description

#strong[editor]; ouvre un fichier existant dans l'éditeur intégré de Nelson.

 #strong[editor]; doit être considéré comme interne et il est préférable d'utiliser #strong[edit];.

 Définir un autre éditeur de texte par défaut : (exemple avec VS Code)

 #raw("editor('editor_command', 'code')");

 Pour restaurer l'éditeur par défaut, utilisez :

 #raw("editor('editor_command', '\n        ')");

 Le changement d'éditeur est persistant et sera enregistré dans un fichier de configuration.

 Touches du débogueur dans l'éditeur : F12 pose\/retire un point d'arrêt, F5 exécute ou continue, F10 pas à pas, F11 entre dans la fonction, Shift+F11 sort de la fonction, Shift+F5 arrête, F9 évalue la sélection, F6 pause, Ctrl+F10 exécuter jusqu'ici. Voir la page sur le déroulement du débogage.


== Exemple

``````matlab
edit('edit')
if ispc()
  editor('editor_command ', 'notepad')
else
  editor('editor_command ', 'vim')
end
edit('edit')
% restore default editor
editor('editor_command ', '')

``````


== Voir aussi

#nlink(<text_editor:edit>)[edit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.10.0], [Option pour changer l'éditeur de texte par défaut],
  [2.0.0], [Touches du débogueur et marqueurs de points d'arrêt],
  [2.0.0], [editor(filename, line, column) ajouté],
)

// Auteur: Allan CORNET
