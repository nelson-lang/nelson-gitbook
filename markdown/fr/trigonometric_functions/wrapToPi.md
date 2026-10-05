# wrapToPi

Ramene un angle en radians dans [-pi, pi].

## 📝 Syntaxe

- beta = wrapToPi(alpha)

## 📥 Argument d'entrée

- alpha - angle en radians : scalaire, vecteur ou matrice.

## 📤 Argument de sortie

- beta - angle ramene en radians, dans [-pi, pi].

## 📄 Description


<b>wrapToPi(alpha)</b> ramene les angles en radians dans l'intervalle <b>[-pi, pi]</b>. Les multiples positifs de pi donnent pi, les multiples negatifs donnent -pi.

## 💡 Exemple



```matlab
wrapToPi([4 -4])
```


## 🔗 Voir aussi

[wrapTo2Pi](wrapTo2Pi.md), [wrapTo180](wrapTo180.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
