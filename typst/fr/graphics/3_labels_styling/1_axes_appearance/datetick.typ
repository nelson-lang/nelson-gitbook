#import "../../nelson_help.typ": *

= datetick <graphics:3_labels_styling.1_axes_appearance.datetick>

Etiquettes de graduation au format date.

== Syntaxe

- #raw("datetick()");
- #raw("datetick(tickaxis)");
- #raw("datetick(tickaxis, dateFormat)");
- #raw("datetick(..., 'keeplimits')");
- #raw("datetick(..., 'keepticks')");
- #raw("datetick(ax, ...)");

== Argument d'entrée

/ tickaxis: Axe a etiqueter : 'x' (defaut), 'y' ou 'z'.
/ dateFormat: Format de date, donne sous la forme d'une chaine de format #strong[datestr]; (par exemple 'yyyy') ou d'un numero de format.
/ 'keeplimits': Conserve les limites courantes de l'axe.
/ 'keepticks': Conserve les positions courantes des graduations.
/ ax: Axes cibles. Par defaut, les axes courants.

== Description

#strong[datetick]; etiquette les graduations d'un axe avec des dates, en traitant les valeurs des graduations comme des numeros de date serie (voir #strong[datenum];).

 Si aucun format n'est donne, un format est choisi selon l'etendue couverte par les graduations. Utilisez #strong[keepticks]; pour conserver les positions des graduations et #strong[keeplimits]; pour conserver les limites.


== Exemple

Etiqueter l'axe des x avec des annees.

``````matlab

t = datenum(2000, 1, 1):365:datenum(2010, 1, 1);
plot(t, rand(1, numel(t)));
datetick('x', 'yyyy');

``````


== Voir aussi

#nlink(<graphics:3_labels_styling.1_axes_appearance.xticks>)[xticks];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xticklabels>)[xticklabels];, #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickformat>)[xtickformat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
