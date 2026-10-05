#import "../../nelson_help.typ": *

= surf <graphics:1_plots.7_surfaces_volumes_polygons.surf>

tracé de surface.

== Syntaxe

- #raw("surf(X, Y, Z)");
- #raw("surf(X, Y, Z, C)");
- #raw("surf(Z)");
- #raw("surf(Z, C)");
- #raw("surf(parent, ...)");
- #raw("surf(..., propertyName, propertyValue)");
- #raw("go = surf(...)");

== Argument d'entrée

/ X: Coordonnées x : vecteur ou matrice.
/ Y: Coordonnées y : vecteur ou matrice.
/ Z: Coordonnées z : vecteur ou matrice.
/ C: Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
/ parent: Un objet graphique scalaire : conteneur parent, spécifié comme axes.
/ propertyName: Une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Un objet graphique : type surface.

== Description

#strong[surf]; crée un tracé de surface 3D. Il peut être utilisé pour tracer des données sous forme de matrice ou de fonction de deux variables.

 Vous pouvez personnaliser l'apparence du tracé en utilisant diverses options telles que la couleur, l'éclairage et l'ombrage.

 Par exemple, vous pouvez utiliser l'option colormap pour changer la couleur de la surface, et l'option FaceLighting pour modifier l'éclairage de la surface.

 Propriétés :

 

#table(
  columns: 2,
  [Propriété], [Description], 
  [#strong[AlphaData];], [Données de transparence : tableau de même taille que ZData ou 1 (par défaut).], 
  [#strong[AlphaDataMapping];], [Interprétation des valeurs AlphaData : 'direct', 'none' ou 'scaled' (par défaut).], 
  [#strong[AmbientStrength];], [Intensité de la lumière ambiante : scalaire dans \[0, 1\].], 
  [#strong[BackFaceLighting];], [Éclairage des faces lorsque les normales pointent à l'opposé de la caméra : 'unlit', 'lit' ou 'reverselit' (par défaut).], 
  [#strong[CData];], [Couleurs des sommets : tableau 2D ou 3D.], 
  [#strong[CDataMapping];], [Méthode de mappage des couleurs : 'direct', 'scaled' (par défaut).], 
  [#strong[CDataMode];], [Mode de sélection pour CData : 'manual', 'auto' (par défaut).], 
  [#strong[Children];], [actuellement non utilisé : \[\]], 
  [#strong[DiffuseStrength];], [Intensité de la lumière diffuse : scalaire dans \[0, 1\].], 
  [#strong[EdgeAlpha];], [Transparence des arêtes : valeur scalaire dans \[0, 1\].], 
  [#strong[EdgeColor];], [Couleur des arêtes : triplets RGB.], 
  [#strong[EdgeLighting];], [Effet des objets lumineux sur les arêtes : 'flat', 'gouraud' ou 'none' (par défaut).], 
  [#strong[FaceAlpha];], [Transparence de la face : scalaire dans \[0, 1\].], 
  [#strong[FaceColor];], [Couleur de la face : triplet RGB.], 
  [#strong[FaceLighting];], [Effet des objets lumineux sur les faces : 'gouraud', 'none' ou 'flat' (par défaut).], 
  [#strong[LineStyle];], [Style de ligne : '--', ':', '-.', 'none' ou '-' (par défaut).], 
  [#strong[LineWidth];], [Épaisseur de ligne : valeur positive, 0.5 (par défaut).], 
  [#strong[Marker];], [Symbole du marqueur : 'o' (cercle), '+' (plus), '\*' (astérisque), '.' (point), 'x' (croix), '\_' (ligne horizontale), '|' (ligne verticale), 'square', 'diamond', '^' (triangle vers le haut), 'v' (triangle vers le bas), ' ' (triangle vers la droite), ' ' (triangle vers la gauche), 'pentagram', 'hexagram', 'none' (par défaut).], 
  [#strong[MarkerEdgeColor];], [Couleur du contour du marqueur : triplet RGB.], 
  [#strong[MarkerFaceColor];], [Couleur de remplissage du marqueur : triplet RGB.], 
  [#strong[MarkerSize];], [Taille du marqueur : valeur scalaire positive.], 
  [#strong[MeshStyle];], [Arêtes à afficher : 'row', 'column' ou 'both' (par défaut).], 
  [#strong[Parent];], [Parent : objet axes.], 
  [#strong[SpecularColorReflectance];], [Couleur des reflets spéculaires : scalaire dans \[0, 1\].], 
  [#strong[SpecularExponent];], [Taille de la tache spéculaire : scalaire supérieur ou égal à 1.], 
  [#strong[SpecularStrength];], [Intensité du reflet spéculaire : scalaire dans \[0, 1\].], 
  [#strong[Tag];], [Identifiant de l'objet : vecteur de caractères, chaîne ou ' ' (par défaut).], 
  [#strong[Type];], [Type d'objet graphique : 'surface'.], 
  [#strong[UserData];], [Données utilisateur : tableau ou \[\] (par défaut).], 
  [#strong[VertexNormals];], [Vecteurs normaux pour chaque sommet de la surface : tableau m-par-n-par-3 ou \[\] (par défaut).], 
  [#strong[Visible];], [État de visibilité : 'off' ou 'on' (par défaut).], 
  [#strong[XData];], [Données des coordonnées x : vecteur ou matrice.], 
  [#strong[XDataMode];], [Mode de sélection pour XData : 'manual' ou 'auto'.], 
  [#strong[YData];], [Données des coordonnées y : vecteur ou matrice.], 
  [#strong[YDataMode];], [Mode de sélection pour YData : 'manual' ou 'auto'.], 
  [#strong[ZData];], [Données des coordonnées z : vecteur ou matrice.], 
  [#strong[CreateFcn];], [Callback (fonction, chaîne ou cellule) appelée lors de la création de l'objet. Définir cette propriété sur un composant existant n'a aucun effet.], 
  [#strong[DeleteFcn];], [Callback (fonction, chaîne ou cellule) appelée lors de la suppression de l'objet.], 
  [#strong[BeingDeleted];], [Indique que l'objet est en cours de suppression.], 
)
 Certaines propriétés sont disponibles uniquement pour compatibilité et n'ont actuellement aucun effet sur la surface.


== Exemples

``````matlab
f = figure();
[X, Y, Z] = peaks(35);
C(:, :, 1) = zeros(35);
C(:, :, 2) = ones(35) .* linspace(0.5, 0.6, 35);
C(:, :, 3) = ones(35) .* linspace(0, 1, 35);
S = surf(X, Y, Z, C)
``````


#align(center)[#image("surf_1.svg")]
``````matlab
f = figure();
[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
h = surf(X, Y, Z);
axis square
``````


#align(center)[#image("surf_2.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.view>)[view];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fsurf>)[fsurf];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surface>)[surface];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.7.0], [Ajout des callbacks CreateFcn, DeleteFcn.],
  [--], [Ajout de la propriete BeingDeleted.],
)

// Auteur: Allan CORNET
