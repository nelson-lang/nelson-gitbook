#import "nelson_help.typ": *

= jsonencode <json:jsonencode>

encode un objet Nelson en une chaîne JSON.

== Syntaxe

- #raw("res = jsonencode(obj)");
- #raw("res = jsonencode(obj, 'ConvertInfAndNaN', true_or_false)");

== Argument d'entrée

/ obj: un objet Nelson : struct, cell, matrix.
/ true\_or\_false: un booléen : si vrai, Inf et NaN sont convertis en 'Inf' ou 'Nan'.

== Argument de sortie

/ res: une chaîne : texte JSON.

== Description

#strong[jsonencode]; convertit une variable Nelson en texte JSON.

 #strong[jsonencode]; ne supporte pas les nombres complexes, les tableaux creux (sparse), les handles de fonction et d'autres handles.

 #strong[jsonencode]; peut être surchargé pour gérer vos propres types.

 Par défaut, #strong[jsonencode]; convertit les valeurs Inf en la chaîne "Inf" et les valeurs NaN en 'null'.

 Attention : la forme d'une matrice et le type de données ne sont pas toujours préservés.


== Bibliographie

http:\/\/www.rfc-editor.org\/rfc\/rfc7159.txt

== Exemple

``````matlab
field1 = 'f1';  value1 = zeros(1,10);
field2 = 'f2';  value2 = {'a', 'b'};
field3 = 'f3';  value3 = {pi, pi*pi};
field4 = 'f4';  value4 = {'fourth'};
s = struct(field1,value1,field2,value2,field3,value3,field4,value4);
r = jsonencode(s)
filewrite([tempdir(), 'example.json'], r);

``````


== Voir aussi

#nlink(<json:jsondecode>)[jsondecode];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
