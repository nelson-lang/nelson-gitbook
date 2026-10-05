#import "nelson_help.typ": *

= pyrunfile <python_engine:pyrunfile>

Exécuter un fichier Python depuis Nelson.

== Syntaxe

- #raw("pyrunfile(filename)");
- #raw("pyrunfile(filename input)");
- #raw("outvars = pyrunfile(filename, outputs)");
- #raw("outvars = pyrunfile(filename, outputs, pyName, pyValue, ...)");

== Argument d'entrée

/ filename: un scalaire string, vecteur de caractères : nom du fichier .py à exécuter.
/ "filename 'input' ": un scalaire string, vecteur de caractères : nom du fichier .py à exécuter avec arguments d'entrée.
/ pyName, pyValue: noms et valeurs des arguments d'entrée
/ outputs: tableau de chaînes : noms de variables Python.

== Argument de sortie

/ outvars: Une ou plusieurs variables de l'espace de travail Nelson renvoyées sous des types Python valides.

== Description

#strong[pyrunfile(filename)]; exécute un fichier Python.

 Contrairement à la fonction #strong[pyrun];, les variables générées dans l'espace Python par#strong[pyrunfile]; ne persistent pas. Ainsi, les appels suivants à#strong[pyrunfile]; ne pourront pas accéder à ces variables.

 Le code #strong[outvars \= pyrunfile(file, outputs, pyName1, pyValue2, ..., pyNameN, pyValueN)]; exécute le code avec une ou plusieurs paires nom-valeur en entrée.

 Limitation connue :

 Les fonctions #strong[pyrun]; et#strong[pyrunfile]; ne prennent pas en charge les classes contenant des variables locales initialisées par d'autres variables locales via des méthodes. Dans ce cas, il est conseillé de créer un module et d'y accéder.


== Exemples

pyrunfile\_example\_1.py

``````matlab
content = "hello Nelson"
print(content)
``````

pyrunfile from Nelson

``````matlab
pyrunfile('pyrunfile_example_1.py')
``````

pyrunfile\_example\_2.py

``````matlab
import sys
print('greetings from:')
for arg in sys.argv[0:]:
    print(arg)

``````

pyrunfile from Nelson with arguments

``````matlab
pyrunfile('pyrunfile_example_2.py "Hello" "world"')
``````

pyrunfile\_example\_3.py

``````matlab
def minus(a,c):
    b = a-c
    return b

z = minus(x, y)

``````

pyrunfile from Nelson with values from Nelson

``````matlab
pyrunfile('pyrunfile_example_3.py', 'x', 5, 'y', 3)
``````


== Voir aussi

#nlink(<python_engine:pyrun>)[pyrun];, #nlink(<python_engine:pyenv>)[pyenv];, #nlink(<python_engine:3_python_types>)[Python types supported];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.4.0], [version initiale],
)

// Auteur: Allan CORNET
