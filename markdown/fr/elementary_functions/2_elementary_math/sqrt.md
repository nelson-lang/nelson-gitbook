# sqrt

Square root.

## 📝 Syntaxe

- R = sqrt(M)

## 📥 Argument d'entrée

- M - a variable

## 📤 Argument de sortie

- R - result of sqrt: square root.

## 📄 Description


<b>sqrt</b> calcule la racine carrée. 

Pour les nombres réels positifs : 
$$\sqrt{x}$$
 

Pour les nombres complexes <b>z = x + iy</b> : 
$$\sqrt{z} = \sqrt{r} e^{i\phi/2}$$
 

où 
$$r = |z| = \sqrt{x^2 + y^2}$$
 

et 
$$\phi = \arg(z) = \text{atan2}(y, x)$$


## 💡 Exemple



```matlab
x = -3:3;
r = sqrt(x)
```


## 🔗 Voir aussi

[log](../../elementary_functions/2_elementary_math/log.md), [abs](../../elementary_functions/2_elementary_math/abs.md), [angle](../../elementary_functions/3_complex_numbers/angle.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
