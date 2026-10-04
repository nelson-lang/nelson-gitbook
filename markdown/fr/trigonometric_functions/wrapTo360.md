# wrapTo360

Ramene un angle en degres dans [0, 360].

## 📝 Syntaxe

- beta = wrapTo360(alpha)

## 📥 Argument d'entrée

- alpha - angle en degres : scalaire, vecteur ou matrice.

## 📤 Argument de sortie

- beta - angle ramene en degres, dans [0, 360].

## 📄 Description

<b>wrapTo360(alpha)</b> ramene les angles en degres dans l'intervalle <b>[0, 360]</b>. Les multiples positifs de 360 donnent 360, et zero donne 0.

## 💡 Exemple

```matlab
wrapTo360([-10 370 720])
```

## 🔗 Voir aussi

[wrapTo180](wrapTo180.md), [wrapTo2Pi](wrapTo2Pi.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
