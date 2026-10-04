# betacdf

Fonction de repartition beta

## 📝 Syntaxe

- p = betacdf(x, a, b)
- p = betacdf(x, a, b, 'upper')

## 📥 Argument d'entrée

- x - tableau numerique reel.
- a - premier parametre de forme positif.
- b - second parametre de forme positif.

## 📤 Argument de sortie

- p - probabilites cumulees ou de queue superieure.

## 📄 Description

<b>betacdf</b> calcule par defaut les probabilites de queue inferieure beta et les probabilites de queue superieure avec <b>'upper'</b>.

## 💡 Exemple

```matlab
x = [0 0.1 0.5 0.9 1];
p = betacdf(x, 2, 5);
q = betacdf(x, 2, 5, 'upper');
```

## 🔗 Voir aussi

[betapdf](../../statistics/betapdf.md), [betainv](../../statistics/betainv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
