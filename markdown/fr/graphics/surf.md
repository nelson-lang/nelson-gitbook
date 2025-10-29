# surf

tracé de surface.

## 📝 Syntaxe

- surf(X, Y, Z)
- surf(X, Y, Z, C)
- surf(Z)
- surf(Z, C)
- surf(parent, ...)
- surf(..., propertyName, propertyValue)
- go = surf(...)

## 📥 Argument d'entrée

- X - Coordonnées x : vecteur ou matrice.
- Y - Coordonnées y : vecteur ou matrice.
- Z - Coordonnées z : vecteur ou matrice.
- C - Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
- parent - Un objet graphique scalaire : conteneur parent, spécifié comme axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Une valeur.

## 📤 Argument de sortie

- go - Un objet graphique : type surface.

## 📄 Description

Définir cette propriété sur un composant existant n'a aucun effet.

<b>surf</b> crée un tracé de surface 3D. Il peut être utilisé pour tracer des données sous forme de matrice ou de fonction de deux variables.

Vous pouvez personnaliser l'apparence du tracé en utilisant diverses options telles que la couleur, l'éclairage et l'ombrage.

Par exemple, vous pouvez utiliser l'option colormap pour changer la couleur de la surface, et l'option FaceLighting pour modifier l'éclairage de la surface.

Propriétés :
| Propriété | Description |
| --- | --- |
| **AlphaData** | Données de transparence : tableau de même taille que ZData ou 1 (par défaut). |
| **AlphaDataMapping** | Interprétation des valeurs AlphaData : 'direct', 'none' ou 'scaled' (par défaut). |
| **AmbientStrength** | Intensité de la lumière ambiante : scalaire dans [0, 1]. |
| **BackFaceLighting** | Éclairage des faces lorsque les normales pointent à l'opposé de la caméra : 'unlit', 'lit' ou 'reverselit' (par défaut). |
| **CData** | Couleurs des sommets : tableau 2D ou 3D. |
| **CDataMapping** | Méthode de mappage des couleurs : 'direct', 'scaled' (par défaut). |
| **CDataMode** | Mode de sélection pour CData : 'manual', 'auto' (par défaut). |
| **Children** | actuellement non utilisé : [] |
| **DiffuseStrength** | Intensité de la lumière diffuse : scalaire dans [0, 1]. |
| **EdgeAlpha** | Transparence des arêtes : valeur scalaire dans [0, 1]. |
| **EdgeColor** | Couleur des arêtes : triplets RGB. |
| **EdgeLighting** | Effet des objets lumineux sur les arêtes : 'flat', 'gouraud' ou 'none' (par défaut). |
| **FaceAlpha** | Transparence de la face : scalaire dans [0, 1]. |
| **FaceColor** | Couleur de la face : triplet RGB. |
| **FaceLighting** | Effet des objets lumineux sur les faces : 'gouraud', 'none' ou 'flat' (par défaut). |
| **LineStyle** | Style de ligne : '--', ':', '-.', 'none' ou '-' (par défaut). |
| **LineWidth** | Épaisseur de ligne : valeur positive, 0.5 (par défaut). |
| **Marker** | Symbole du marqueur : 'o' (cercle), '+' (plus), '\*' (astérisque), '.' (point), 'x' (croix), '\_' (ligne horizontale), '|' (ligne verticale), 'square', 'diamond', '^' (triangle vers le haut), 'v' (triangle vers le bas), '' (triangle vers la droite), '' (triangle vers la gauche), 'pentagram', 'hexagram', 'none' (par défaut). |
| **MarkerEdgeColor** | Couleur du contour du marqueur : triplet RGB. |
| **MarkerFaceColor** | Couleur de remplissage du marqueur : triplet RGB. |
| **MarkerSize** | Taille du marqueur : valeur scalaire positive. |
| **MeshStyle** | Arêtes à afficher : 'row', 'column' ou 'both' (par défaut). |
| **Parent** | Parent : objet axes. |
| **SpecularColorReflectance** | Couleur des reflets spéculaires : scalaire dans [0, 1]. |
| **SpecularExponent** | Taille de la tache spéculaire : scalaire supérieur ou égal à 1. |
| **SpecularStrength** | Intensité du reflet spéculaire : scalaire dans [0, 1]. |
| **Tag** | Identifiant de l'objet : vecteur de caractères, chaîne ou '' (par défaut). |
| **Type** | Type d'objet graphique : 'surface'. |
| **UserData** | Données utilisateur : tableau ou [] (par défaut). |
| **VertexNormals** | Vecteurs normaux pour chaque sommet de la surface : tableau m-par-n-par-3 ou [] (par défaut). |
| **Visible** | État de visibilité : 'off' ou 'on' (par défaut). |
| **XData** | Données des coordonnées x : vecteur ou matrice. |
| **XDataMode** | Mode de sélection pour XData : 'manual' ou 'auto'. |
| **YData** | Données des coordonnées y : vecteur ou matrice. |
| **YDataMode** | Mode de sélection pour YData : 'manual' ou 'auto'. |
| **ZData** | Données des coordonnées z : vecteur ou matrice. |
| **CreateFcn** | Callback (fonction, chaîne ou cellule) appelée lors de la création de l'objet. Définir cette propriété sur un composant existant n'a aucun effet. |
| **DeleteFcn** | Callback (fonction, chaîne ou cellule) appelée lors de la suppression de l'objet. |
| **BeingDeleted** | Indique que l'objet est en cours de suppression. |

Certaines propriétés sont disponibles uniquement pour compatibilité et n'ont actuellement aucun effet sur la surface.

## 💡 Exemples

```matlab

f = figure();
[X, Y, Z] = peaks(35);
C(:, :, 1) = zeros(35);
C(:, :, 2) = ones(35) .* linspace(0.5, 0.6, 35);
C(:, :, 3) = ones(35) .* linspace(0, 1, 35);
S = surf(X, Y, Z, C)

```

<img src="surf_1.svg" align="middle"/>

```matlab

f = figure();
[X,Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R)./R;
h = surf(X, Y, Z);
axis square

```

<img src="surf_2.svg" align="middle"/>

## 🔗 Voir aussi

[view](../graphics/view.md), [surface](../graphics/surface.md), [meshgrid](../elementary_functions/meshgrid.md).

## 🕔 Historique

| Version | 📄 Description                       |
| ------- | ------------------------------------ |
| 1.0.0   | version initiale                     |
| 1.7.0   | CreateFcn, DeleteFcn callback added. |
| --      | BeingDeleted property added.         |

<!--
## 👤 Auteur

Allan CORNET
-->
