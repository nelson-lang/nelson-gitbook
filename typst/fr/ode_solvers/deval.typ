#import "nelson_help.typ": *

= deval <ode_solvers:deval>

Evaluer une solution EDO.

== Syntaxe

- #raw("y = deval(sol, t)");
- #raw("[y, yp] = deval(sol, t)");

== Description

#strong[deval]; interpole une structure de solution ou un objet resultat retourne par un solveur EDO.

 

#table(
  columns: 2,
  [Element], [Details], 
  [Solution en entree], [Structure ou objet resultat retourne par les solveurs ODE, DDE ou BVP.], 
  [Points d'evaluation], [Valeurs #strong[t]; ou #strong[x]; dans l'intervalle calcule.], 
  [Sorties], [Valeurs #strong[y]; et derivees optionnelles #strong[yp];, une colonne par point d'evaluation.], 
  [Usage], [Sortie dense, trace, post-traitement et comparaison de solutions.], 
)
 Le resultat contient une ligne par variable d'etat et une colonne par point d'evaluation. Cette forme est utilisee pour les vecteurs ligne et colonne de temps d'evaluation. Les points d'evaluation doivent rester dans l'intervalle de la solution. La seconde sortie optionnelle retourne la derivee aux memes points.


== Exemple

``````matlab
sol = ode45(@(t,y) -y, [0 1], 1);
[y, yp] = deval(sol, [0; 0.5; 1])
``````


== Voir aussi

#nlink(<ode_solvers:odextend>)[odextend];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
