#import "../../nelson_help.typ": *

= xline <graphics:1_plots.1_line_plots.xline>

Ligne constante verticale.

== Syntaxe

- #raw("xline(xvalue)");
- #raw("xline(xvalue, LineSpec)");
- #raw("xline(xvalue, LineSpec, label)");
- #raw("xline(xvalue, nomPropriete, valeurPropriete)");
- #raw("xline(ax, xvalue)");
- #raw("cl = xline(xvalue)");

== Argument d'entrée

/ xvalue: un scalaire ou un vecteur numérique réel : position de la ou des lignes verticales sur l'axe des x.
/ LineSpec: un vecteur ligne de caractères ou une chaîne scalaire : style et couleur de la ligne, par exemple #strong['--r'];.
/ label: un vecteur ligne de caractères, une chaîne scalaire ou un tableau de cellules de caractères : texte affiché près de la ligne.
/ ax: Axes cible : objet axes.
/ nomPropriete: une chaîne scalaire ou un vecteur ligne de caractères.
/ valeurPropriete: une valeur.

== Argument de sortie

/ cl: un objet graphique : type ConstantLine.

== Description

#strong[xline(xvalue)]; trace une ligne verticale à la valeur #strong[xvalue]; sur les axes courants. La ligne occupe toute la hauteur des axes.

 Utilisez un #strong[LineSpec]; pour définir le style et la couleur de la ligne, et un #strong[label]; pour l'annoter.

 Lorsque #strong[xvalue]; est un vecteur, une ligne verticale est créée pour chaque valeur.


== Exemples

``````matlab
f = figure();
plot(1:10, (1:10).^2);
xline(5, '--r', 'threshold');

``````

``````matlab
f = figure();
plot(-10:10, (-10:10).^2);
xline([-3 3], 'Color', [0 0 1], 'LineWidth', 2);

``````


== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.yline>)[yline];, #nlink(<graphics:1_plots.1_line_plots.line>)[line];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
