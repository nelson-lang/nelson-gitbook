# poisscdf

Fonction de repartition de Poisson

## 📝 Syntaxe

- p = poisscdf(x, lambda)
- p = poisscdf(x, lambda, 'upper')

## 📥 Argument d'entrée

- x - tableau numerique reel.
- lambda - parametre de taux non negatif.

## 📤 Argument de sortie

- p - probabilites cumulees ou de queue superieure.

## 📄 Description

<b>poisscdf</b> calcule par defaut les probabilites de queue inferieure de Poisson et les probabilites de queue superieure avec <b>'upper'</b>.

## 💡 Exemple

```matlab
x = 0:10;
p = poisscdf(x, 4);
q = poisscdf(x, 4, 'upper');
```

## 🔗 Voir aussi

[poisspdf](../../statistics/poisspdf.md), [poissinv](../../statistics/poissinv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
