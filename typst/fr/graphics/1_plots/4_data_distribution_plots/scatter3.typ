#import "../../nelson_help.typ": *

= scatter3 <graphics:1_plots.4_data_distribution_plots.scatter3>

Nuage de points 3D.

== Syntaxe

- #raw("scatter3(x, y, z)");
- #raw("scatter3(x, y, z, sz)");
- #raw("scatter3(x, y, z, sz, c)");
- #raw("scatter3(..., 'filled')");
- #raw("scatter3(..., marker)");
- #raw("scatter3(ax, ...)");
- #raw("scatter3(..., propertyName, propertyValue)");
- #raw("s = scatter3(...)");

== Argument d'entrée

/ X: Coordonnées x : vecteur ou matrice.
/ Y: Coordonnées y : vecteur ou matrice.
/ Z: Coordonnées z : vecteur ou matrice.
/ sz: Taille du marqueur : scalaire numérique, vecteur, \[\] (par défaut : 36)
/ c: Couleur du marqueur : nom court de couleur, nom de couleur, triplet RGB ou vecteur d'indices de la carte de couleurs
/ ax: Un objet graphique scalaire : conteneur parent, spécifié comme axes.
/ propertyName: Une chaine scalaire ou un vecteur ligne de caracteres. Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatter.properties>)[proprietes de scatter]; pour la liste des proprietes.
/ propertyValue: Une valeur.

== Argument de sortie

/ s: Un objet graphique : type scatter ou tableau de scatter.

== Description

#strong[scatter3(x, y, z)]; génère un nuage de points en plaçant des marqueurs circulaires aux coordonnées définies par les vecteurs #strong[x];,#strong[y]; et #strong[z];.

 Si vous souhaitez afficher un seul ensemble de données, assurez-vous que #strong[x];, #strong[y]; et #strong[z]; sont des vecteurs de même longueur.

 Pour visualiser plusieurs ensembles de données sur un même axe, vous pouvez utiliser une matrice pour #strong[x];, #strong[y]; ou#strong[z];, en gardant les autres comme vecteurs.

 Cela vous permet de superposer ou de comparer plusieurs ensembles de données dans le même graphique.

 

 Propriétés de Scatter :

 

#table(
  columns: 2,
  [Propriété], [Description], 
  [#strong[AlphaData];], [Transparence de la face du marqueur, 1 (par défaut) ou tableau de même taille que #strong[XData];], 
  [#strong[BeingDeleted];], [Indique que l'objet est en cours de suppression.], 
  [#strong[BusyAction];], [File d'attente des callbacks, 'queue' (par défaut) ou 'cancel'. Cette propriété détermine comment Nelson gère l'exécution des callbacks interrompus.], 
  [#strong[CData];], [Couleurs des marqueurs : \[\] (par défaut), triplet RGB, matrice de triplets RGB ou vecteur. Couleur du marqueur à utiliser pour chaque série de données : 'k'\/'black' (Noir), 'y'\/'yellow' (Jaune), 'm'\/'magenta' (Magenta), 'c'\/'cyan' (Cyan), 'r'\/'red' (Rouge), 'b'\/'blue' (Bleu), 'g'\/'green' (Vert)], 
  [#strong[CDataMode];], [Mode de sélection pour CData : 'manual', 'auto' (par défaut).], 
  [#strong[Children];], [Enfants.], 
  [#strong[CreateFcn];], [Fonction de création du composant.], 
  [#strong[DeleteFcn];], [Fonction de suppression du composant.], 
  [#strong[DisplayName];], [Étiquette de légende : vecteur de caractères ou chaîne, ' ' (par défaut).], 
  [#strong[Interruptible];], [Interruption des callbacks 'on' (par défaut).], 
  [#strong[LineWidth];], [Épaisseur de ligne : valeur scalaire positive.], 
  [#strong[Marker];], [Symbole du marqueur : 'o' (Cercle), 'x' (Croix), '+' (Plus), '\*' (Astérisque), '.' (Point), 's' (Carré), 'd' (Losange), 'v' (Triangle vers le bas), '^' (Triangle vers le haut), ' \> ' (Triangle vers la droite), ' \< ' (Triangle vers la gauche)], 
  [#strong[MarkerEdgeColor];], [Couleur du contour du marqueur : triplet RGB.], 
  [#strong[MarkerEdgeAlpha];], [Transparence du contour du marqueur : scalaire dans \[0,1\], 'flat' ou 1 (par défaut). Pour attribuer des valeurs de transparence distinctes aux contours de chaque point, définissez la propriété AlphaData comme un vecteur de la même taille que #strong[XData]; et la propriété #strong[MarkerEdgeAlpha]; à #strong['flat'];.], 
  [#strong[MarkerFaceColor];], [Couleur de remplissage du marqueur : triplet RGB.], 
  [#strong[MarkerFaceAlpha];], [Transparence du remplissage du marqueur : scalaire dans \[0,1\], 'flat' ou 1 (par défaut). Pour attribuer des valeurs de transparence distinctes aux faces de chaque point, définissez la propriété AlphaData comme un vecteur de la même taille que #strong[XData]; et la propriété #strong[MarkerFaceAlpha]; à #strong['flat'];.], 
  [#strong[Parent];], [Conteneur parent : objet graphique Figure.], 
  [#strong[SizeData];], [Tailles des marqueurs : \[\] (par défaut), scalaire ou vecteur.], 
  [#strong[Tag];], [Identifiant de l'objet : vecteur de caractères, chaîne ou ' ' (par défaut).], 
  [#strong[Type];], [Type d'objet graphique 'scatter'.], 
  [#strong[UserData];], [Données utilisateur : tableau ou \[\]], 
  [#strong[Visible];], [État de visibilité : 'on' (par défaut) ou 'off'.], 
  [#strong[XData];], [Valeurs x : vecteur ou matrice ou \[\] (par défaut).], 
  [#strong[YData];], [Valeurs y : vecteur ou matrice ou \[\] (par défaut).], 
  [#strong[ZData];], [Valeurs z : vecteur ou matrice ou \[\] (par défaut).], 
  [#strong[XDataMode];], [Mode de sélection pour XData : 'manual' ou 'auto'.], 
)

== Exemple

``````matlab
f = figure();
n = 100;
x = randn(n,1);
y = randn(n,1);
z = randn(n,1);
c = z;
sz = 20 + 50 * sqrt(x.^2 + y.^2 + z.^2);
scatter3(x, y, z, sz, c, 'filled');
% Add labels and title
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
title('3D Scatter Plot Demo');
grid on;
axis equal;
view(-66.5, 12);
``````


#align(center)[#image("scatter3_1.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatter.properties>)[proprietes de scatter];, #nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [version initiale],
)

// Auteur: Allan CORNET
