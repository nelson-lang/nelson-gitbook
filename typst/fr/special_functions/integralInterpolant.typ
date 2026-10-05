#import "nelson_help.typ": *

= integralInterpolant <special_functions:integralInterpolant>

Intégrale définie à borne supérieure variable (objet interpolant d'intégrale)

== Syntaxe

- #raw("F = integralInterpolant(integrand, lower, upper)");
- #raw("F = integralInterpolant(integrand, lower, upper, nom, valeur)");
- #raw("Fq = F(xq)");

== Argument d'entrée

/ integrand: handle de la fonction à intégrer, avec les mêmes exigences que pour #strong[integral];.
/ lower: borne inférieure d'intégration : scalaire réel, fini ou infini.
/ upper: borne supérieure d'intégration : scalaire réel, fini ou infini, différent de #strong[lower];. Elle peut être inférieure à #strong[lower]; (intégration à rebours).
/ nom, valeur: une ou plusieurs paires nom\/valeur : 'AbsoluteTolerance' (défaut 1e-10), 'RelativeTolerance' (défaut 1e-6), 'ArrayValued' (défaut false), 'Vectorized' (défaut true), 'Waypoints' (vecteur de points réels utilisés dans le maillage initial).
/ xq: tableau numérique réel de points de requête.

== Argument de sortie

/ F: un objet integralInterpolant.
/ Fq: valeurs de l'intégrale de #strong[lower]; à chaque point de requête : un tableau de la taille de #strong[xq]; ou, si #strong[ArrayValued]; vaut true, un tableau avec une ligne par point de requête.

== Description

#strong[integralInterpolant]; évalue une intégrale définie à borne supérieure variable : l'objet renvoyé #strong[F]; donne #strong[F(x)];, l'intégrale de #strong[integrand]; de #strong[lower]; à #strong[x];, pour tout #strong[x]; compris entre #strong[lower]; et #strong[upper];.

 L'intégrale de #strong[lower]; à #strong[upper]; est calculée une seule fois par la quadrature de Gauss-Kronrod adaptative de #strong[integral];. La requête #strong[F(xq)]; ajoute les sommes partielles des intervalles du maillage situés avant chaque point de requête à la règle de Gauss-Kronrod appliquée sur la partie de l'intervalle qui le contient ; les valeurs obtenues ont donc la précision de l'intégrale. Les points de requête hors de l'intervalle d'intégration renvoient #strong[NaN];.

 L'objet possède les propriétés en lecture seule #strong[Integrand];, #strong[LowerLimit];, #strong[UpperLimit];, #strong[Integral]; (valeur de l'intégrale de #strong[lower]; à #strong[upper];), #strong[ErrorBound]; (majorant approché de l'erreur absolue), #strong[AbsoluteTolerance];, #strong[RelativeTolerance]; et #strong[Subintervals]; (vecteur ligne des points du maillage, de #strong[lower]; à #strong[upper];, points de passage inclus). #strong[F(F.Subintervals)]; renvoie les sommes partielles de l'intégrale.

 Indiquez les discontinuités de la fonction avec #strong[Waypoints];. N'utilisez pas de points de passage pour indiquer des singularités aux bornes d'intégration. Pour des évaluations plus rapides mais moins précises, échantillonnez #strong[F]; et construisez un #strong[griddedInterpolant];.


== Exemples

Intégrale de 1 + cos(x)^2 à borne supérieure variable.

``````matlab
f = @(x) 1 + cos(x).^2;
F = integralInterpolant(f, 0, 5)
xq = linspace(1, 3, 5);
Fq = F(xq)
``````

Intégrale impropre.

``````matlab
f = @(x) x.^5 .* exp(-x) .* sin(x);
F = integralInterpolant(f, 0, Inf, 'RelativeTolerance', 1e-8, 'AbsoluteTolerance', 1e-13);
Fq = F([0 Inf])
``````

Sommes partielles d'une fonction à valeurs tableau.

``````matlab
k = 1:5;
f = @(x) sin(k * x);
F = integralInterpolant(f, 0, 1, 'ArrayValued', true);
partialSums = F(F.Subintervals(end-5:end))
``````

Conversion en interpolant sur grille.

``````matlab
f = @(x) x.^x;
F = integralInterpolant(f, 1, 2);
x = linspace(1, 2, 11);
G = griddedInterpolant(x, F(x), 'cubic');
Fq = F(1.88)
Gq = G(1.88)
``````


== Voir aussi

#nlink(<special_functions:integral>)[integral];, #nlink(<linear_algebra:1_linear_systems.cumtrapz>)[cumtrapz];, #nlink(<special_functions:griddedInterpolant>)[griddedInterpolant];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
