# nextpow2

Exposant de la puissance de 2 immédiatement supérieure

## 📝 Syntaxe

- R = nextpow2(M)

## 📥 Argument d'entrée

- M - une variable

## 📤 Argument de sortie

- R - résultat de nextpow2 : puissance de 2 immédiatement supérieure.

## 📄 Description


si <b>M</b> est un vecteur ou une matrice,<b>nextpow2(M)</b> s'applique élément par élément. 

Si <b>M</b> est un scalaire, <b>nextpow2(M)</b> renvoie le premier<b>p</b> tel que <b>2^p >= abs(M)</b>.

## 💡 Exemple



```matlab
R = nextpow2([10, Inf, 30, -Inf, 90, NaN])
M = uint32([1020 4000 32700]);
R = nextpow2(M)
```


## 🔗 Voir aussi

[pow2](../../elementary_functions/2_elementary_math/pow2.md), [log2](../../elementary_functions/2_elementary_math/log2.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
