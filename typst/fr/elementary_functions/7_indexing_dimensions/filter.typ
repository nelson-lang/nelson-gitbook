#import "../nelson_help.typ": *

= filter <elementary_functions:7_indexing_dimensions.filter>

Filtre numérique 1-D

== Syntaxe

- #raw("y = filter(b, a, x)");
- #raw("y = filter(b, a, x, zi)");
- #raw("y = filter(b, a, x, zi, dim)");
- #raw("[y, zf] = filter(...)");

== Argument d'entrée

/ b: Coefficients du numérateur de la fonction de transfert rationnelle : vecteur.
/ a: Coefficients du dénominateur de la fonction de transfert rationnelle : vecteur.
/ x: Données d'entrée : matrice.
/ zi: conditions initiales du filtre.
/ dim: dimension de calcul.

== Argument de sortie

/ y: Données filtrées : matrice.
/ zf: conditions finales du filtre.

== Description

La fonction #strong[filter(b, a, x)]; applique une fonction de transfert rationnelle pour filtrer le tableau de données d'entrée #strong[x];.

 Cette fonction de transfert est définie par les coefficients du numérateur (#strong[b];) et du dénominateur (#strong[a];).

 Si le premier coefficient de #strong[a]; (a(1)) est différent de 1, le filtre normalise les coefficients par a(1). Il est essentiel que a(1) soit non nul.

 Lorsque #strong[x]; est un vecteur, la fonction renvoie un vecteur de même taille contenant les données filtrées.

 Les entrees sparse ne sont pas prises en charge.

 Les conditions initiales et finales ont l'ordre du filtre comme premiere dimension, suivi des dimensions de #strong[x]; sauf la dimension filtree.


== Exemple

``````matlab
f = figure();
rng default
t = linspace(-pi,pi,100);
X = sin(t) + (0.33 * rand(size(t)));
windowSize = 7;
b = (1/windowSize)*ones(1,windowSize);
a = 1;
y = filter(b, a, X);
plot(t, X)
hold on
plot(t, y)
legend(_('Input Data'), _('Filtered Data'));

``````


== Voir aussi

#nlink(<data_analysis:conv>)[conv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [documentation des conditions initiales et finales, du support de dimension et de la validation des entrees sparse],
)

// Auteur: Allan CORNET
