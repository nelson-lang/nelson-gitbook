# Appeler Nelson depuis Python

Utiliser l'API Nelson Engine pour Python.

## 📝 Syntaxe

- import nelson.engine
- eng = nelson.engine.start_nelson()
- eng.eval(command, nargout=0)
- eng.feval(function_name, \*args, nargout=1)
- eng.workspace[name] = value
- value = eng.workspace[name]
- eng.quit()

## 📄 Description

Le paquet Python <b>nelson.engine</b> demarre ou connecte un processus Nelson depuis Python et expose les fonctions Nelson comme des methodes Python.

Le paquet peut etre utilise depuis une installation Nelson ou depuis un arbre de compilation lorsque la bibliotheque engine de Nelson est disponible. Si la decouverte automatique echoue, definissez <b>NELSON_ROOT</b> ou <b>NELSON_ENGINE_LIBRARY</b> avant d'importer le paquet.

<b>start_nelson</b> demarre une session Nelson possedee par Python. <b>quit</b> ou <b>close</b> ferme cette session. <b>connect_nelson</b>s'attache a une session existante et se detache sans fermer le processus cible.

Definissez <b>background=True</b> pour demarrer ou connecter la session de maniere asynchrone. La valeur retournee est un objet <b>FutureResult</b>avec les methodes <b>result</b>, <b>done</b>, <b>cancel</b> et <b>cancelled</b>.

Utilisez <b>nargout</b> pour controler les valeurs retournees. Avec <b>nargout=0</b>, les appels retournent <b>None</b>. Avec <b>nargout=1</b>, ils retournent une valeur. Avec <b>nargout>1</b>, ils retournent un tuple.

Les appels de fonctions sont synchrones par defaut. Passez <b>background=True</b> pour appeler une fonction Nelson de maniere asynchrone. L'appel retourne immediatement un <b>FutureResult</b>; utilisez <b>result(timeout=None)</b>, <b>done</b>, <b>cancel</b> et <b>cancelled</b> pour inspecter ou controler l'execution.

<b>FutureResult.result(timeout)</b> leve <b>nelson.engine.TimeoutError</b> si le resultat n'est pas pret avant le timeout, <b>CancelledError</b> si l'appel a ete annule, et propage les erreurs d'execution Nelson de l'appel asynchrone.

Les echanges de donnees prennent en charge les scalaires, chaines, booleens, tableaux numeriques, classes de tableaux Nelson et tableaux NumPy lorsque NumPy est installe. Les types non pris en charge produisent des erreurs explicites au lieu d'etre convertis silencieusement. Nelson fournit un type timetable, mais sa conversion vers et depuis les objets Python n'est pas encore exposee.

Conversions Python vers Nelson: <b>bool</b> devient logical, <b>int</b> et <b>float</b> deviennent des scalaires double, <b>complex</b> devient un double complexe, <b>str</b> devient char, les listes et tuples deviennent des tableaux double sauf s'ils contiennent des valeurs complexes, les <b>dict</b> Python avec des cles valides deviennent des structs scalaires, <b>nelson.cell</b> devient un tableau de cellules, <b>nelson.table</b> et les DataFrame pandas deviennent des tables Nelson, et <b>nelson.sparse</b>est cree avec la fonction Nelson <b>sparse</b>. Les index de DataFrame pandas qui ne sont pas le RangeIndex par defaut, y compris les valeurs DatetimeIndex, sont preserves comme noms de lignes de table Nelson et ne sont pas convertis en timetables. Les tableaux NumPy conservent les dtypes bool, entiers, flottants et complexes courants lorsque NumPy est installe.

Conversions Nelson vers Python: les tableaux char deviennent <b>nelson.char</b>, les tableaux denses numeriques et logical deviennent des objets tableaux Python Nelson, les tableaux complexes conservent leurs parties reelle et imaginaire, et les matrices sparse deviennent <b>nelson.sparse</b>. Les structs scalaires deviennent <b>nelson.struct</b>, les tableaux de cellules deviennent <b>nelson.cell</b>, et les tables deviennent des DataFrame pandas si pandas est installe ou <b>nelson.table</b> sinon. Les lectures sparse utilisent un chemin de compatibilite base sur <b>full</b> lorsque la serialisation IPC sparse directe n'est pas disponible. Les tableaux de structs non scalaires, les graphiques et autres handles d'objets surs sont retournes comme des valeurs <b>nelson.engine.NelsonObject</b> qui peuvent etre repassees au meme moteur, par exemple pour selectionner ou fermer une figure. Les handles d'objets fournissent aussi des methodes pratiques <b>get</b> et <b>set</b> pour les proprietes Nelson lorsque l'objet Nelson sous-jacent les prend en charge.

Pas encore completement pris en charge: conversion des tableaux de structs non scalaires en objets mapping Python natifs, imbrication profonde de tables, et dispatch direct arbitraire de methodes d'objets depuis Python. La conversion timetable vers et depuis les objets Python n'est pas encore exposee. Les dictionnaires Python dont les cles ne sont pas des noms de champs valides sont transferes via la construction de dictionnaires Nelson lors d'une affectation au workspace. Les conversions d'objets non prises en charge produisent des erreurs explicites ou retournent des handles d'objets Nelson lorsqu'une conversion sure n'est pas disponible.

Les workflows de tables peuvent souvent etre adaptes en convertissant les donnees tabulaires en tableaux pris en charge avant de traverser la frontiere engine. Par exemple, triez ou filtrez les valeurs dans des listes Python, puis repassez les donnees numeriques selectionnees sous forme de tableaux <b>nelson.double</b> pour les calculs ou les graphiques Nelson.

Les classes de tableaux Nelson incluent <b>nelson.double</b>, <b>nelson.single</b>, les tableaux entiers signes et non signes, <b>nelson.logical</b>, <b>nelson.sparse</b> et <b>nelson.char</b>. Les tableaux utilisent l'indexation Python a base zero et preservent le stockage column-major de Nelson pour les transferts vers le moteur.

Le paquet <b>nelson.engine</b> demarre ou se connecte a un processus Nelson separe. Pour le cas intra-processus, lorsque Python est execute depuis Nelson avec <b>pyrun</b> ou <b>pyrunfile</b>, un handle de fonction Nelson peut etre encapsule en appelable Python avec <b>pyfunction</b> puis rappele de maniere synchrone depuis le code Python (par exemple comme scoreur, noyau ou transformateur scikit-learn). Ce rappel est mono-thread et requiert <b>n_jobs=1</b>.

## 💡 Exemples

Demarrer Nelson, appeler une fonction et fermer la session.

```matlab
import nelson.engine

eng = nelson.engine.start_nelson()
print(eng.sqrt(4.0))
eng.quit()
```

Appeler une fonction Nelson de maniere asynchrone.

```matlab
import nelson.engine

eng = nelson.engine.start_nelson()
future = eng.sqrt(4.0, background=True)
if not future.done():
    ret = future.result(timeout=30)
print(ret)
eng.quit()
```

Evaluer des commandes et echanger des variables du workspace.

```matlab
import nelson
import nelson.engine

eng = nelson.engine.start_nelson()
eng.workspace["x"] = nelson.double([[1, 2, 3], [4, 5, 6]])
eng.eval("y = x * 2;", nargout=0)
y = eng.workspace["y"]
eng.quit()
```

Appeler un script utilisateur qui calcule l'aire d'un triangle.

```matlab
# Fichier triarea_script.m dans le dossier courant:
# b = 5;
# h = 3;
# a = 0.5 * (b .* h)

import nelson.engine

eng = nelson.engine.start_nelson()
eng.triarea_script(nargout=0)
area = eng.workspace["a"]
eng.quit()
```

Appeler une fonction utilisateur depuis le dossier courant.

```matlab
# Fichier triarea_fun.m dans le dossier courant:
# function a = triarea_fun(b, h)
#   a = 0.5 * (b .* h);
# end

import nelson.engine

eng = nelson.engine.start_nelson()
ret = eng.triarea_fun(1.0, 5.0)
print(ret)
eng.quit()
```

Appeler des fonctions en changeant de dossier ou en ajoutant des dossiers au path Nelson.

```matlab
import nelson.engine

eng = nelson.engine.start_nelson()
eng.cd(r"C:\work\myFolder", nargout=0)
eng.myFnc(nargout=0)

eng.addpath(r"C:\work\myfiles", nargout=0)
paths = eng.genpath(r"C:\work\myproject")
eng.addpath(paths, nargout=0)
eng.quit()
```

Appeler une fonction utilisateur apres avoir ajoute son dossier au path Nelson.

```matlab
import nelson.engine

eng = nelson.engine.start_nelson()
eng.addpath(r"C:\work\nelson_functions", nargout=0)
result = eng.myfunction(10.0, nargout=1)
eng.quit()
```

Executer un script. Les scripts utilisent normalement nargout=0.

```matlab
import nelson.engine

eng = nelson.engine.start_nelson()
eng.cd(r"C:\work\scripts", nargout=0)
eng.myscript(nargout=0)
eng.quit()
```

Utiliser des valeurs complexes, logical, sparse et NumPy.

```matlab
import nelson
import nelson.engine

eng = nelson.engine.start_nelson()
eng.workspace["z"] = nelson.double([[1 + 2j, 3 - 4j]], is_complex=True)
eng.workspace["flags"] = nelson.logical([[True, False]])
eng.workspace["s"] = nelson.sparse([0, 1], [1, 0], [5.0, 7.0], (2, 2))

try:
    import numpy as np
    eng.workspace["np_values"] = np.array([[1, 2]], dtype=np.int16)
except ImportError:
    pass

eng.quit()
```

Trier des donnees dans Python et les tracer avec Nelson.

```matlab
import nelson
import nelson.engine

eng = nelson.engine.start_nelson()

pressure = nelson.double(vector=[82.0, 76.0, 91.0, 79.0])
smoker = nelson.logical(vector=[True, False, True, False])

pressure_values = pressure[0]
smoker_values = smoker[0]
sp = [p for p, s in zip(pressure_values, smoker_values) if s is True]
nsp = [p for p, s in zip(pressure_values, smoker_values) if s is False]

sp = nelson.double(sp)
nsp = nelson.double(nsp)
smoker_average = eng.mean(sp)
nonsmoker_average = eng.mean(nsp)

sdx = eng.linspace(1.0, float(len(sp[0])), len(sp[0]))
nsdx = eng.linspace(1.0, float(len(nsp[0])), len(nsp[0]))

eng.figure(nargout=0)
eng.hold("on", nargout=0)
eng.box("on", nargout=0)
eng.scatter(sdx, sp, 10.0, "blue", nargout=0)
eng.scatter(nsdx, nsp, 10.0, "red", nargout=0)
eng.xlabel("Patient (Anonymized)", nargout=0)
eng.ylabel("Diastolic Blood Pressure", nargout=0)
eng.title("Blood Pressure Readings", nargout=0)
eng.legend("Smokers", "Nonsmokers", nargout=0)
eng.quit()
```

Conserver un handle graphique Nelson en Python et le repasser a Nelson.

```matlab
import nelson.engine

eng = nelson.engine.start_nelson()
h = eng.figure()
eng.figure(h, nargout=0)
visible = h.get("Visible")
h.set("Visible", visible)
eng.feval("close", h, nargout=0)
h.release()
eng.quit()
```

Utiliser un workflow engine direct au lieu de os.system.

```matlab
import nelson
import nelson.engine

eng = nelson.engine.start_nelson()
params = nelson.dictionary({"param1": 10, "param2": 12})
values = nelson.double([1, 2, 3])

# Le transfert natif dictionary n&apos;est pas encore disponible dans le bridge v1.
# Passez des scalaires/tableaux pris en charge, ou convertissez les dictionnaires cote Nelson.
eng.myFunc(values, nargout=0)
eng.quit()
```

## 🔗 Voir aussi

[pyrun](../python_engine/pyrun.md), [pyfunction](../python_engine/pyfunction.md), [pyenv](../python_engine/pyenv.md), [Installer Nelson Engine API pour Python](../python_engine/6_install_nelson_engine_for_python.md), [ipc](../ipc/ipc.md).

## 🕔 Historique

| Version | 📄 Description                            |
| ------- | ----------------------------------------- |
| 2.0.0   | Ajout de l'API Nelson Engine pour Python. |

<!--
## 👤 Auteur

Allan CORNET
-->
