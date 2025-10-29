# jlrun

Exécute des instructions Julia depuis Nelson.

## 📝 Syntaxe

- jlrun(code)
- outvars = jlrun(code, outputs)
- outvars = jlrun(code, outputs, jlName, jlValue)

## 📥 Argument d'entrée

- code - une chaîne (scalaire), un tableau de chaînes, un vecteur de caractères ou un tableau de caractères.
- jlName, jlValue - Noms et valeurs des arguments d'entrée.
- outputs - tableau de chaînes : noms des variables Julia.

## 📤 Argument de sortie

- outvars - Une ou plusieurs variables de l'espace de travail Nelson renvoyées sous forme de types Julia valides.

## 📄 Description

<b>jlrun(code)</b> exécute les instructions Julia présentes dans la chaîne de code via l'interpréteur Julia.

Les variables générées par la fonction <b>jlrun</b> restent persistantes, permettant leur réutilisation dans des appels <b>jlrun</b> ultérieurs.

<b>outvars = jlrun(code, outputs)</b> : les variables Julia spécifiées dans outputs sont renvoyées vers Nelson.

Les valeurs de ces variables sont capturées dans <b>outvars</b>.

<b>outvars = jlrun(code, outputs, jlName, jlValue)</b> : le <b>code</b> est exécuté avec des noms de variables d'entrée et de sortie assignés, en utilisant des données Nelson transmises via un ou plusieurs arguments nom-valeur.

## 💡 Exemples

```matlab
jlrun('a = b * c', 'b', 5, 'c', 10)
r = jlrun('d = a + c', 'd')
```

```matlab
jlrun(["a = 3","print(a)"])
```

```matlab
[R1, R2] = jlrun("a=b*c",["a","b"], 'b', 5, 'c', 10)
```

## 🔗 Voir aussi

[jlrunfile](../julia_engine/jlrunfile.md), [jlenv](../julia_engine/jlenv.md), [Julia types supported](../julia_engine/julia_types.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.12.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
