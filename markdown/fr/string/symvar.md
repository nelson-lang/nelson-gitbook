# symvar

Determine les variables d'une expression.

## 📝 Syntaxe

- v = symvar(expr)

## 📥 Argument d'entrée

- expr - Expression sous forme de texte (vecteur de caracteres, chaine scalaire) ou handle de fonction.

## 📤 Argument de sortie

- v - Tableau cellule colonne des noms de variables.

## 📄 Description

<b>symvar</b> renvoie les noms des variables utilisees dans <b>expr</b>, tries par ordre alphabetique et sans doublon.

Les identifiants correspondant a une fonction ou a une primitive (y compris les valeurs speciales <b>pi</b>, <b>i</b>, <b>j</b>, <b>eps</b>, <b>Inf</b> et <b>NaN</b>), les mots cles du langage et les noms d'acces a un champ ne sont pas consideres comme des variables.

## 💡 Exemple

```matlab
v = symvar('sin(x) + a*y')
```

## 🔗 Voir aussi

[vectorize](vectorize.md), [func2str](../function_handle/func2str.md), [iskeyword](../core/iskeyword.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
