# tstat

Moyenne et variance Student t

## 📝 Syntaxe

- [m, v] = tstat(nu)

## 📥 Argument d'entrée

- nu - scalaire positif ou tableau : degres de liberte.

## 📤 Argument de sortie

- m - tableau : moyennes.
- v - tableau : variances.

## 📄 Description

<b>tstat</b> retourne la moyenne et la variance de la loi Student t.

## 💡 Exemple

```matlab
[m, v] = tstat([1.5 3 Inf]);
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
