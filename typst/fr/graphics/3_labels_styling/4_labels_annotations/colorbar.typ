#import "../../nelson_help.typ": *

= colorbar <graphics:3_labels_styling.4_labels_annotations.colorbar>

Ajoute une echelle de couleurs aux axes.

== Syntaxe

- #raw("colorbar");
- #raw("colorbar(location)");
- #raw("colorbar(target, ...)");
- #raw("colorbar('peer', target, ...)");
- #raw("colorbar(..., propertyName, propertyValue)");
- #raw("colorbar('off')");
- #raw("colorbar('delete')");
- #raw("colorbar('hide')");
- #raw("colorbar(target, 'off')");
- #raw("colorbar(c, 'off')");
- #raw("c = colorbar(...)");

== Argument d'entrée

/ location: Emplacement de la barre de couleur : 'eastoutside', 'westoutside', 'northoutside', 'southoutside', 'east', 'west', 'north', 'south' ou 'manual'. Les valeurs 'horizontal' et 'vertical' sont acceptees comme alias de compatibilite de 'southoutside' et 'eastoutside'.
/ target: Axes auxquels appartient l'echelle de couleurs. Si la cible est omise, les axes courants sont utilises.
/ c: Objet graphique colorbar.
/ propertyName, propertyValue: Paires nom-valeur appliquees aux proprietes de la barre de couleur lors de sa creation.
/ 'off', 'delete', 'hide': Supprime la barre de couleur associee aux axes courants, aux axes specifies ou a la barre de couleur specifiee.

== Argument de sortie

/ c: Objet graphique colorbar.

== Description

#strong[colorbar]; ajoute une echelle de couleurs a un graphique. La barre de couleur est un objet graphique rattache a la figure et associe a des axes.

 L'emplacement par defaut est #strong[eastoutside];. Les emplacements externes reservent de la place pres des axes. Les emplacements internes dessinent la barre de couleur dans la zone des axes. Affecter la propriete #strong[Position]; passe #strong[Location]; a #strong[manual];.

 La propriete #strong[Location]; accepte aussi #strong[layout]; pour les dispositions en tuiles. Utilisez #strong[colorbar(ax, 'Location', 'layout')]; puis affectez #strong[c.Layout.Tile]; avec un numero de tuile ou avec 'east', 'west', 'north' ou 'south'. La forme positionnelle #strong[colorbar(ax, 'layout')]; n'est pas acceptee.

 Les proprietes visuelles importantes incluent #strong[Box];, #strong[Color];, #strong[Direction];, #strong[FontAngle];, #strong[FontName];, #strong[FontSize];, #strong[FontWeight];, #strong[Limits];, #strong[LineWidth];, #strong[AxisLocation];, #strong[TickDirection];, #strong[TickLabelInterpreter];, #strong[TickLabels];, #strong[TickLength];, #strong[Ticks];, #strong[Units];, #strong[Visible]; et #strong[Label];.

 Les valeurs automatiques de #strong[Limits];, #strong[Ticks]; et #strong[TickLabels]; sont mises a jour depuis les limites de couleur et la palette des axes associes. Affecter #strong[Limits];, #strong[Ticks];, #strong[TickLabels];, #strong[AxisLocation]; ou #strong[Position]; passe la propriete de mode correspondante en manuel lorsque c'est approprie.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.colorbar.properties>)[proprietes de colorbar]; pour la liste complete des proprietes.


== Exemples

Afficher une barre de couleur verticale pour une surface.

``````matlab
figure();
surf(peaks);
colormap('summer');
colorbar;
``````


#align(center)[#image("colorbar_1.svg")]
Placer une barre horizontale sous des contours remplis.

``````matlab
figure();
contourf(peaks);
colormap('parula');
colorbar('southoutside');
``````


#align(center)[#image("colorbar_2.svg")]
Personnaliser les graduations, leurs textes et le libelle de la barre.

``````matlab
figure();
imagesc(peaks);
cb = colorbar('Ticks', [-6 -3 0 3 6], ...
  'TickLabels', {'low'; '-3'; '0'; '3'; 'high'});
cb.Label.String = 'Scale';
cb.Direction = 'reverse';
``````


#align(center)[#image("colorbar_3.svg")]
Associer une barre de couleur au bord d'une disposition en tuiles.

``````matlab
figure();
t = tiledlayout(1, 2);
ax1 = nexttile(t);
imagesc(peaks);
title(ax1, 'Tile 1');
ax2 = nexttile(t);
contourf(peaks);
title(ax2, 'Tile 2');
cb = colorbar(ax2, 'Location', 'layout');
cb.Layout.Tile = 'east';
``````


#align(center)[#image("colorbar_4.svg")]
Essayer tous les emplacements standards.

``````matlab
locations = {'north'; 'south'; 'east'; 'west'; ...
  'northoutside'; 'southoutside'; 'eastoutside'; 'westoutside'};
figure();
surf(peaks);
colormap('jet');
for k = 1:length(locations)
  colorbar(locations{k});
  pause(1);
end
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.colorbar.properties>)[proprietes de colorbar];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];, #nlink(<graphics:3_labels_styling.2_color_styling.clim>)[clim];, #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.15.0], [ajout du support de l'argument location],
  [2.0.0], [reimplementation comme objet graphique colorbar natif],
)

// Auteur: Allan CORNET
