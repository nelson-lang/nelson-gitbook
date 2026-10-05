#import "nelson_help.typ": *

= break <interpreter:break>

sortir d'une boucle.

== Syntaxe

- #raw("break");

== Description

L'instruction#strong[break]; est utilisée pour sortir prématurément d'une boucle.

 L'instruction#strong[break]; peut être utilisée à l'intérieur d'une boucle #strong[for]; ou#strong[while];.


== Exemple

``````matlab

for i = 1:10
  if i == 5
   disp('i == 5');
   break;
  end
  disp(i)
end

``````


== Voir aussi

#nlink(<interpreter:abort>)[return];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
