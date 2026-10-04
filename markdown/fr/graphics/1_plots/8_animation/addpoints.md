# addpoints

Ajouter des points a une ligne animee.

## 📝 Syntaxe

- addpoints(an, x, y)
- addpoints(an, x, y, z)

## 📥 Argument d'entrée

- an - objet graphique animatedline.
- x, y, z - coordonnees numeriques avec le meme nombre d'elements.

## 📄 Description

<b>addpoints</b> ajoute des coordonnees a une ligne animee et rafraichit la figure parente.

Si <b>z</b> est omis, des coordonnees z nulles sont stockees.

La propriete <b>MaximumNumPoints</b> limite les coordonnees stockees et conserve les points les plus recents.

## 💡 Exemple

```matlab
an = animatedline('MaximumNumPoints', 50);
x = linspace(0, 4*pi, 200);
addpoints(an, x, sin(x));
drawnow
```

## 🔗 Voir aussi

[animatedline](../../../graphics/1_plots/8_animation/animatedline.md), [clearpoints](../../../graphics/1_plots/8_animation/clearpoints.md), [getpoints](../../../graphics/1_plots/8_animation/getpoints.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
