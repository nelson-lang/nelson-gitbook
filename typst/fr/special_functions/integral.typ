#import "nelson_help.typ": *

= integral <special_functions:integral>

Évalue numériquement une intégrale (quadrature adaptative)

== Syntaxe

- #raw("q = integral(fun, a, b)");
- #raw("q = integral(fun, a, b, nom, valeur)");

== Argument d'entrée

/ fun: Fonction à intégrer : handle de fonction.
/ a: Borne inférieure d'intégration : scalaire réel (fini ou infini) ou scalaire complexe fini.
/ b: Borne supérieure d'intégration : scalaire réel (fini ou infini) ou scalaire complexe fini.
/ nom, valeur: Une ou plusieurs paires nom\/valeur : 'RelativeTolerance', 'AbsoluteTolerance', 'ArrayValued', 'Vectorized', 'Waypoints'.

== Argument de sortie

/ q: Valeur de l'intégrale.

== Description

#strong[q \= integral(fun, a, b)]; intègre numériquement la fonction #strong[fun]; de #strong[a]; à #strong[b]; par une quadrature de Gauss-Kronrod adaptative globale.

 Par défaut, #strong[fun]; est supposée vectorisée : elle doit accepter un vecteur d'abscisses et renvoyer un vecteur de même taille.

 Les bornes #strong[a]; et #strong[b]; peuvent être infinies (#strong[-Inf]; et\/ou #strong[Inf];) ; un changement de variable ramène l'intervalle à un intervalle fini.

 Si #strong[a];, #strong[b]; ou un point de passage est complexe, #strong[integral]; calcule l'intégrale le long des segments reliant #strong[a];, les points de passage dans l'ordre donné, puis #strong[b];. Les bornes et points de passage complexes doivent être finis.

 Les paires nom\/valeur suivantes sont prises en charge :

 #strong[RelativeTolerance]; (ou #strong[RelTol];) : tolérance d'erreur relative (défaut #strong[1e-6];).

 #strong[AbsoluteTolerance]; (ou #strong[AbsTol];) : tolérance d'erreur absolue (défaut #strong[1e-10];).

 #strong[integral]; cherche à satisfaire #strong[abs(q - Q) \<\= max(AbsoluteTolerance, RelativeTolerance \* abs(q))]; où #strong[Q]; est la valeur exacte.

 #strong[ArrayValued]; : si #strong[true];, #strong[fun]; renvoie un tableau et est évaluée en une abscisse scalaire (défaut #strong[false];).

 #strong[Vectorized]; : si #strong[false];, #strong[fun]; est écrite pour des entrées scalaires : elle accepte un #strong[x]; scalaire et renvoie un scalaire, et #strong[integral]; l'évalue point par point (défaut #strong[true];, plus rapide). Ignorée si #strong[ArrayValued]; vaut #strong[true];.

 #strong[Waypoints]; : vecteur de points réels ou complexes finis utilisés dans le maillage initial. Avec des bornes et des points de passage réels, l'intervalle est découpé aux points de passage situés à l'intérieur (leur ordre est sans importance) : ils servent à signaler les discontinuités ou les extrema locaux de la fonction. N'utilisez pas de points de passage pour indiquer des singularités ; découpez plutôt l'intervalle. Des points de passage complexes définissent un contour linéaire par morceaux.


== Exemples

``````matlab
q = integral(@(x) x.^2, 0, 1)
``````

``````matlab
q = integral(@(x) exp(-x.^2), 0, Inf)
``````

``````matlab
q = integral(@(x) [1; 1] .* x, 0, 1, 'ArrayValued', true)
``````

Singularité en la borne inférieure : tolérances plus strictes

``````matlab
format long
q1 = integral(@log, 0, 1)
q2 = integral(@log, 0, 1, 'AbsoluteTolerance', 1e-12, 'RelativeTolerance', 0)
format short
``````

Intégrale d'une fonction écrite pour des entrées scalaires

``````matlab
fun = @(x) 2*x - x^2;
q = integral(fun, 0, 1, 'Vectorized', false)
``````

Intégrale sur un contour complexe défini par des points de passage (chemin fermé autour du pôle z \= 1\/2)

``````matlab
fun = @(z) 1 ./ (2*z - 1);
q = integral(fun, 0, 0, 'Waypoints', [1+1i, 1-1i])
``````


== Voir aussi

#nlink(<special_functions:integral2>)[integral2];, #nlink(<special_functions:integralInterpolant>)[integralInterpolant];, #nlink(<linear_algebra:1_linear_systems.trapz>)[trapz];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
  [2.0.0], [Option 'Waypoints' et bornes complexes (intégrale sur un contour) ajoutées.],
  [2.0.0], [Option 'Vectorized' ajoutée : intégration de fonctions écrites pour des entrées scalaires.],
  [2.0.0], [Noms 'AbsoluteTolerance' et 'RelativeTolerance' ajoutés ('AbsTol' et 'RelTol' restent acceptés).],
)

// Auteur: Allan CORNET
