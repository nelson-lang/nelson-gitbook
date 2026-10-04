# nbinstat

Moyenne et variance binomiales negatives

## 📝 Syntaxe

- m = nbinstat(r, p)
- [m, v] = nbinstat(r, p)

## 📥 Argument d'entrée

- r - scalaire positif ou tableau : nombre de succes.
- p - scalaire ou tableau dans l'intervalle [0, 1] : probabilite de succes.

## 📤 Argument de sortie

- m - moyennes.
- v - variances.

## 📄 Description

<b>nbinstat</b> calcule la moyenne et la variance de la loi binomiale negative.

## 💡 Exemple

```matlab
[m, v] = nbinstat([1 3], [0.5 0.4]);
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
