#import "../../nelson_help.typ": *

= yline <graphics:1_plots.1_line_plots.yline>

Ligne constante horizontale.

== Syntaxe

- #raw("yline(yvalue)");
- #raw("yline(yvalue, LineSpec)");
- #raw("yline(yvalue, LineSpec, label)");
- #raw("yline(yvalue, nomPropriete, valeurPropriete)");
- #raw("yline(ax, yvalue)");
- #raw("cl = yline(yvalue)");

== Argument d'entrée

/ yvalue: un scalaire ou un vecteur numérique réel : position de la ou des lignes horizontales sur l'axe des y.
/ LineSpec: un vecteur ligne de caractères ou une chaîne scalaire : style et couleur de la ligne, par exemple #strong['--r'];.
/ label: un vecteur ligne de caractères, une chaîne scalaire ou un tableau de cellules de caractères : texte affiché près de la ligne.
/ ax: Axes cible : objet axes.
/ nomPropriete: une chaîne scalaire ou un vecteur ligne de caractères.
/ valeurPropriete: une valeur.

== Argument de sortie

/ cl: un objet graphique : type ConstantLine.

== Description

#strong[yline(yvalue)]; trace une ligne horizontale à la valeur #strong[yvalue]; sur les axes courants. La ligne occupe toute la largeur des axes.

 Utilisez un #strong[LineSpec]; pour définir le style et la couleur de la ligne, et un #strong[label]; pour l'annoter.

 Lorsque #strong[yvalue]; est un vecteur, une ligne horizontale est créée pour chaque valeur.


== Exemples

``````matlab
f = figure();
plot(1:10, (1:10).^2);
yline(50, '-.b', 'mean');

``````

``````matlab
f = figure();
plot(1:10, sin(1:10));
yline([-1 0 1], 'Color', [0 0 1]);

``````


== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.xline>)[xline];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
