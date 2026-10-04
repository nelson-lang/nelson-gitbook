# betalike

Oppose de la log-vraisemblance beta

## 📝 Syntaxe

- nlogL = betalike(params, x)
- [nlogL, avar] = betalike(params, x)

## 📥 Argument d'entrée

- params - vecteur reel positif a deux elements : parametres de forme de la loi beta.
- x - tableau reel non vide de valeurs finies dans l'intervalle ouvert (0, 1) : donnees observees.

## 📤 Argument de sortie

- nlogL - scalaire : oppose de la log-vraisemblance.
- avar - tableau 2 par 2 : estimation de covariance asymptotique.

## 📄 Description

<b>betalike</b> retourne l'oppose de la log-vraisemblance pour des donnees de loi beta et l'estimation de covariance asymptotique.

## 💡 Exemple

```matlab
x = [0.12 0.2 0.35 0.5 0.7 0.85];
[nlogL, avar] = betalike([1.5 1.8], x);
```

## 🔗 Voir aussi

[betafit](../../statistics/betafit.md), [betapdf](../../statistics/betapdf.md), [betacdf](../../statistics/betacdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
