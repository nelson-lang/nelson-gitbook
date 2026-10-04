# betainv

Fonction de repartition inverse beta

## 📝 Syntaxe

- x = betainv(p, a, b)

## 📥 Argument d'entrée

- p - tableau numerique reel de probabilites.
- a - premier parametre de forme positif.
- b - second parametre de forme positif.

## 📤 Argument de sortie

- x - valeurs inverses de queue inferieure beta.

## 📄 Description

<b>betainv</b> calcule les probabilites inverses de queue inferieure beta.

## 💡 Exemple

```matlab
p = [0.025 0.5 0.975];
x = betainv(p, 2, 5);
```

## 🔗 Voir aussi

[betacdf](../../statistics/betacdf.md), [betapdf](../../statistics/betapdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
