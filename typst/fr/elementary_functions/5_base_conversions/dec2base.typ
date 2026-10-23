#import "../nelson_help.typ": *

= dec2base <elementary_functions:5_base_conversions.dec2base>

Convertit un nombre décimal vers une autre base.

== Syntaxe

- #raw("R = dec2base(D, B)");
- #raw("R = dec2base(D, B, N)");

== Argument d'entrée

/ D: un entier non négatif inférieur à la valeur retournée par flintmax, ou une valeur négative d'un type entier signé (int8, int16, int32, int64).
/ B: un entier : \[2, 36\].
/ N: un entier : nombre de chiffres.

== Argument de sortie

/ R: résultat de dec2base : tableau de caractères.

== Description

#strong[dec2base]; convertit un nombre décimal vers une autre base.

 Des valeurs sont mises en cache pour accélérer les calculs ultérieurs ; utiliser#strong[dec2base(\[\], 2)]; pour vider le cache.

 Une valeur négative d'un type entier signé est convertie en utilisant la représentation en complément à deux sur la largeur native du type (8, 16, 32 ou 64 bits) ; ainsi #strong[dec2base(int8(-1), 16)]; retourne #strong['FF'];.


== Exemples

``````matlab
X = [65535 128; 1 0]
Y = dec2base(X, 2)
Y = dec2base(X, 2, 26)

``````

``````matlab
Y = dec2base(int8(-1), 16)
``````


== Voir aussi

#nlink(<elementary_functions:5_base_conversions.base2dec>)[base2dec];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
