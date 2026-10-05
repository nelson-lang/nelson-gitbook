#import "nelson_help.typ": *

= lookup <dictionary:lookup>

Trouver la valeur dans le dictionnaire par clé.

== Syntaxe

- #raw("value = lookup(d, key)");
- #raw("value = lookup(d, key, 'FallbackValue', fallback)");

== Argument d'entrée

/ d: scalaire : objet dictionnaire.
/ key: le type de key doit correspondre ou être convertible au type de données des clés dans d.
/ fallback: scalaire : valeur de secours

== Argument de sortie

/ value: value.

== Description

#strong[value \= lookup(d, key)]; récupère la valeur associée à la clé donnée dans le dictionnaire d.

 Si la clé n'existe pas, une erreur est levée.

 #strong[value \= lookup(d, key)]; est équivalent à #strong[value \= d\[key\]];.

 #strong[value \= lookup(d, key, 'FallbackValue', fallback)]; spécifie une valeur de secours à renvoyer si la clé n'est pas trouvée dans d.

 #strong[lookup]; ne valide la valeur de secours que si elle est nécessaire. Une erreur n'est levée que si la clé n'est pas trouvée et qu'aucune valeur de secours valide n'est fournie.


== Exemple

``````matlab
names = ["Apple" "Banana" "Kiwi"];
wheels = [1 2 3];
d = dictionary(wheels, names)
v = lookup(d,[3,5], 'FallbackValue', "Orange")
``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:remove>)[remove];, #nlink(<dictionary:insert>)[insert];, #nlink(<dictionary:readdictionary>)[readdictionary];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
