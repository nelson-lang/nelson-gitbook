#import "nelson_help.typ": *

= isreal <types:isreal>

Renvoie vrai si toute la partie imaginaire est un tableau de zéros.

== Syntaxe

- #raw("res = isreal(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un booléen : true ou false

== Description

#strong[isreal]; renvoie un booléen vrai si var n'est pas stocké comme un complexe.

 Un tableau stocké comme un complexe n'est pas réel, même vide ou avec des parties imaginaires nulles : #strong[isreal(complex(\[\]))]; et #strong[isreal(complex(1))]; renvoient faux. Une opération arithmétique, une indexation ou une suppression dont le résultat est vide renvoie un tableau réel.


== Exemples

``````matlab
A = 1 + 0i;
res = isreal(A)
``````

``````matlab
B = uint8(3);
res = isreal(B)
``````

``````matlab
A = single([3, i]);
res = isreal(A)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<types:isint8>)[isint8];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
