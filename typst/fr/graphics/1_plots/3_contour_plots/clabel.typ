#import "../../nelson_help.typ": *

= clabel <graphics:1_plots.3_contour_plots.clabel>

Étiquetage des contours

== Syntaxe

- #raw("clabel(C,h)");
- #raw("clabel(C,h,v)");
- #raw("clabel(C)");
- #raw("clabel(C,v)");
- #raw("tl = clabel(...)");
- #raw("clabel(...,Name,Value)");

== Argument d'entrée

/ C: Matrice Contour retournée par #strong[contour];, #strong[contourf];, ou#strong[contour3];. Si vous passez un objet contour#strong[h];, vous pouvez passer #strong[\[\]]; pour #strong[C];.


/ h: Handle d'objet contour retourné par #strong[contour]; \/ #strong[contourf]; \/ #strong[contour3];. Lorsqu'il est fourni, l'étiquetage utilise les informations attachées à l'objet contour (niveaux et matrice de contour).


/ v: Vecteur des niveaux de contour à étiqueter. Lorsqu'il est fourni, seuls ces niveaux reçoivent des étiquettes.



== Argument de sortie

/ t: Objets Text créés par #strong[clabel];. Les propriétés #strong[String]; contiennent les valeurs de contour affichées.


/ tl: Objets Text et ligne créés lorsque des marqueurs droits sont utilisés (pour l'utilisation de style #strong[clabel(C)];).



== Description

La fonction#strong[clabel]; insère des étiquettes dans les graphiques de contours :

 

- Fournir une matrice de contour #strong[C]; et un objet de contour#strong[h]; pour étiqueter le texte tourné le long des lignes de contour.
- Fournir uniquement#strong[C]; pour ajouter des étiquettes droites et des marqueurs '+' aux emplacements de contour.
- Passer un vecteur de niveaux#strong[v]; pour étiqueter uniquement des valeurs de contour spécifiques.
- Utiliser des paires Name,Value pour contrôler l'apparence du texte (un sous-ensemble des propriétés Text, plus #strong[LabelSpacing];).
== Exemples

Étiqueter les niveaux de contour (de base).

``````matlab
figure();
[x,y,z] = peaks;
[C,h] = contour(x,y,z);
clabel(C,h)
``````


#align(center)[#image("clabel_1.svg")]
Étiqueter des niveaux de contour spécifiques.

``````matlab
figure();
[x,y,z] = peaks;
[C,h] = contour(x,y,z);
v = [2,6];
clabel(C,h,v)
``````


#align(center)[#image("clabel_2.svg")]
Définir les propriétés des étiquettes de contour avec des paires Name,Value.

``````matlab
figure();
[x,y,z] = peaks;
[C,h] = contour(x,y,z);
clabel(C,h,'FontSize',15,'Color','red')
``````


#align(center)[#image("clabel_3.svg")]
Étiqueter en utilisant uniquement la matrice de contour (étiquettes droites).

``````matlab
figure();
[x,y,z] = peaks;
C = contour(x,y,z);
clabel(C)
``````


#align(center)[#image("clabel_4.svg")]

== Voir aussi

#nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];, #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
