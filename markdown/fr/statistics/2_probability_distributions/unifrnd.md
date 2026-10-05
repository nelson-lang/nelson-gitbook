# unifrnd

Nombres aleatoires uniformes continus

## 📝 Syntaxe

- r = unifrnd(a, b)
- r = unifrnd(a, b, sz)
- r = unifrnd(a, b, sz1, ..., szN)

## 📥 Argument d'entrée

- a - scalaire reel ou tableau : borne inferieure.
- b - scalaire reel ou tableau : borne superieure.
- sz - vecteur de taille ou scalaires de taille pour la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description


<b>unifrnd</b> genere des nombres aleatoires selon des lois uniformes continues avec le generateur global de Nelson. 

Les bornes scalaires sont etendues a la taille demandee. Les intervalles invalides produisent des valeurs NaN.

## 💡 Exemple



```matlab
rng(0);
r = unifrnd(0, 1);
r2 = unifrnd(0, 1, [2 3]);
r3 = unifrnd(0:5, 1:6, 1, 6);
```


## 🔗 Voir aussi

[unifpdf](../../statistics/2_probability_distributions/unifpdf.md), [unifcdf](../../statistics/2_probability_distributions/unifcdf.md), [unifinv](../../statistics/2_probability_distributions/unifinv.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
