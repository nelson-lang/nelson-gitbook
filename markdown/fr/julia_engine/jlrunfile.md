# jlrunfile

Exécute un fichier Julia depuis Nelson.

## 📝 Syntaxe

- jlrunfile(filename)
- jlrunfile(filename input)
- outvars = jlrunfile(filename, outputs)
- outvars = jlrunfile(filename, outputs, jlName, jlValue, ...)

## 📥 Argument d'entrée

- filename - un scalaire chaîne ou vecteur de caractères : nom de fichier .jl à exécuter.
- "filename 'input'" - un scalaire chaîne ou vecteur de caractères : nom de fichier .jl à exécuter avec des arguments d'entrée.
- jlName, jlValue - Noms et valeurs des arguments d'entrée.
- outputs - tableau de chaînes : noms des variables Julia.

## 📤 Argument de sortie

- outvars - Une ou plusieurs variables de l'espace de travail Nelson renvoyées sous forme de types Julia valides.

## 📄 Description

<b>jlrunfile(filename)</b> exécute un fichier Julia.

Comme la fonction <b>jlrun</b>, les variables générées dans l'espace Julia via <b>jlrunfile</b> sont persistantes.

Le code <b>outvars = jlrunfile(file, outputs, jlName1, jlValue2, ..., jlNameN, jlValueN)</b> exécute le fichier avec un ou plusieurs arguments nom-valeur.

## 💡 Exemples

jlrunfile_example_1.jl

```matlab
content = "hello Nelson"
display(content)
```

jlrunfile from Nelson

```matlab
jlrunfile('jlrunfile_example_1.jl')
```

## 🔗 Voir aussi

[jlrun](../julia_engine/jlrun.md), [jlenv](../julia_engine/jlenv.md), [Julia types supported](../julia_engine/julia_types.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.12.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
