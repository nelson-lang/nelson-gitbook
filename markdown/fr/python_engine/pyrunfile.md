# pyrunfile

Exécuter un fichier Python depuis Nelson.

## 📝 Syntaxe

- pyrunfile(filename)
- pyrunfile(filename input)
- outvars = pyrunfile(filename, outputs)
- outvars = pyrunfile(filename, outputs, pyName, pyValue, ...)

## 📥 Argument d'entrée

- filename - un scalaire string, vecteur de caractères : nom du fichier .py à exécuter.
- "filename 'input'" - un scalaire string, vecteur de caractères : nom du fichier .py à exécuter avec arguments d'entrée.
- pyName, pyValue - noms et valeurs des arguments d'entrée
- outputs - tableau de chaînes : noms de variables Python.

## 📤 Argument de sortie

- outvars - Une ou plusieurs variables de l'espace de travail Nelson renvoyées sous des types Python valides.

## 📄 Description

<b>pyrunfile(filename)</b> exécute un fichier Python.

Contrairement à la fonction <b>pyrun</b>, les variables générées dans l'espace Python par <b>pyrunfile</b> ne persistent pas. Ainsi, les appels suivants à <b>pyrunfile</b> ne pourront pas accéder à ces variables.

Le code <b>outvars = pyrunfile(file, outputs, pyName1, pyValue2, ..., pyNameN, pyValueN)</b> exécute le code avec une ou plusieurs paires nom-valeur en entrée.

Limitation connue :

Les fonctions <b>pyrun</b> et <b>pyrunfile</b> ne prennent pas en charge les classes contenant des variables locales initialisées par d'autres variables locales via des méthodes. Dans ce cas, il est conseillé de créer un module et d'y accéder.

## 💡 Exemples

pyrunfile_example_1.py

```matlab
content = "hello Nelson"
print(content)
```

pyrunfile from Nelson

```matlab
pyrunfile('pyrunfile_example_1.py')
```

pyrunfile_example_2.py

```matlab
import sys
print('greetings from:')
for arg in sys.argv[0:]:
    print(arg)

```

pyrunfile from Nelson with arguments

```matlab
pyrunfile('pyrunfile_example_2.py "Hello" "world"')
```

pyrunfile_example_3.py

```matlab
def minus(a,c):
    b = a-c
    return b

z = minus(x, y)

```

pyrunfile from Nelson with values from Nelson

```matlab
pyrunfile('pyrunfile_example_3.py', 'x', 5, 'y', 3)
```

## 🔗 Voir aussi

[pyrun](../python_engine/pyrun.md), [pyenv](../python_engine/pyenv.md), [Python types supported](../python_engine/3_python_types.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.4.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
