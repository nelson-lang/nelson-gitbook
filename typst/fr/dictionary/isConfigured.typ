#import "nelson_help.typ": *

= isConfigured <dictionary:isConfigured>

Vérifie si le dictionnaire a des types assignés aux clés et aux valeurs.

== Syntaxe

- #raw("tf = isConfigured(d)");

== Argument d'entrée

/ d: scalaire : objet dictionnaire.

== Argument de sortie

/ tf: scalaire logique : true si configuré, false sinon.

== Description

#strong[tf \= isConfigured(d)]; renvoie un logique #strong[true]; si le dictionnaire spécifié est configuré, et un logique #strong[false]; s'il ne l'est pas.

 Un dictionnaire est considéré comme configuré lorsqu'il a des types assignés pour ses clés et ses valeurs. L'ajout d'entrées à un dictionnaire non configuré le configure.


== Exemple

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
tf = isConfigured(d)
d2 = dictionary()
tf = isConfigured(d2)


``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:configureDictionary>)[configureDictionary];, #nlink(<dictionary:insert>)[insert];, #nlink(<dictionary:values>)[values];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
