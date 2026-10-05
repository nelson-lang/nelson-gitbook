#import "nelson_help.typ": *

= detrend <data_analysis:detrend>

Retire une tendance polynomiale.

== Syntaxe

- #raw("y = detrend(x)");
- #raw("y = detrend(x, n)");
- #raw("y = detrend(x, method)");
- #raw("y = detrend(x, n, bp)");

== Argument d'entrée

/ x: un vecteur ou une matrice reelle. Pour une matrice, chaque colonne est traitee independamment.
/ n: ordre de la tendance : 0 retire la moyenne, 1 (defaut) retire la droite de meilleur ajustement.
/ method: 'constant' (equivalent a 0) ou 'linear' (equivalent a 1).
/ bp: points de rupture donnes comme indices de lignes, produisant une tendance lineaire par morceaux continue.

== Argument de sortie

/ y: les donnees privees de la tendance, de meme taille et classe que #strong[x];.

== Description

#strong[detrend]; retire une tendance polynomiale de faible degre par un ajustement aux moindres carres et retourne le residu.

 Par defaut la fonction retire une tendance lineaire. Avec #strong[n]; egal a 0 (ou la methode #strong['constant'];) elle retire seulement la moyenne. Les points de rupture produisent une tendance lineaire par morceaux continue aux indices de lignes donnes.

 Une entree vecteur ligne retourne un vecteur ligne ; une entree vecteur colonne retourne un vecteur colonne.


== Exemples

``````matlab
t = 0:0.1:2;
x = 3 * t + sin(t);
y = detrend(x)

``````

``````matlab
y = detrend([1 3 2 4 6], 'constant')

``````


== Voir aussi

#nlink(<data_analysis:cumsum>)[cumsum];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];, #nlink(<polynomial_functions:polyfit>)[polyfit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
