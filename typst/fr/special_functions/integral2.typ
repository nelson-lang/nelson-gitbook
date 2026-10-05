#import "nelson_help.typ": *

= integral2 <special_functions:integral2>

Évalue numériquement une intégrale double

== Syntaxe

- #raw("q = integral2(fun, xmin, xmax, ymin, ymax)");
- #raw("q = integral2(fun, xmin, xmax, ymin, ymax, nom, valeur)");

== Argument d'entrée

/ fun: Fonction à intégrer : handle de fonction de deux variables.
/ xmin, xmax: Bornes d'intégration en x : scalaires réels ou infinis.
/ ymin, ymax: Bornes d'intégration en y : scalaires réels ou handles de fonction de x.
/ nom, valeur: Une ou plusieurs paires nom\/valeur : 'RelativeTolerance', 'AbsoluteTolerance', 'Vectorized', 'Waypoints'.

== Argument de sortie

/ q: Valeur de l'intégrale double.

== Description

#strong[q \= integral2(fun, xmin, xmax, ymin, ymax)]; intègre numériquement la fonction #strong[fun(x, y)]; sur le domaine #strong[xmin \<\= x \<\= xmax]; et #strong[ymin(x) \<\= y \<\= ymax(x)];.

 Les bornes en y #strong[ymin]; et #strong[ymax]; peuvent être des scalaires ou des handles de fonction de #strong[x]; pour décrire un domaine non rectangulaire.

 L'intégration utilise une quadrature de Gauss-Kronrod adaptative imbriquée. Les paires nom\/valeur #strong[RelativeTolerance]; (défaut #strong[1e-6];) et #strong[AbsoluteTolerance]; (défaut #strong[1e-10];) contrôlent la précision ; les anciens noms #strong[RelTol]; et #strong[AbsTol]; restent acceptés.

 Par défaut (#strong[Vectorized]; à #strong[true];), #strong[fun]; doit accepter des tableaux et opérer élément par élément. Mettez #strong[Vectorized]; à #strong[false]; lorsque #strong[fun]; n'accepte que des arguments scalaires : elle est alors évaluée point par point, ce qui est plus lent.

 #strong[Waypoints]; indique des points d'intérêt du domaine d'intégration, comme des extrema locaux ou des discontinuités, que l'intégrateur utilise dans son maillage initial : un tableau à deux colonnes #strong[\[x y\]]; de points, ou un tableau de cellules #strong[{x y}]; de vecteurs de grille. L'intervalle en x est découpé aux abscisses x des points de passage, et chaque intervalle en y à leurs ordonnées y. Les points de passage doivent être réels et finis. N'utilisez pas de points de passage pour indiquer des singularités ; découpez plutôt le domaine.


== Exemples

``````matlab
q = integral2(@(x, y) x .* y, 0, 1, 0, 1)
``````

``````matlab
q = integral2(@(x, y) x .* y, 0, 1, 0, @(x) x)
``````

Fonction écrite pour des entrées scalaires

``````matlab
fun = @(x, y) log(x^2 + y^2);
q = integral2(fun, 0, 2, 0, 2, 'Vectorized', false)
``````

Points de passage sur les points anguleux de la fonction (valeur exacte 0.29 \* 0.26)

``````matlab
fun = @(x, y) abs(x - 0.3) .* abs(y - 0.6);
q = integral2(fun, 0, 1, 0, 1, 'Waypoints', [0.3, 0.6])
``````


== Voir aussi

#nlink(<special_functions:integral>)[integral];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [Option 'Vectorized' ajoutée : intégration de fonctions écrites pour des entrées scalaires.],
  [2.0.0], [Noms 'AbsoluteTolerance' et 'RelativeTolerance' ajoutés ('AbsTol' et 'RelTol' restent acceptés).],
  [2.0.0], [Option 'Waypoints' ajoutée : points d'intérêt du domaine d'intégration.],
)

// Auteur: Allan CORNET
