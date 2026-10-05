#import "nelson_help.typ": *

= commentaires <interpreter:comments>

Ajouter des commentaires au code Nelson.

== Syntaxe

- #raw("% commentaire");
- #raw("code % commentaire en ligne");
- #raw("%{");
- #raw("commentaire bloc");
- #raw("%}");

== Description

Les commentaires sont utilisés pour décrire le code et améliorer la lisibilité. Ils sont ignorés lors de l'exécution.

 Nelson prend en charge les commentaires sur une seule ligne en utilisant le caractère #strong[%]; et les commentaires de bloc en utilisant les délimiteurs #strong[%{]; et #strong[%}];.

 Les délimiteurs de commentaires de bloc doivent apparaître seuls sur leurs lignes respectives. Tout texte entre eux est traité comme un commentaire.

 Les commentaires multilignes sont pris en charge par l'interpréteur, l'éditeur, le débogueur, et la fonction #strong[headcomments];.


== Exemples

Commentaires sur une seule ligne et commentaires en ligne

``````matlab

% Ajouter deux nombres
a = 1;
b = 2;
c = a + b; % stocker le résultat

``````

Commentaires de bloc

``````matlab

a = magic(3);
%{
sum(a)
diag(a)
sum(diag(a))
%}
disp(a)

``````


== Voir aussi

#nlink(<help_tools:headcomments>)[headcomments];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [Version initiale.],
)

// Auteur: Allan CORNET
