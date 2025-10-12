# pyrun

Exécuter des instructions Python depuis Nelson.

## Syntaxe

- pyrun(code)
- outvars = pyrun(code, outputs)
- outvars = pyrun(code, outputs, pyName, pyValue)

## Argument d'entrée

- code - un scalaire string, tableau de chaînes, vecteur de caractères, tableau de caractères ou objet code Python.
- pyName, pyValue - noms et valeurs des arguments d'entrée
- outputs - tableau de chaînes : noms de variables Python.

## Argument de sortie

- outvars - Une ou plusieurs variables de l'espace de travail Nelson renvoyées sous des types Python valides.

## Description

<p>
        pyrun(code) exécute les instructions Python contenues dans la chaîne code au sein de l'interpréteur Python.</p>

<p>Les variables générées par pyrun restent persistantes, permettant leur réutilisation dans des appels pyrun ultérieurs.</p>

<p>
            outvars = pyrun(code, outputs) : les variables Python spécifiées dans outputs sont renvoyées à Nelson.</p>

<p>Les valeurs de ces variables sont capturées dans outvars.</p>

<p>
              outvars = pyrun(code, outputs, pyName, pyValue) : le code est exécuté avec des noms/valeurs d'entrée et de sortie fournis depuis Nelson via des paires nom-valeur.</p>

## Exemples

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

## Voir aussi

[pyrunfile](../python_engine/pyrunfile.md), [pyenv](../python_engine/pyenv.md), [Python types supported](../python_engine/3_python_types.md).

## Historique

| Version | Description                                        |
| ------- | -------------------------------------------------- |
| 1.3.0   | version initiale                                   |
| 1.4.0   | Python code object allowed as first input argument |

## Auteur

Allan CORNET
