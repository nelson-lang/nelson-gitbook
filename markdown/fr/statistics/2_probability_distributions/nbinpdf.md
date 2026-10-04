# nbinpdf

Probabilites binomiales negatives

## 📝 Syntaxe

- y = nbinpdf(x, r, p)

## 📥 Argument d'entrée

- x - tableau numerique reel : nombre d'echecs.
- r - scalaire positif ou tableau : nombre de succes.
- p - scalaire ou tableau dans l'intervalle [0, 1] : probabilite de succes.

## 📤 Argument de sortie

- y - probabilites.

## 📄 Description

<b>nbinpdf</b> calcule les probabilites de la loi binomiale negative.

## 💡 Exemple

```matlab
x = 0:5;
y = nbinpdf(x, 3, 0.4);
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
