#import "nelson_help.typ": *

= deconv <polynomial_functions:deconv>

Déconvolution et division polynomiale.

== Syntaxe

- #raw("[q, r] = deconv(b, a)");

== Argument d'entrée

/ a: vecteurs ligne ou colonne
/ b: vecteurs ligne ou colonne

== Argument de sortie

/ q: quotient : vecteur ligne ou colonne
/ r: reste : vecteur ligne ou colonne

== Description

#strong[\[q, r\] \= deconv(b, a)]; effectue la déconvolution du vecteur#strong[b]; par le vecteur #strong[a]; en utilisant la division longue.

 Elle renvoie le quotient #strong[q]; et le reste #strong[r]; tels que #strong[b \= conv(a, q) + r];.

 Dans le contexte des coefficients polynomiaux, la déconvolution des vecteurs#strong[b]; et #strong[a]; revient à diviser le polynôme représenté par#strong[b]; par celui représenté par #strong[a];.


== Exemple

``````matlab

b = [1; 2; -1];  % Dividend (x^2 + 2x - 1)
a = [1; 1];      % Divisor (x + 1)

[q, r] = deconv(b, a)
``````


== Voir aussi

#nlink(<data_analysis:conv>)[conv];, #nlink(<polynomial_functions:poly>)[poly];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [version initiale],
)

// Auteur: Allan CORNET
