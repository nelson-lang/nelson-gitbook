#import "nelson_help.typ": *

= integral3 <special_functions:integral3>

Évalue numériquement une intégrale triple.

== Syntaxe

- #raw("q = integral3(fun, xmin, xmax, ymin, ymax, zmin, zmax)");
- #raw("q = integral3(fun, xmin, xmax, ymin, ymax, zmin, zmax, name, value)");

== Argument d'entrée

/ fun: Fonction à intégrer : handle de fonction de x, y et z.
/ xmin, xmax: Bornes d'intégration en x.
/ ymin, ymax: Bornes en y : scalaires ou handles de fonction de x.
/ zmin, zmax: Bornes en z : scalaires ou handles de fonction de x et y.
/ name, value: Options : 'RelativeTolerance' (défaut 1e-6), 'AbsoluteTolerance' (défaut 1e-10), 'Method', 'Vectorized' et 'Waypoints'. Les anciens noms 'RelTol' et 'AbsTol' restent acceptés.

== Argument de sortie

/ q: Intégrale triple calculée.

== Description

#strong[integral3]; évalue une intégrale triple sur un domaine rectangulaire ou borné par des fonctions.

 Les appels finis vectorisés utilisent une règle de Gauss-Kronrod en tuiles. Les bornes infinies et #strong[Method]; égal à #strong['iterated']; utilisent une quadrature adaptative imbriquée.

 #strong[Waypoints]; indique des points d'intérêt du domaine d'intégration, comme des extrema locaux ou des discontinuités, que l'intégrateur utilise dans son maillage initial : un tableau à trois colonnes #strong[\[x y z\]]; de points, ou un tableau de cellules #strong[{x y z}]; de vecteurs de grille. Les intervalles en x, y et z sont découpés aux coordonnées correspondantes des points de passage. Les points de passage doivent être réels et finis. N'utilisez pas de points de passage pour indiquer des singularités ; découpez plutôt le domaine.


== Exemples

``````matlab
q = integral3(@(x, y, z) y .* sin(x) + z .* cos(x), 0, pi, 0, 1, -1, 1)
``````

Points de passage sur les points anguleux de la fonction (valeur exacte 0.29 \* 0.26 \* 0.34)

``````matlab
fun = @(x, y, z) abs(x - 0.3) .* abs(y - 0.6) .* abs(z - 0.2);
q = integral3(fun, 0, 1, 0, 1, 0, 1, 'Waypoints', [0.3, 0.6, 0.2])
``````


== Voir aussi

#nlink(<special_functions:integral>)[integral];, #nlink(<special_functions:integral2>)[integral2];, #nlink(<special_functions:quadgk>)[quadgk];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [Noms 'AbsoluteTolerance' et 'RelativeTolerance' ajoutés ('AbsTol' et 'RelTol' restent acceptés).],
  [2.0.0], [Option 'Waypoints' ajoutée : points d'intérêt du domaine d'intégration.],
)

// Auteur: Allan CORNET
