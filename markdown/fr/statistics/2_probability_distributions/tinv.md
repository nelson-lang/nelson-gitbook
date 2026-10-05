# tinv

Fonction de repartition inverse de Student t

## 📝 Syntaxe

- x = tinv(p, v)

## 📥 Argument d'entrée

- p - tableau numerique reel : probabilites.
- v - tableau numerique reel positif ou scalaire : degres de liberte.

## 📤 Argument de sortie

- x - valeurs inverses de queue inferieure de Student t.

## 📄 Description


<b>tinv</b> calcule les probabilites inverses de queue inferieure de Student t.

## 💡 Exemple



```matlab
p = [0.025 0.5 0.975];
x = tinv(p, 5);
```


## 🔗 Voir aussi

[tcdf](../../statistics/2_probability_distributions/tcdf.md), [tpdf](../../statistics/2_probability_distributions/tpdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
