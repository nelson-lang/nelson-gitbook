# chi2inv

Inverse de la fonction de repartition chi-square

## 📝 Syntaxe

- x = chi2inv(p, v)

## 📥 Argument d'entrée

- p - tableau numerique reel de probabilites dans [0,1].
- v - tableau numerique reel positif ou scalaire : degres de liberte.

## 📤 Argument de sortie

- x - valeurs cumulees inverses.

## 📄 Description

<b>chi2inv</b> calcule l'inverse des probabilites chi-square de queue inferieure.

## 💡 Exemple

```matlab
p = [0.025 0.5 0.975];
x = chi2inv(p, 4);
```

## 🔗 Voir aussi

[chi2cdf](../../statistics/chi2cdf.md), [chi2pdf](../../statistics/chi2pdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
