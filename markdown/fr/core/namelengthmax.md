# namelengthmax

Longueur maximale des noms de variables.

## 📝 Syntaxe

- R = namelengthmax

## 📤 Argument de sortie

- R - a double: the maximum variable name length

## 📄 Description

Renvoie la longueur maximale autorisée pour les noms de variables dans l'environnement.

## 💡 Exemples

Working: identifier length 4096 characters

```matlab
ID = ['A', char(double('0') * ones(1, namelengthmax -1 ))];
length(ID)
STR = [ID, ' = 3'];
execstr(STR)

```

Not Working: identifier length 4097 characters

```matlab
ID = ['A', char(double('0') * ones(1, namelengthmax))];
length(ID)
STR = [ID, ' = 3'];
execstr(STR)

```

## 🔗 Voir aussi

[execstr](../core/execstr.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
