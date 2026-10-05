# pyfunction

Encapsuler un handle de fonction Nelson en appelable Python.

## 📝 Syntaxe

- c = pyfunction(fun\_handle)

## 📥 Argument d'entrée

- fun\_handle - un handle de fonction : anonyme (par exemple <b>@(x) x .^ 2</b>) ou nommé (par exemple <b>@sin</b>).

## 📤 Argument de sortie

- c - un objet appelable Python (<b>py.builtin\_function\_or\_method</b>) qui transmet ses appels au handle de fonction Nelson.

## 📄 Description


<b>c = pyfunction(fun\_handle)</b> encapsule un handle de fonction Nelson dans un objet appelable Python. Lorsque du code Python appelle <b>c</b>, le handle de fonction Nelson encapsulé est exécuté de manière synchrone dans la même session Nelson et son résultat est renvoyé à Python. 

C'est le sens inverse de <b>pyrun</b> : au lieu que Nelson appelle Python, c'est Python qui appelle Nelson. Passez l'appelable à Python via les arguments nom-valeur de <b>pyrun</b> ou de <b>pyrunfile</b>, puis appelez-le depuis le code Python. Il peut être fourni à toute API Python attendant un appelable, par exemple un scoreur, un noyau ou un transformateur personnalisé de scikit-learn. 

Lorsque Python appelle l'appelable encapsulé, les arguments positionnels sont convertis en valeurs Nelson (les scalaires Python et les tableaux NumPy suivent les mêmes règles que les autres conversions de <b>python\_engine</b>), le handle de fonction Nelson est évalué, et sa sortie unique est reconvertie en objet Python. Les handles qui ne renvoient aucune valeur produisent <b>None</b> côté Python. 

Une erreur Nelson levée dans le rappel devient une exception Python dont le message contient le message Nelson, puis elle est remontée proprement dans Nelson. 

<b>Limitations.</b> Le rappel est intra-processus et mono-thread : le handle de fonction Nelson s'exécute toujours sur le thread de l'interpréteur Nelson. Il est conçu pour une utilisation mono-thread uniquement. Avec scikit-learn et joblib, utilisez <b>n\_jobs=1</b> ; les backends qui créent des processus ou des threads de travail (<b>n\_jobs</b> supérieur à 1) ne peuvent pas rappeler la session Nelson parente, et un appel provenant d'un thread inattendu échoue avec une erreur claire au lieu de corrompre la session. Appeler à nouveau <b>pyrun</b>ou <b>pyrunfile</b> depuis un rappel n'est pas pris en charge et lève une erreur au lieu de provoquer un interblocage. Une seule sortie est prise en charge.

## 💡 Exemples

Appeler un handle anonyme depuis Python.

```matlab
sq = @(x) x .^ 2;
f = pyfunction(sq);
y = pyrun("r = g(4.0)", "r", "g", f)
```
Recevoir un tableau NumPy dans le rappel.

```matlab
add1 = @(v) double(v) + 1;
f = pyfunction(add1);
o = pyrun("import numpy as np; o = g(np.array([1.0, 2.0, 3.0]))", "o", "g", f)
```
Utiliser un handle de fonction nommé.

```matlab
f = pyfunction(@sin);
z = pyrun("r = g(0.0)", "r", "g", f)
```


## 🔗 Voir aussi

[pyrun](../python_engine/pyrun.md), [pyrunfile](../python_engine/pyrunfile.md), [Appeler Nelson depuis Python](../python_engine/5_call_nelson_from_python.md), [Types Python supportés](../python_engine/3_python_types.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
