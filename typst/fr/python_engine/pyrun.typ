#import "nelson_help.typ": *

= pyrun <python_engine:pyrun>

Exécuter des instructions Python depuis Nelson.

== Syntaxe

- #raw("pyrun(code)");
- #raw("outvars = pyrun(code, outputs)");
- #raw("outvars = pyrun(code, outputs, pyName, pyValue)");

== Argument d'entrée

/ code: un scalaire string, tableau de chaînes, vecteur de caractères, tableau de caractères ou objet code Python.
/ pyName, pyValue: noms et valeurs des arguments d'entrée
/ outputs: tableau de chaînes : noms de variables Python.

== Argument de sortie

/ outvars: Une ou plusieurs variables de l'espace de travail Nelson renvoyées sous des types Python valides.

== Description

#strong[pyrun(code)]; exécute les instructions Python contenues dans la chaîne code au sein de l'interpréteur Python.

 Les variables générées par #strong[pyrun]; restent persistantes, permettant leur réutilisation dans des appels #strong[pyrun]; ultérieurs.

 #strong[outvars \= pyrun(code, outputs)]; : les variables Python spécifiées dans outputs sont renvoyées à Nelson.

 Les valeurs de ces variables sont capturées dans #strong[outvars];.

 #strong[outvars \= pyrun(code, outputs, pyName, pyValue)]; : le #strong[code]; est exécuté avec des noms\/valeurs d'entrée et de sortie fournis depuis Nelson via des paires nom-valeur.


== Exemples

``````matlab
pyrun('a = b * c', 'b', 5, 'c', 10)
r = pyrun('d = a + c', 'd')
``````

``````matlab
pyrun(["a = 3","print(a)"])
``````

``````matlab
[R1, R2] = pyrun("a=b*c",["a","b"], 'b', 5, 'c', 10)
``````

Python code object representing a script generated through the built-in compile function in Python

``````matlab
PYCODE = pyrun('X = compile(''Y = 3'', ''test'', ''exec'')', 'X')
y = pyrun(PYCODE, 'Y')
``````


== Voir aussi

#nlink(<python_engine:pyrunfile>)[pyrunfile];, #nlink(<python_engine:pyfunction>)[pyfunction];, #nlink(<python_engine:pyenv>)[pyenv];, #nlink(<python_engine:3_python_types>)[Python types supported];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [version initiale],
  [1.4.0], [Python code object allowed as first input argument],
)

// Auteur: Allan CORNET
