#import "nelson_help.typ": *

= tilde <interpreter:ignore_outputs_function>

Ignore les sorties d'une fonction.

== Syntaxe

- #raw("[~, A, ~] = svd(B)");

== Description

La syntaxe #strong[tilde]; permet d'ignorer des sorties spécifiques de fonctions qui renvoient plusieurs valeurs. En utilisant le symbole tilde (\~) dans la liste des sorties, vous pouvez indiquer quelles sorties vous ne souhaitez pas capturer.

 Cela est particulièrement utile lorsque vous ne vous intéressez qu'à certains résultats d'une fonction et que vous souhaitez éviter des affectations de variables inutiles.

 Par exemple, lors de l'utilisation de la fonction de Décomposition en Valeurs Singulières (SVD), vous pouvez ne vouloir que les valeurs singulières et non les vecteurs singuliers gauche ou droit. Vous pouvez y parvenir en utilisant le symbole tilde pour ignorer les sorties indésirables.


== Exemple

in a file: demo\_function.m

``````matlab

      A = rand(4,4);
      [~, S, ~] = svd(A);

``````


== Voir aussi

#nlink(<interpreter:function>)[function];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
