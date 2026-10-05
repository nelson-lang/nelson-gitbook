#import "nelson_help.typ": *

= pyfunction <python_engine:pyfunction>

Encapsuler un handle de fonction Nelson en appelable Python.

== Syntaxe

- #raw("c = pyfunction(fun_handle)");

== Argument d'entrée

/ fun\_handle: un handle de fonction : anonyme (par exemple #strong[\@(x) x .^ 2];) ou nommé (par exemple #strong[\@sin];).

== Argument de sortie

/ c: un objet appelable Python (#strong[py.builtin\_function\_or\_method];) qui transmet ses appels au handle de fonction Nelson.

== Description

#strong[c \= pyfunction(fun\_handle)]; encapsule un handle de fonction Nelson dans un objet appelable Python. Lorsque du code Python appelle #strong[c];, le handle de fonction Nelson encapsulé est exécuté de manière synchrone dans la même session Nelson et son résultat est renvoyé à Python.

 C'est le sens inverse de #strong[pyrun]; : au lieu que Nelson appelle Python, c'est Python qui appelle Nelson. Passez l'appelable à Python via les arguments nom-valeur de #strong[pyrun]; ou de #strong[pyrunfile];, puis appelez-le depuis le code Python. Il peut être fourni à toute API Python attendant un appelable, par exemple un scoreur, un noyau ou un transformateur personnalisé de scikit-learn.

 Lorsque Python appelle l'appelable encapsulé, les arguments positionnels sont convertis en valeurs Nelson (les scalaires Python et les tableaux NumPy suivent les mêmes règles que les autres conversions de #strong[python\_engine];), le handle de fonction Nelson est évalué, et sa sortie unique est reconvertie en objet Python. Les handles qui ne renvoient aucune valeur produisent #strong[None]; côté Python.

 Une erreur Nelson levée dans le rappel devient une exception Python dont le message contient le message Nelson, puis elle est remontée proprement dans Nelson.

 #strong[Limitations.]; Le rappel est intra-processus et mono-thread : le handle de fonction Nelson s'exécute toujours sur le thread de l'interpréteur Nelson. Il est conçu pour une utilisation mono-thread uniquement. Avec scikit-learn et joblib, utilisez #strong[n\_jobs\=1]; ; les backends qui créent des processus ou des threads de travail (#strong[n\_jobs]; supérieur à 1) ne peuvent pas rappeler la session Nelson parente, et un appel provenant d'un thread inattendu échoue avec une erreur claire au lieu de corrompre la session. Appeler à nouveau #strong[pyrun]; ou #strong[pyrunfile]; depuis un rappel n'est pas pris en charge et lève une erreur au lieu de provoquer un interblocage. Une seule sortie est prise en charge.


== Exemples

Appeler un handle anonyme depuis Python.

``````matlab
sq = @(x) x .^ 2;
f = pyfunction(sq);
y = pyrun("r = g(4.0)", "r", "g", f)
``````

Recevoir un tableau NumPy dans le rappel.

``````matlab
add1 = @(v) double(v) + 1;
f = pyfunction(add1);
o = pyrun("import numpy as np; o = g(np.array([1.0, 2.0, 3.0]))", "o", "g", f)
``````

Utiliser un handle de fonction nommé.

``````matlab
f = pyfunction(@sin);
z = pyrun("r = g(0.0)", "r", "g", f)
``````


== Voir aussi

#nlink(<python_engine:pyrun>)[pyrun];, #nlink(<python_engine:pyrunfile>)[pyrunfile];, #nlink(<python_engine:5_call_nelson_from_python>)[Appeler Nelson depuis Python];, #nlink(<python_engine:3_python_types>)[Types Python supportés];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
