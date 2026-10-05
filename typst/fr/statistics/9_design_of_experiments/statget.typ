#import "../nelson_help.typ": *

= statget <statistics:9_design_of_experiments.statget>

Acceder aux valeurs de champs dans les structures d'options statistiques.

== Syntaxe

- #raw("val = statget(options, field)");
- #raw("val = statget(options, field, defaultData)");

== Argument d'entrée

/ options: structure scalaire d'options.
/ field: nom de champ ou debut unique d'un nom de champ.
/ defaultData: valeur retournee lorsque le champ trouve est vide.

== Argument de sortie

/ val: valeur du champ, valeur par defaut ou tableau vide lorsque le champ n'est pas trouve de facon unique.

== Description

#strong[statget]; retourne une valeur depuis une structure d'options. Les noms de champs sont compares sans tenir compte de la casse et peuvent etre abreges lorsque l'abreviation est unique.


== Fonction(s) utilisée(s)

statset kmeans

== Exemples

Lire une valeur dans une structure d'options.

``````matlab
opts = statset('kmeans');
statget(opts, 'MaxI')
``````

Retourner une valeur par defaut lorsque le champ est vide.

``````matlab
opts = statset();
statget(opts, 'TolX', 1e-6)
``````

