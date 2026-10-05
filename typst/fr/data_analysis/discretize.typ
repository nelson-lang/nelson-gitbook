#import "nelson_help.typ": *

= discretize <data_analysis:discretize>

Regrouper des donnees numeriques en intervalles.

== Syntaxe

- #raw("Y = discretize(X, edges)");
- #raw("Y = discretize(X, edges, values)");
- #raw("C = discretize(X, edges, 'categorical', names)");
- #raw("C = discretize(T, 'month', 'categorical')");
- #raw("C = discretize(D, 'hour', 'categorical', format)");

== Description

#strong[discretize]; affecte chaque valeur numerique de #strong[X]; a un intervalle defini par des bornes consecutives.

 Les valeurs datetime peuvent etre regroupees par mois calendaire avec des libelles categoriels mois-annee.

 Les valeurs duration peuvent etre regroupees par heure avec des libelles d'intervalles formates en minutes ou en temps.


== Exemples

Creer des intervalles categoriels.

``````matlab
X = [5 15 25 NaN];
C = discretize(X, [0 10 20 30], 'categorical', {'small', 'medium', 'large'})
``````

Regrouper des donnees normalement distribuees en intervalles categoriels.

``````matlab
rng(1);
X = randn(1000, 1);
edges = std(X) * (-3:3);
C = discretize(X, edges, 'categorical', ...
  {'-3sigma', '-2sigma', '-sigma', 'sigma', '2sigma', '3sigma'});
ratio = nnz(C == '-sigma' | C == 'sigma') / numel(C)
``````

Regrouper des valeurs datetime par mois.

``````matlab
T = datetime(2016, 1, [31; 60; 335]);
C = discretize(T, 'month', 'categorical')
``````

Regrouper des valeurs duration par heure.

``````matlab
D = minutes([30; 90; 150; 210]);
C = discretize(D, 'hour', 'categorical', 'hh:mm:ss')
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
