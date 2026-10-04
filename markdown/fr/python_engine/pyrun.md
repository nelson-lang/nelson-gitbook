# pyrun

Exécuter des instructions Python depuis Nelson.

## 📝 Syntaxe

- pyrun(code)
- outvars = pyrun(code, outputs)
- outvars = pyrun(code, outputs, pyName, pyValue)

## 📥 Argument d'entrée

- code - un scalaire string, tableau de chaînes, vecteur de caractères, tableau de caractères ou objet code Python.
- pyName, pyValue - noms et valeurs des arguments d'entrée
- outputs - tableau de chaînes : noms de variables Python.

## 📤 Argument de sortie

- outvars - Une ou plusieurs variables de l'espace de travail Nelson renvoyées sous des types Python valides.

## 📄 Description

<b>pyrun(code)</b> exécute les instructions Python contenues dans la chaîne code au sein de l'interpréteur Python.

Les variables générées par <b>pyrun</b> restent persistantes, permettant leur réutilisation dans des appels <b>pyrun</b> ultérieurs.

<b>outvars = pyrun(code, outputs)</b> : les variables Python spécifiées dans outputs sont renvoyées à Nelson.

Les valeurs de ces variables sont capturées dans <b>outvars</b>.

<b>outvars = pyrun(code, outputs, pyName, pyValue)</b> : le <b>code</b> est exécuté avec des noms/valeurs d'entrée et de sortie fournis depuis Nelson via des paires nom-valeur.

## 💡 Exemples

```matlab
pyrun('a = b * c', 'b', 5, 'c', 10)
r = pyrun('d = a + c', 'd')
```

```matlab
pyrun(["a = 3","print(a)"])
```

```matlab
[R1, R2] = pyrun("a=b*c",["a","b"], 'b', 5, 'c', 10)
```

Python code object representing a script generated through the built-in compile function in Python

```matlab
PYCODE = pyrun('X = compile(''Y = 3'', ''test'', ''exec'')', 'X')
y = pyrun(PYCODE, 'Y')
```

## 🔗 Voir aussi

[pyrunfile](../python_engine/pyrunfile.md), [pyfunction](../python_engine/pyfunction.md), [pyenv](../python_engine/pyenv.md), [Python types supported](../python_engine/3_python_types.md).

## 🕔 Historique

| Version | 📄 Description                                     |
| ------- | -------------------------------------------------- |
| 1.3.0   | version initiale                                   |
| 1.4.0   | Python code object allowed as first input argument |

<!--
## 👤 Auteur

Allan CORNET
-->
