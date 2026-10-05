#import "nelson_help.typ": *

= symvar <string:symvar>

Determine les variables d'une expression.

== Syntaxe

- #raw("v = symvar(expr)");

== Argument d'entrée

/ expr: Expression sous forme de texte (vecteur de caracteres, chaine scalaire) ou handle de fonction.

== Argument de sortie

/ v: Tableau cellule colonne des noms de variables.

== Description

#strong[symvar]; renvoie les noms des variables utilisees dans #strong[expr];, tries par ordre alphabetique et sans doublon.

Les identifiants correspondant a une fonction ou a une primitive (y compris les valeurs speciales #strong[pi];, #strong[i];, #strong[j];, #strong[eps];, #strong[Inf]; et #strong[NaN];), les mots cles du langage et les noms d'acces a un champ ne sont pas consideres comme des variables.


== Exemple

``````matlab
v = symvar('sin(x) + a*y')
``````


== Voir aussi

#nlink(<string:vectorize>)[vectorize];, #nlink(<function_handle:func2str>)[func2str];, #nlink(<interpreter:iskeyword>)[iskeyword];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
