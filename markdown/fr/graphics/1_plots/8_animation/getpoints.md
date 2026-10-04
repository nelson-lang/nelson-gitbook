# getpoints

Retourner les points d'une ligne animee.

## 📝 Syntaxe

- [x, y] = getpoints(an)
- [x, y, z] = getpoints(an)

## 📥 Argument d'entrée

- an - objet graphique animatedline.

## 📤 Argument de sortie

- x, y, z - coordonnees stockees.

## 📄 Description

<b>getpoints</b> retourne uniquement les coordonnees stockees dans la ligne animee.

Les lignes deux dimensions stockent et retournent des coordonnees z nulles lorsqu'une troisieme sortie est demandee.

## 💡 Exemple

```matlab
an = animatedline(1:4, [1 4 2 3]);
[x, y, z] = getpoints(an)
```

## 🔗 Voir aussi

[animatedline](../../../graphics/1_plots/8_animation/animatedline.md), [addpoints](../../../graphics/1_plots/8_animation/addpoints.md), [clearpoints](../../../graphics/1_plots/8_animation/clearpoints.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
