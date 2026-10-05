#import "nelson_help.typ": *

= odeget <ode_solvers:odeget>

Lire une option EDO.

== Syntaxe

- #raw("valeur = odeget(options, nom)");
- #raw("valeur = odeget(options, nom, defaut)");

== Description

#strong[odeget]; renvoie une option nommee ou une valeur par defaut.

 

#table(
  columns: 2,
  [Appel], [Role], 
  [#strong[value \= \*get(options,name)];], [Retourne la valeur stockee pour #strong[name];.], 
  [#strong[value \= \*get(options,name,default)];], [Retourne #strong[default]; si l option est absente ou vide.], 
)

== Exemple

``````matlab
options = odeset('RelTol', 1e-4); value = odeget(options, 'RelTol')
``````


== Voir aussi

#nlink(<ode_solvers:odeset>)[odeset];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
