#import "nelson_help.typ": *

= types <dictionary:types>

Types des clés et valeurs du dictionnaire.

== Syntaxe

- #raw("[keyType, valueType] = types(d)");
- #raw("keyType = types(d)");

== Argument d'entrée

/ d: scalaire : objet dictionnaire.

== Argument de sortie

/ keyType: scalaire string : type de données des clés du dictionnaire.
/ valueType: scalaire string : type de données des valeurs du dictionnaire.

== Description

#strong[keyType \= types(d)]; renvoie le type de données des clés du dictionnaire.

 #strong[\[keyType, valueType\] \= types(d)]; renvoie les types de données des clés et valeurs du dictionnaire spécifié. Si le dictionnaire d n'est pas configuré, types renvoie un scalaire string indiquant #strong[missing];.


== Exemple

``````matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
[keyType, valueType] = types(d)

``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:keys>)[keys];, #nlink(<dictionary:values>)[values];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
