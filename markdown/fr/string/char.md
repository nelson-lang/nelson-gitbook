# char

Convertit en tableau de caractères.

## 📝 Syntaxe

- res = char(var)
- res = char(var1, var2)
- res = char(var1, var2, ..., varN)

## 📥 Argument d'entrée

- var - une cellule de chaînes, un tableau de chaînes ou un tableau numérique.
- var1, var2, ..., varN - chaînes ou tableaux numériques.

## 📤 Argument de sortie

- res - un tableau de caractères

## 📄 Description

<b>char</b> convertit une entrée numérique en données de caractères en utilisant le caractère Unicode correspondant pour chaque élément.

## 💡 Exemples

```matlab
M = [ 104   101   108   108   111;
20320   22909 32    32    32];
char(M)
```

```matlab
R = char('these', 'are', 'test', 'strings')
```

```matlab
R = char(["these"; "are"; "test"; "strings"])
```

## 🔗 Voir aussi

[double](../double/double.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
