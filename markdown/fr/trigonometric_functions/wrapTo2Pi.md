# wrapTo2Pi

Ramene un angle en radians dans [0, 2\*pi].

## 📝 Syntaxe

- beta = wrapTo2Pi(alpha)

## 📥 Argument d'entrée

- alpha - angle en radians : scalaire, vecteur ou matrice.

## 📤 Argument de sortie

- beta - angle ramene en radians, dans [0, 2\*pi].

## 📄 Description


<b>wrapTo2Pi(alpha)</b> ramene les angles en radians dans l'intervalle <b>[0, 2\*pi]</b>. Les multiples positifs de 2\*pi donnent 2\*pi, et zero donne 0.

## 💡 Exemple



```matlab
wrapTo2Pi([-1 2*pi])
```


## 🔗 Voir aussi

[wrapToPi](wrapToPi.md), [wrapTo360](wrapTo360.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
