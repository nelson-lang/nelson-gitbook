# unifcdf

Fonction de repartition uniforme continue

## 📝 Syntaxe

- p = unifcdf(x)
- p = unifcdf(x, a, b)
- p = unifcdf(..., 'upper')

## 📥 Argument d'entrée

- x - tableau numerique reel.
- a - borne inferieure, 0 par defaut.
- b - borne superieure, 1 par defaut.

## 📤 Argument de sortie

- p - probabilites cumulees ou de queue superieure.

## 📄 Description


<b>unifcdf</b> calcule par defaut les probabilites de queue inferieure uniforme continue et les probabilites de queue superieure avec <b>'upper'</b>.

## 💡 Exemple



```matlab
x = 0:0.25:1;
p = unifcdf(x);
q = unifcdf(x, 'upper');
```


## 🔗 Voir aussi

[unifpdf](../../statistics/2_probability_distributions/unifpdf.md), [unifinv](../../statistics/2_probability_distributions/unifinv.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
