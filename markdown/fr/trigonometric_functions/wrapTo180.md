# wrapTo180

Ramene un angle en degres dans [-180, 180].

## 📝 Syntaxe

- beta = wrapTo180(alpha)

## 📥 Argument d'entrée

- alpha - angle en degres : scalaire, vecteur ou matrice.

## 📤 Argument de sortie

- beta - angle ramene en degres, dans [-180, 180].

## 📄 Description

<b>wrapTo180(alpha)</b> ramene les angles en degres dans l'intervalle <b>[-180, 180]</b>. Les multiples positifs de 180 donnent 180, les multiples negatifs donnent -180.

## 💡 Exemple

```matlab
wrapTo180([190 -190 360])
```

## 🔗 Voir aussi

[wrapTo360](wrapTo360.md), [wrapToPi](wrapToPi.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
