#import "nelson_help.typ": *

= Opérateurs

Le module Operators fournit des outils pour effectuer des opérations arithmétiques, logiques, relationnelles et sur tableaux dans Nelson.

 Il prend en charge les calculs élément par élément et matriciels, la concaténation, l'indexation et l'affectation par indices, ainsi que les opérations logiques à court-circuit.

 Ce module permet une manipulation flexible des structures de données et des tableaux numériques, constituant la base des calculs simples comme des expressions mathématiques avancées.

== Functions

- #nlink(<operators:all>)[all]: tous les éléments d'une matrice satisfont une condition.
- #nlink(<operators:and>)[and]: opérateur logique 'AND', &
- #nlink(<operators:any>)[any]: Vérifie si au moins un élément d'une matrice satisfait une condition.
- #nlink(<operators:bitand>)[bitand]: Opération ET bit à bit
- #nlink(<operators:bitget>)[bitget]: Retourne des bits selectionnes.
- #nlink(<operators:bitor>)[bitor]: Opération OR bit à bit
- #nlink(<operators:bitxor>)[bitxor]: Opération XOR bit à bit
- #nlink(<operators:cat>)[cat]: Concatène des tableaux.
- #nlink(<operators:colon>)[colon]: Opérateur deux-points ':'
- #nlink(<operators:ctranspose>)[ctranspose]: Renvoie la transposée conjuguée complexe : opérateur '
- #nlink(<operators:eq>)[eq]: égalité, opérateur \=\=
- #nlink(<operators:ge>)[ge]: supérieur ou égal, opérateur \>\=
- #nlink(<operators:gt>)[gt]: supérieur à, opérateur \>
- #nlink(<operators:horzcat>)[horzcat]: Concaténation horizontale.
- #nlink(<operators:ismember>)[ismember]: Éléments d'un tableau présents dans un autre tableau.
- #nlink(<operators:ldivide>)[ldivide]: Division gauche, opérateur .\\
- #nlink(<operators:le>)[le]: inférieur ou égal, opérateur \<\=
- #nlink(<operators:lt>)[lt]: inférieur à, opérateur \<
- #nlink(<operators:minus>)[minus]: Soustraction, opérateur -
- #nlink(<operators:mldivide>)[mldivide]: Division matricielle gauche, opérateur \\
- #nlink(<operators:mpower>)[mpower]: Puissance matricielle, opérateur ^
- #nlink(<operators:mrdivide>)[mrdivide]: Division matricielle à droite, opérateur \/.
- #nlink(<operators:mtimes>)[mtimes]: Multiplication matricielle, opérateur \*
- #nlink(<operators:ne>)[ne]: Inégalité, opérateur \~\=
- #nlink(<operators:not>)[not]: négation logique, opérateur \~
- #nlink(<operators:or>)[or]: Opérateur logique 'OU', |
- #nlink(<operators:plus>)[plus]: Addition, opérateur +
- #nlink(<operators:power>)[power]: Puissance élément par élément, opérateur .^
- #nlink(<operators:rdivide>)[rdivide]: Division droite, opérateur .\/
- #nlink(<operators:shortcutand>)[shortcutand]: Opérateur AND à court-circuit, & &
- #nlink(<operators:shortcutor>)[shortcutor]: Opérateur OR à court-circuit, ||
- #nlink(<operators:subsasgn>)[subsasgn]: Redéfinir l'affectation par indice.
- #nlink(<operators:subsindex>)[subsindex]: Convertir un objet en vecteur d'indices.
- #nlink(<operators:subsref>)[subsref]: Référence par indice.
- #nlink(<operators:times>)[mtimes]: Multiplication élément par élément, opérateur .\*
- #nlink(<operators:transpose>)[transpose]: Retourne la transposée d'un vecteur ou d'une matrice : opérateur .'
- #nlink(<operators:uminus>)[uminus]: Unaire moins, opérateur -
- #nlink(<operators:uplus>)[uplus]: Unaire plus, opérateur +
- #nlink(<operators:vertcat>)[vertcat]: Concaténation verticale.


#nested[
#pagebreak(weak: true)
#include "all.typ"
#pagebreak(weak: true)
#include "and.typ"
#pagebreak(weak: true)
#include "any.typ"
#pagebreak(weak: true)
#include "bitand.typ"
#pagebreak(weak: true)
#include "bitget.typ"
#pagebreak(weak: true)
#include "bitor.typ"
#pagebreak(weak: true)
#include "bitxor.typ"
#pagebreak(weak: true)
#include "cat.typ"
#pagebreak(weak: true)
#include "colon.typ"
#pagebreak(weak: true)
#include "ctranspose.typ"
#pagebreak(weak: true)
#include "eq.typ"
#pagebreak(weak: true)
#include "ge.typ"
#pagebreak(weak: true)
#include "gt.typ"
#pagebreak(weak: true)
#include "horzcat.typ"
#pagebreak(weak: true)
#include "ismember.typ"
#pagebreak(weak: true)
#include "ldivide.typ"
#pagebreak(weak: true)
#include "le.typ"
#pagebreak(weak: true)
#include "lt.typ"
#pagebreak(weak: true)
#include "minus.typ"
#pagebreak(weak: true)
#include "mldivide.typ"
#pagebreak(weak: true)
#include "mpower.typ"
#pagebreak(weak: true)
#include "mrdivide.typ"
#pagebreak(weak: true)
#include "mtimes.typ"
#pagebreak(weak: true)
#include "ne.typ"
#pagebreak(weak: true)
#include "not.typ"
#pagebreak(weak: true)
#include "or.typ"
#pagebreak(weak: true)
#include "plus.typ"
#pagebreak(weak: true)
#include "power.typ"
#pagebreak(weak: true)
#include "rdivide.typ"
#pagebreak(weak: true)
#include "shortcutand.typ"
#pagebreak(weak: true)
#include "shortcutor.typ"
#pagebreak(weak: true)
#include "subsasgn.typ"
#pagebreak(weak: true)
#include "subsindex.typ"
#pagebreak(weak: true)
#include "subsref.typ"
#pagebreak(weak: true)
#include "times.typ"
#pagebreak(weak: true)
#include "transpose.typ"
#pagebreak(weak: true)
#include "uminus.typ"
#pagebreak(weak: true)
#include "uplus.typ"
#pagebreak(weak: true)
#include "vertcat.typ"
]
