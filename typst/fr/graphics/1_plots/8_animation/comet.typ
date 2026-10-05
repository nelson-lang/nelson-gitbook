#import "../../nelson_help.typ": *

= comet <graphics:1_plots.8_animation.comet>

Creer un trace comete 2-D.

== Syntaxe

- #raw("comet(y)");
- #raw("comet(x, y)");
- #raw("comet(x, y, p)");
- #raw("comet(ax, x, y, p)");

== Argument d'entrée

/ x, y: vecteurs numeriques avec le meme nombre d'elements.
/ p: facteur de longueur du corps dans l'intervalle \[0, 1).
/ ax: axes cible.

== Description

#strong[comet]; anime une tete avec marqueur, un corps mobile et une trace complete pour un trace comete deux dimensions.

 L'etat final des axes contient deux objets animatedline et un objet line avec marqueur seulement.


== Exemple

``````matlab
t = 0:pi/80:2*pi;
comet(cos(t), sin(t), 0.2)
``````


== Voir aussi

#nlink(<graphics:1_plots.8_animation.comet3>)[comet3];, #nlink(<graphics:1_plots.8_animation.animatedline>)[animatedline];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
