# comet3

Creer un trace comete 3-D.

## 📝 Syntaxe

- comet3(z)
- comet3(x, y, z)
- comet3(x, y, z, p)
- comet3(ax, x, y, z, p)

## 📥 Argument d'entrée

- z - valeurs z: vecteur numerique.
- x, y, z - vecteurs numeriques avec le meme nombre d'elements.
- p - facteur de longueur du corps dans l'intervalle [0, 1).
- ax - axes cible.

## 📄 Description


<b>comet3</b> anime une tete avec marqueur, un corps mobile et une trace complete pour un trace comete trois dimensions. 

<b>comet3(z)</b> trace <b>z</b> en fonction des indices sur les axes x et y. 

L'etat final des axes contient deux objets animatedline et un objet line pour le marqueur de tete.

## 💡 Exemple



```matlab
t = -pi:pi/120:pi;
comet3(sin(5 * t), cos(3 * t), t, 0.2)
```


## 🔗 Voir aussi

[comet](../../../graphics/1_plots/8_animation/comet.md), [animatedline](../../../graphics/1_plots/8_animation/animatedline.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
