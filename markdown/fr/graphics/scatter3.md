# scatter3

Nuage de points 3D.

## Syntaxe

- scatter3(x, y, z)
- scatter3(x, y, z, sz)
- scatter3(x, y, z, sz, c)
- scatter3(..., 'filled')
- scatter3(..., marker)
- scatter3(ax, ...)
- scatter3(..., propertyName, propertyValue)
- s = scatter3(...)

## Argument d'entrée

- X - Coordonnées x : vecteur ou matrice.
- Y - Coordonnées y : vecteur ou matrice.
- Z - Coordonnées z : vecteur ou matrice.
- sz - Taille du marqueur : scalaire numérique, vecteur, [] (par défaut : 36)
- c - Couleur du marqueur : nom court de couleur, nom de couleur, triplet RGB ou vecteur d'indices de la carte de couleurs
- ax - Un objet graphique scalaire : conteneur parent, spécifié comme axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères. Voir l'aide de 'line' pour la liste des propriétés.
- propertyValue - Une valeur.

## Argument de sortie

- s - Un objet graphique : type scatter ou tableau de scatter.

## Description

<p>
                        scatter3(x, y, z) génère un nuage de points en plaçant des marqueurs circulaires
                        aux coordonnées définies par les vecteurs x, y et z.</p>

<p>Si vous souhaitez afficher un seul ensemble de données, assurez-vous que x, y
                        et z sont des vecteurs de même longueur.</p>

<p>Pour visualiser plusieurs ensembles de données sur un même axe, vous pouvez utiliser
                        une matrice pour x, y ou z, en gardant les autres comme vecteurs.</p>

<p>Cela vous permet de superposer ou de comparer plusieurs ensembles de données dans le même graphique.</p>

<p></p>

<p>Propriétés de Scatter :</p>

| Propriété       | Description                                                                                                                                                                                                                                                                                             |
| --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| AlphaData       | Transparence de la face du marqueur, 1 (par défaut) ou tableau de même taille que XData                                                                                                                                                                                                                 |
| BeingDeleted    | Indique que l'objet est en cours de suppression.                                                                                                                                                                                                                                                        |
| BusyAction      | File d'attente des callbacks, 'queue' (par défaut) ou 'cancel'. Cette propriété détermine comment Nelson gère l'exécution des callbacks interrompus.                                                                                                                                                    |
| CData           | Couleurs des marqueurs : [] (par défaut), triplet RGB, matrice de triplets RGB ou vecteur. Couleur du marqueur à utiliser pour chaque série de données : 'k'/'black' (Noir), 'y'/'yellow' (Jaune), 'm'/'magenta' (Magenta), 'c'/'cyan' (Cyan), 'r'/'red' (Rouge), 'b'/'blue' (Bleu), 'g'/'green' (Vert) |
| CDataMode       | Mode de sélection pour CData : 'manual', 'auto' (par défaut).                                                                                                                                                                                                                                           |
| Children        | Enfants.                                                                                                                                                                                                                                                                                                |
| CreateFcn       | Fonction de création du composant.                                                                                                                                                                                                                                                                      |
| DeleteFcn       | Fonction de suppression du composant.                                                                                                                                                                                                                                                                   |
| DisplayName     | Étiquette de légende : vecteur de caractères ou chaîne, '' (par défaut).                                                                                                                                                                                                                                |
| Interruptible   | Interruption des callbacks 'on' (par défaut).                                                                                                                                                                                                                                                           |
| LineWidth       | Épaisseur de ligne : valeur scalaire positive.                                                                                                                                                                                                                                                          |
| Marker          | Symbole du marqueur : 'o' (Cercle), 'x' (Croix), '+' (Plus), '\*' (Astérisque), '.' (Point), 's' (Carré), 'd' (Losange), 'v' (Triangle vers le bas), '^' (Triangle vers le haut), '>' (Triangle vers la droite), '<' (Triangle vers la gauche)                                                          |
| MarkerEdgeColor | Couleur du contour du marqueur : triplet RGB.                                                                                                                                                                                                                                                           |
| MarkerEdgeAlpha | Transparence du contour du marqueur : scalaire dans [0,1], 'flat' ou 1 (par défaut). Pour attribuer des valeurs de transparence distinctes aux contours de chaque point, définissez la propriété AlphaData comme un vecteur de la même taille que XData et la propriété MarkerEdgeAlpha à 'flat'.       |
| MarkerFaceColor | Couleur de remplissage du marqueur : triplet RGB.                                                                                                                                                                                                                                                       |
| MarkerFaceAlpha | Transparence du remplissage du marqueur : scalaire dans [0,1], 'flat' ou 1 (par défaut). Pour attribuer des valeurs de transparence distinctes aux faces de chaque point, définissez la propriété AlphaData comme un vecteur de la même taille que XData et la propriété MarkerFaceAlpha à 'flat'.      |
| Parent          | Conteneur parent : objet graphique Figure.                                                                                                                                                                                                                                                              |
| SizeData        | Tailles des marqueurs : [] (par défaut), scalaire ou vecteur.                                                                                                                                                                                                                                           |
| Tag             | Identifiant de l'objet : vecteur de caractères, chaîne ou '' (par défaut).                                                                                                                                                                                                                              |
| Type            | Type d'objet graphique 'scatter'.                                                                                                                                                                                                                                                                       |
| UserData        | Données utilisateur : tableau ou []                                                                                                                                                                                                                                                                     |
| Visible         | État de visibilité : 'on' (par défaut) ou 'off'.                                                                                                                                                                                                                                                        |
| XData           | Valeurs x : vecteur ou matrice ou [] (par défaut).                                                                                                                                                                                                                                                      |
| YData           | Valeurs y : vecteur ou matrice ou [] (par défaut).                                                                                                                                                                                                                                                      |
| ZData           | Valeurs z : vecteur ou matrice ou [] (par défaut).                                                                                                                                                                                                                                                      |
| XDataMode       | Mode de sélection pour XData : 'manual' ou 'auto'.                                                                                                                                                                                                                                                      |

## Exemple

```matlab
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
```

<img src="scatter3_1.svg" align="middle"/>

## Voir aussi

[scatter](../graphics/scatter.md), [plot](../graphics/plot.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.14.0  | version initiale |

## Auteur

Allan CORNET
