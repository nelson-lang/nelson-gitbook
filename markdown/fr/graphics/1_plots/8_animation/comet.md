# comet

Creer un trace comete 2-D.

## 📝 Syntaxe

- comet(y)
- comet(x, y)
- comet(x, y, p)
- comet(ax, x, y, p)

## 📥 Argument d'entrée

- x, y - vecteurs numeriques avec le meme nombre d'elements.
- p - facteur de longueur du corps dans l'intervalle [0, 1).
- ax - axes cible.

## 📄 Description

<b>comet</b> anime une tete avec marqueur, un corps mobile et une trace complete pour un trace comete deux dimensions.

L'etat final des axes contient deux objets animatedline et un objet line avec marqueur seulement.

## 💡 Exemple

```matlab
t = 0:pi/80:2*pi;
comet(cos(t), sin(t), 0.2)
```

## 🔗 Voir aussi

[comet3](../../../graphics/1_plots/8_animation/comet3.md), [animatedline](../../../graphics/1_plots/8_animation/animatedline.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
