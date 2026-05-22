# NaN

Crée un Not-a-Number

## 📝 Syntaxe

- NaN
- nan
- NaN(n)
- NaN(n, m)

## 📥 Argument d'entrée

- n - une variable : matrice n-par-n
- m - une variable : matrice n-par-m

## 📄 Description

<b>NaN</b> retourne le symbole IEEE NaN (Not a Number).

<b>NaN</b> est le résultat d'opérations qui ne produisent pas un résultat numérique bien défini.

Attention, vous ne devez jamais comparer <b>NaN</b> avec <b>NaN</b>, dans ce cas, veuillez utiliser <b>isnan</b>.

## 💡 Exemples

```matlab
NaN
```

```matlab
3 + NaN
```

```matlab
NaN != NaN
isnan(NaN)
```

## 🔗 Voir aussi

[isnan](../elementary_functions/isnan.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
