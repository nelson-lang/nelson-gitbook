# normstat

Moyenne et variance normales

## 📝 Syntaxe

- [m, v] = normstat(mu, sigma)

## 📥 Argument d'entrée

- mu - scalaire ou tableau : moyenne.
- sigma - scalaire non negatif ou tableau : ecart type.

## 📤 Argument de sortie

- m - tableau : moyennes.
- v - tableau : variances.

## 📄 Description

<b>normstat</b> retourne la moyenne et la variance de la loi normale.

## 💡 Exemple

```matlab
[m, v] = normstat([0 1 2], [1 2 3]);
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
