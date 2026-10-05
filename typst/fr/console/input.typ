#import "nelson_help.typ": *

= input <console:input>

Afficher une invite et attendre l'entrée utilisateur.

== Syntaxe

- #raw("r = input(prompt_str)");
- #raw("r = input(prompt_str, 's')");

== Argument d'entrée

/ prompt\_str: une chaîne : invite temporaire affichée

== Argument de sortie

/ r: une chaîne

== Description

Afficher une invite et attendre l'entrée utilisateur. input retourne une chaîne qui est l'expression saisie au clavier.


== Exemple

``````matlab
res = input('Please input a value ', 's');
r = execstr(['A = ', res, ';'], 'errcatch');
if (r)
  disp('It was a value.');
  disp(A)
else
 disp('It was NOT a value.');
end
``````


== Voir aussi

#nlink(<core:execstr>)[execstr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
