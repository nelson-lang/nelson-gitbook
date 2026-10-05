#import "../../nelson_help.typ": *

= heatmap <graphics:1_plots.4_data_distribution_plots.heatmap>

Creer une carte de chaleur depuis une matrice numerique ou une table.

== Syntaxe

- #raw("heatmap(C)");
- #raw("heatmap(xvalues, yvalues, C)");
- #raw("heatmap(tbl, xvar, yvar)");
- #raw("heatmap(tbl, xvar, yvar, 'ColorVariable', cvar)");
- #raw("heatmap(parent, ...)");
- #raw("heatmap(..., propertyName, propertyValue)");
- #raw("h = heatmap(...)");

== Argument d'entrée

/ C: Matrice numerique utilisee comme donnees de couleur.
/ xvalues: Etiquettes des colonnes : cellule de chaines, string, caracteres ou vecteur numerique.
/ yvalues: Etiquettes des lignes : cellule de chaines, string, caracteres ou vecteur numerique.
/ tbl: Table source utilisee pour calculer les valeurs de couleur.
/ xvar: Variable de table utilisee pour les categories x.
/ yvar: Variable de table utilisee pour les categories y.
/ cvar: Variable de table numerique moyennee pour chaque paire de categories x\/y.
/ parent: Axes ou hggroup parent.
/ propertyName: Nom de propriete pris en charge.
/ propertyValue: Valeur de propriete.

== Argument de sortie

/ h: Objet graphique heatmap contenant l'image, la grille, les etiquettes et l'etat de la barre de couleurs.

== Description

#strong[heatmap]; affiche une matrice numerique sous forme d'image avec couleurs mises a l'echelle et etiquettes de lignes et colonnes. Pour une table, les categories sont triees et les donnees de couleur sont agregees par paire de categories.

 Avec #strong[heatmap(tbl, xvar, yvar)];, les donnees de couleur contiennent les comptages et #strong[ColorMethod]; vaut #strong[count];. Avec #strong[ColorVariable];, les donnees de couleur contiennent les moyennes et #strong[ColorMethod]; vaut #strong[mean];.

 Cette implementation retourne un objet graphique #strong[heatmap];. Le champ #strong[UserData]; de l'objet contient #strong[ChartType];, #strong[Image];, #strong[Grid];, #strong[CellLabels];, #strong[Colorbar];, #strong[XData];, #strong[YData];, #strong[ColorData];, #strong[SourceTable];, #strong[XVariable];, #strong[YVariable];, #strong[ColorVariable];, #strong[ColorMethod]; et #strong[Options];.

 Les proprietes name\/value prises en charge sont #strong[Title];, #strong[XLabel];, #strong[YLabel];, #strong[SourceTable];, #strong[XVariable];, #strong[YVariable];, #strong[ColorVariable];, #strong[ColorMethod];, #strong[XData];, #strong[YData];, #strong[XDisplayLabels];, #strong[YDisplayLabels];, #strong[ColorLimits];, #strong[Colormap];, #strong[ColorbarVisible];, #strong[GridVisible];, #strong[CellLabelFormat];, #strong[CellLabelColor];, #strong[MissingDataLabel];, #strong[FontColor];, #strong[FontSize]; et #strong[Visible];.


== Exemples

Afficher une carte de chaleur numerique.

``````matlab
C = [1 2 3; 4 5 6];
heatmap(C);
``````


#align(center)[#image("heatmap_1.svg")]
Utiliser des etiquettes de lignes et colonnes.

``````matlab
C = [3 7 2; 6 5 8];
heatmap({'A', 'B', 'C'}, {'Low', 'High'}, C, ...
  'Title', 'Scores', 'XLabel', 'Column', 'YLabel', 'Group');
``````


#align(center)[#image("heatmap_2.svg")]
Creer une carte de chaleur depuis des categories de table.

``````matlab
T = table({'B'; 'A'; 'B'}, {'Y'; 'X'; 'X'}, [2; 5; 8], ...
  'VariableNames', {'x', 'y', 'v'});
heatmap(T, 'x', 'y', 'ColorVariable', 'v');
``````


#align(center)[#image("heatmap_3.svg")]
Personnaliser les couleurs et les etiquettes.

``````matlab
C = peaks(12);
heatmap(C, 'ColorLimits', [-6 8], 'Colormap', turbo(64), ...
  'CellLabelFormat', '%0.1f', 'GridVisible', 'off');
``````


#align(center)[#image("heatmap_4.svg")]

== Voir aussi

#nlink(<graphics:4_images.imagesc>)[imagesc];, #nlink(<graphics:3_labels_styling.4_labels_annotations.colorbar>)[colorbar];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.
