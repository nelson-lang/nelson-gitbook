# lognpdf

Densite de probabilite lognormale

## 📝 Syntaxe

- y = lognpdf(x)
- y = lognpdf(x, mu)
- y = lognpdf(x, mu, sigma)

## 📥 Argument d'entrée

- x - scalaire reel ou tableau : valeurs.
- mu - scalaire reel ou tableau : moyenne des valeurs logarithmiques. La valeur par defaut est 0.
- sigma - scalaire positif ou tableau : ecart-type des valeurs logarithmiques. La valeur par defaut est 1.

## 📤 Argument de sortie

- y - tableau : valeurs de densite.

## 📄 Description

<b>lognpdf</b> evalue les densites lognormales element par element.

## 💡 Exemple

```matlab
x = [0 1 exp(1)];
y = lognpdf(x, 0, 1);
```

## 🔗 Voir aussi

[logncdf](../../statistics/logncdf.md), [logninv](../../statistics/logninv.md), [lognrnd](../../statistics/lognrnd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
