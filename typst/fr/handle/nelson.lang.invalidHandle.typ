#import "nelson_help.typ": *

= nelson.lang.invalidHandle <handle:nelson.lang.invalidHandle>

Creer un handle invalide avec une classe handle donnee.

== Syntaxe

- #raw("h = nelson.lang.invalidHandle(classname)");
- #raw("h = nelson.lang.invalidHandle(classname, n)");
- #raw("h = nelson.lang.invalidHandle(classname, m, n, ...)");
- #raw("h = nelson.lang.invalidHandle(classname, sz)");

== Argument d'entrée

/ classname: nom d'une classe handle sous forme de vecteur de caracteres ou de string scalaire.
/ n, m, sz: dimensions entieres positives ou nulles du tableau de handles retourne.

== Argument de sortie

/ h: un scalaire ou tableau de handles invalides dont la classe est #strong[classname];.

== Description

#strong[nelson.lang.invalidHandle]; cree une valeur handle qui possede la classe demandee mais qui n'est pas valide.

 #strong[isvalid(h)]; retourne faux pour chaque element du resultat.

 Le nom de classe doit identifier une classe classdef handle. Les classes valeur et les noms de classe inconnus provoquent une erreur.

 Sans argument de dimension, le resultat est scalaire. Avec une dimension scalaire numerique #strong[n];, le resultat est #strong[n];-par-#strong[n];. Avec plusieurs dimensions scalaires ou un vecteur numerique #strong[sz];, le resultat a ces dimensions.

 Cette fonction est utile pour les API qui doivent conserver la classe d'une cible handle absente.

 La valeur retournee se comporte comme un tableau de handles pour la classe, la taille, la concatenation avec des tableaux de handles compatibles, et #strong[isvalid];. Aucun objet vivant n'est associe a cette valeur.

 Les handles invalides ne deviennent pas valides ensuite. Pour obtenir un handle vivant, construire un nouvel objet de la meme classe.

 Toutes les dimensions doivent etre des entiers positifs ou nuls. Un vecteur de dimensions vide cree un tableau de handles vide.

 Une dimension scalaire unique suit la meme convention que les constructeurs de tableaux courants: #strong[nelson.lang.invalidHandle(classname, 3)]; retourne un tableau 3-par-3.

 La classe est chargee avant la creation du tableau de handles. Les classes handle definies par l'utilisateur et presentes sur le path peuvent donc etre utilisees par nom.

 Utiliser #strong[nelson.lang.HandlePlaceholder]; quand aucune classe handle plus specifique n'est disponible.


== Exemples

Creer un handle placeholder invalide.

``````matlab
h = nelson.lang.invalidHandle('nelson.lang.HandlePlaceholder');
class(h)
isvalid(h)
``````

Creer un tableau de handles invalides.

``````matlab
h = nelson.lang.invalidHandle('nelson.lang.HandlePlaceholder', 2, 3);
size(h)
isvalid(h)
``````

Creer un tableau de handles invalides depuis un vecteur de taille.

``````matlab
h = nelson.lang.invalidHandle("nelson.lang.HandlePlaceholder", [1 4]);
size(h)
class(h)
isvalid(h)
``````

Utiliser une classe handle definie par l'utilisateur.

``````matlab
d = [tempdir(), 'nelson_help_invalid_handle/'];
mkdir(d);
filewrite([d, '/NelsonHelpInvalidHandleTarget.m'], ["classdef NelsonHelpInvalidHandleTarget < handle"; "end"]);
addpath(d);
h = nelson.lang.invalidHandle('NelsonHelpInvalidHandleTarget');
class(h)
isvalid(h)
``````

Refuser un nom de classe valeur.

``````matlab
try
  nelson.lang.invalidHandle('double');
catch exception
  disp(exception.message)
end
``````


== Voir aussi

#nlink(<handle:nelson.lang.WeakReference>)[nelson.lang.WeakReference];, #nlink(<handle:nelson.lang.HandlePlaceholder>)[nelson.lang.HandlePlaceholder];, #nlink(<handle:isvalid>)[isvalid];, #nlink(<types:class>)[class];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
