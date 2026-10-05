#import "nelson_help.typ": *

= overloading <overload:overloading>

Personnalisation des opérateurs et fonctions

== Description

Dans divers scénarios, vous pouvez avoir besoin de modifier le comportement des opérateurs et fonctions de Nelson lorsqu'ils opèrent sur des objets ou des types de base.

 Cette personnalisation peut être réalisée en surchargeant les fonctions concernées, leur permettant de gérer différents types et nombres d'arguments d'entrée et d'exécuter l'opération appropriée pour l'objet de plus haute priorité.

 

 Surcharge des opérateurs :

 

 Chaque opérateur intégré correspond à un nom de fonction spécifique (par exemple, l'opérateur #strong[-]; est associé à la fonction minus.m).

 Vous pouvez surcharger n'importe quel opérateur en créant un fichier M avec le nom approprié dans le répertoire de la classe.

 Par exemple, si #strong[A]; ou #strong[B]; est un objet de type #strong[classname];, l'expression #strong[A - B]; déclenche un appel à la fonction #strong[\@classname\/minus.m];, si elle existe.

 Lorsque #strong[A]; et #strong[B]; appartiennent à des classes différentes, Nelson applique des règles de précédence pour déterminer la méthode à utiliser.

 

 Le tableau ci-dessous fournit la liste des noms de fonctions associés à la plupart des opérateurs Nelson :

 

 

#table(
  columns: 3,
  [Description], [Opérateur], [Fonction], 
  [Addition binaire], [a + b], [plus(a, b)], 
  [Soustraction binaire], [a - b], [minus(a, b)], 
  [Moins unaire], [-a], [uminus(a)], 
  [Plus unaire], [+a], [uplus(a)], 
  [Multiplication élément par élément], [a .\* b], [times(a, b)], 
  [Multiplication matricielle], [a \* b], [mtimes(a, b)], 
  [Division élément par élément à droite], [a .\/ b], [rdivide(a, b)], 
  [Division élément par élément à gauche], [a .\\ b], [ldivide(a, b)], 
  [Division matricielle à droite], [a \/ b], [mrdivide(a, b)], 
  [Division matricielle à gauche], [a \\ b], [mldivide(a, b)], 
  [Puissance élément par élément], [a .^ b], [power(a, b)], 
  [Puissance matricielle], [a ^ b], [mpower(a, b)], 
  [Inférieur à], [a \< b], [lt(a, b)], 
  [Supérieur à], [a \> b], [gt(a, b)], 
  [Inférieur ou égal], [a \<\= b], [le(a, b)], 
  [Supérieur ou égal], [a \>\= b], [ge(a, b)], 
  [Différent], [a \~\= b], [ne(a, b)], 
  [Égalité], [a \=\= b], [eq(a, b)], 
  [ET logique], [a & b], [and(a, b)], 
  [OU logique], [a | b], [or(a, b)], 
  [NON logique], [\~a], [not(a)], 
  [Opérateur deux-points], [a:d:b], [colon(a, d, b)], 
  [Transposée conjuguée], [a'], [ctranspose(a)], 
  [Transposée matricielle], [a.'], [transpose(a)], 
  [Méthode d'affichage], [sortie fenêtre de commandes], [display(a)], 
  [Concaténation horizontale], [\[a, b\]], [horzcat(a, b, ...)], 
  [Concaténation verticale], [\[a; b\]], [vertcat(a, b, ...)], 
  [Référence par indice], [a(s1, s2, ... , sn)], [subsref(a, s)], 
  [Affectation par indice], [a(s1, ... , sn) \= b], [subsasgn(a, s, b)], 
  [Index de sous-script], [b(a)], [subsindex(a)], 
)

== Exemple

Surcharger l'opérateur minus pour double

``````matlab
% save in @double directory, as minus.m
function r = minus(A, B)
  disp('minus was called')
  % to call minus builtin
  r = builtin('minus', A, B)
end

``````


== Voir aussi

#nlink(<operators:plus>)[plus];, #nlink(<operators:minus>)[minus];, #nlink(<operators:uminus>)[uminus];, #nlink(<operators:uplus>)[uplus];, #nlink(<operators:times>)[times];, #nlink(<operators:mtimes>)[mtimes];, #nlink(<operators:rdivide>)[rdivide];, #nlink(<operators:ldivide>)[ldivide];, #nlink(<operators:mrdivide>)[mrdivide];, #nlink(<operators:mldivide>)[mldivide];, #nlink(<operators:power>)[power];, #nlink(<operators:mpower>)[mpower];, #nlink(<operators:lt>)[lt];, #nlink(<operators:gt>)[gt];, #nlink(<operators:le>)[le];, #nlink(<operators:ge>)[ge];, #nlink(<operators:ne>)[ne];, #nlink(<operators:eq>)[eq];, #nlink(<operators:and>)[and];, #nlink(<operators:or>)[or];, #nlink(<operators:not>)[not];, #nlink(<operators:colon>)[colon];, #nlink(<operators:ctranspose>)[ctranspose];, #nlink(<operators:transpose>)[transpose];, #nlink(<display_format:display>)[display];, #nlink(<operators:horzcat>)[horzcat];, #nlink(<operators:vertcat>)[vertcat];, #nlink(<operators:subsref>)[subsref];, #nlink(<operators:subsasgn>)[subsasgn];, #nlink(<operators:subsindex>)[subsindex];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
