#import "../../nelson_help.typ": *

= comet3 <graphics:1_plots.8_animation.comet3>

Creer un trace comete 3-D.

== Syntaxe

- #raw("comet3(z)");
- #raw("comet3(x, y, z)");
- #raw("comet3(x, y, z, p)");
- #raw("comet3(ax, x, y, z, p)");

== Argument d'entrée

/ z: valeurs z: vecteur numerique.
/ x, y, z: vecteurs numeriques avec le meme nombre d'elements.
/ p: facteur de longueur du corps dans l'intervalle \[0, 1).
/ ax: axes cible.

== Description

#strong[comet3]; anime une tete avec marqueur, un corps mobile et une trace complete pour un trace comete trois dimensions.

 #strong[comet3(z)]; trace #strong[z]; en fonction des indices sur les axes x et y.

 L'etat final des axes contient deux objets animatedline et un objet line pour le marqueur de tete.


== Exemple

``````matlab
t = -pi:pi/120:pi;
comet3(sin(5 * t), cos(3 * t), t, 0.2)
``````


== Voir aussi

#nlink(<graphics:1_plots.8_animation.comet>)[comet];, #nlink(<graphics:1_plots.8_animation.animatedline>)[animatedline];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
