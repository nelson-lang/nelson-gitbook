#import "nelson_help.typ": *

= pyargs <python_engine:pyargs>

Générer des arguments nommés pour les fonctions Python.

== Syntaxe

- #raw("pyargs");
- #raw("pa = pyargs(Name, Value)");

== Argument d'entrée

/ Name: une chaîne ou un vecteur de caractères
/ Value: valeur de la variable

== Argument de sortie

/ pa: objet pyargs.

== Description

#strong[pyargs(Name, Value, ...)]; génère un ou plusieurs arguments nommés pour les fonctions Python.

 En Python, un argument nommé (keyword argument) est une valeur associée à un identifiant.

 Veillez à positionner#strong[pyargs]; comme dernier argument lors de l'appel d'une fonction Python.


== Exemple

``````matlab
pa = pyargs('A', 1)
``````


== Voir aussi

#nlink(<python_engine:pyrun>)[pyrun];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [version initiale],
)

// Auteur: Allan CORNET
