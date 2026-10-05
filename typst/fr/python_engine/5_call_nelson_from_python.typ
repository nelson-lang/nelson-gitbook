#import "nelson_help.typ": *

= Appeler Nelson depuis Python <python_engine:5_call_nelson_from_python>

Utiliser l'API Nelson Engine pour Python.

== Syntaxe

- #raw("import nelson.engine");
- #raw("eng = nelson.engine.start_nelson()");
- #raw("eng.eval(command, nargout=0)");
- #raw("eng.feval(function_name, *args, nargout=1)");
- #raw("eng.workspace[name] = value");
- #raw("value = eng.workspace[name]");
- #raw("eng.quit()");

== Description

Le paquet Python #strong[nelson.engine]; demarre ou connecte un processus Nelson depuis Python et expose les fonctions Nelson comme des methodes Python.

 Le paquet peut etre utilise depuis une installation Nelson ou depuis un arbre de compilation lorsque la bibliotheque engine de Nelson est disponible. Si la decouverte automatique echoue, definissez #strong[NELSON\_ROOT]; ou #strong[NELSON\_ENGINE\_LIBRARY]; avant d'importer le paquet.

 #strong[start\_nelson]; demarre une session Nelson possedee par Python. #strong[quit]; ou #strong[close]; ferme cette session. #strong[connect\_nelson]; s'attache a une session existante et se detache sans fermer le processus cible.

 Definissez #strong[background\=True]; pour demarrer ou connecter la session de maniere asynchrone. La valeur retournee est un objet #strong[FutureResult]; avec les methodes #strong[result];, #strong[done];, #strong[cancel]; et #strong[cancelled];.

 Utilisez #strong[nargout]; pour controler les valeurs retournees. Avec #strong[nargout\=0];, les appels retournent #strong[None];. Avec #strong[nargout\=1];, ils retournent une valeur. Avec #strong[nargout\>1];, ils retournent un tuple.

 Les appels de fonctions sont synchrones par defaut. Passez #strong[background\=True]; pour appeler une fonction Nelson de maniere asynchrone. L'appel retourne immediatement un #strong[FutureResult];; utilisez #strong[result(timeout\=None)];, #strong[done];, #strong[cancel]; et #strong[cancelled]; pour inspecter ou controler l'execution.

 #strong[FutureResult.result(timeout)]; leve #strong[nelson.engine.TimeoutError]; si le resultat n'est pas pret avant le timeout, #strong[CancelledError]; si l'appel a ete annule, et propage les erreurs d'execution Nelson de l'appel asynchrone.

 Les echanges de donnees prennent en charge les scalaires, chaines, booleens, tableaux numeriques, classes de tableaux Nelson et tableaux NumPy lorsque NumPy est installe. Les types non pris en charge produisent des erreurs explicites au lieu d'etre convertis silencieusement. Nelson fournit un type timetable, mais sa conversion vers et depuis les objets Python n'est pas encore exposee.

 Conversions Python vers Nelson: #strong[bool]; devient logical, #strong[int]; et #strong[float]; deviennent des scalaires double, #strong[complex]; devient un double complexe, #strong[str]; devient char, les listes et tuples deviennent des tableaux double sauf s'ils contiennent des valeurs complexes, les #strong[dict]; Python avec des cles valides deviennent des structs scalaires, #strong[nelson.cell]; devient un tableau de cellules, #strong[nelson.table]; et les DataFrame pandas deviennent des tables Nelson, et #strong[nelson.sparse]; est cree avec la fonction Nelson #strong[sparse];. Les index de DataFrame pandas qui ne sont pas le RangeIndex par defaut, y compris les valeurs DatetimeIndex, sont preserves comme noms de lignes de table Nelson et ne sont pas convertis en timetables. Les tableaux NumPy conservent les dtypes bool, entiers, flottants et complexes courants lorsque NumPy est installe.

 Conversions Nelson vers Python: les tableaux char deviennent #strong[nelson.char];, les tableaux denses numeriques et logical deviennent des objets tableaux Python Nelson, les tableaux complexes conservent leurs parties reelle et imaginaire, et les matrices sparse deviennent #strong[nelson.sparse];. Les structs scalaires deviennent #strong[nelson.struct];, les tableaux de cellules deviennent #strong[nelson.cell];, et les tables deviennent des DataFrame pandas si pandas est installe ou #strong[nelson.table]; sinon. Les lectures sparse utilisent un chemin de compatibilite base sur #strong[full]; lorsque la serialisation IPC sparse directe n'est pas disponible. Les tableaux de structs non scalaires, les graphiques et autres handles d'objets surs sont retournes comme des valeurs #strong[nelson.engine.NelsonObject]; qui peuvent etre repassees au meme moteur, par exemple pour selectionner ou fermer une figure. Les handles d'objets fournissent aussi des methodes pratiques #strong[get]; et #strong[set]; pour les proprietes Nelson lorsque l'objet Nelson sous-jacent les prend en charge.

 Pas encore completement pris en charge: conversion des tableaux de structs non scalaires en objets mapping Python natifs, imbrication profonde de tables, et dispatch direct arbitraire de methodes d'objets depuis Python. La conversion timetable vers et depuis les objets Python n'est pas encore exposee. Les dictionnaires Python dont les cles ne sont pas des noms de champs valides sont transferes via la construction de dictionnaires Nelson lors d'une affectation au workspace. Les conversions d'objets non prises en charge produisent des erreurs explicites ou retournent des handles d'objets Nelson lorsqu'une conversion sure n'est pas disponible.

 Les workflows de tables peuvent souvent etre adaptes en convertissant les donnees tabulaires en tableaux pris en charge avant de traverser la frontiere engine. Par exemple, triez ou filtrez les valeurs dans des listes Python, puis repassez les donnees numeriques selectionnees sous forme de tableaux #strong[nelson.double]; pour les calculs ou les graphiques Nelson.

 Les classes de tableaux Nelson incluent #strong[nelson.double];, #strong[nelson.single];, les tableaux entiers signes et non signes, #strong[nelson.logical];, #strong[nelson.sparse]; et #strong[nelson.char];. Les tableaux utilisent l'indexation Python a base zero et preservent le stockage column-major de Nelson pour les transferts vers le moteur.

 Le paquet #strong[nelson.engine]; demarre ou se connecte a un processus Nelson separe. Pour le cas intra-processus, lorsque Python est execute depuis Nelson avec #strong[pyrun]; ou #strong[pyrunfile];, un handle de fonction Nelson peut etre encapsule en appelable Python avec #strong[pyfunction]; puis rappele de maniere synchrone depuis le code Python (par exemple comme scoreur, noyau ou transformateur scikit-learn). Ce rappel est mono-thread et requiert #strong[n\_jobs\=1];.


== Exemples

Demarrer Nelson, appeler une fonction et fermer la session.

``````matlab
import nelson.engine

eng = nelson.engine.start_nelson()
print(eng.sqrt(4.0))
eng.quit()
``````

Appeler une fonction Nelson de maniere asynchrone.

``````matlab
import nelson.engine

eng = nelson.engine.start_nelson()
future = eng.sqrt(4.0, background=True)
if not future.done():
    ret = future.result(timeout=30)
print(ret)
eng.quit()
``````

Evaluer des commandes et echanger des variables du workspace.

``````matlab
import nelson
import nelson.engine

eng = nelson.engine.start_nelson()
eng.workspace["x"] = nelson.double([[1, 2, 3], [4, 5, 6]])
eng.eval("y = x * 2;", nargout=0)
y = eng.workspace["y"]
eng.quit()
``````

Appeler un script utilisateur qui calcule l'aire d'un triangle.

``````matlab
# Fichier triarea_script.m dans le dossier courant:
# b = 5;
# h = 3;
# a = 0.5 * (b .* h)

import nelson.engine

eng = nelson.engine.start_nelson()
eng.triarea_script(nargout=0)
area = eng.workspace["a"]
eng.quit()
``````

Appeler une fonction utilisateur depuis le dossier courant.

``````matlab
# Fichier triarea_fun.m dans le dossier courant:
# function a = triarea_fun(b, h)
#   a = 0.5 * (b .* h);
# end

import nelson.engine

eng = nelson.engine.start_nelson()
ret = eng.triarea_fun(1.0, 5.0)
print(ret)
eng.quit()
``````

Appeler des fonctions en changeant de dossier ou en ajoutant des dossiers au path Nelson.

``````matlab
import nelson.engine

eng = nelson.engine.start_nelson()
eng.cd(r"C:\work\myFolder", nargout=0)
eng.myFnc(nargout=0)

eng.addpath(r"C:\work\myfiles", nargout=0)
paths = eng.genpath(r"C:\work\myproject")
eng.addpath(paths, nargout=0)
eng.quit()
``````

Appeler une fonction utilisateur apres avoir ajoute son dossier au path Nelson.

``````matlab
import nelson.engine

eng = nelson.engine.start_nelson()
eng.addpath(r"C:\work\nelson_functions", nargout=0)
result = eng.myfunction(10.0, nargout=1)
eng.quit()
``````

Executer un script. Les scripts utilisent normalement nargout\=0.

``````matlab
import nelson.engine

eng = nelson.engine.start_nelson()
eng.cd(r"C:\work\scripts", nargout=0)
eng.myscript(nargout=0)
eng.quit()
``````

Utiliser des valeurs complexes, logical, sparse et NumPy.

``````matlab
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
``````

Trier des donnees dans Python et les tracer avec Nelson.

``````matlab
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
``````

Conserver un handle graphique Nelson en Python et le repasser a Nelson.

``````matlab
import nelson.engine

eng = nelson.engine.start_nelson()
h = eng.figure()
eng.figure(h, nargout=0)
visible = h.get("Visible")
h.set("Visible", visible)
eng.feval("close", h, nargout=0)
h.release()
eng.quit()
``````

Utiliser un workflow engine direct au lieu de os.system.

``````matlab
import nelson
import nelson.engine

eng = nelson.engine.start_nelson()
params = nelson.dictionary({"param1": 10, "param2": 12})
values = nelson.double([1, 2, 3])

# Le transfert natif dictionary n&apos;est pas encore disponible dans le bridge v1.
# Passez des scalaires/tableaux pris en charge, ou convertissez les dictionnaires cote Nelson.
eng.myFunc(values, nargout=0)
eng.quit()
``````


== Voir aussi

#nlink(<python_engine:pyrun>)[pyrun];, #nlink(<python_engine:pyfunction>)[pyfunction];, #nlink(<python_engine:pyenv>)[pyenv];, #nlink(<python_engine:6_install_nelson_engine_for_python>)[Installer Nelson Engine API pour Python];, #nlink(<ipc:ipc>)[ipc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Ajout de l'API Nelson Engine pour Python.],
)

// Auteur: Allan CORNET
