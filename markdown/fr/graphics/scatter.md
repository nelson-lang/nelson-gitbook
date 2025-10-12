# scatter

Nuage de points.

## Syntaxe

- scatter(x, y)
- scatter(x, y, sz)
- scatter(x, y, sz, c)
- scatter(..., 'filled')
- scatter(..., marker)
- scatter(ax, ...)
- scatter(..., propertyName, propertyValue)
- s = scatter(...)

## Argument d'entrée

- X - Coordonnées x : vecteur ou matrice.
- Y - Coordonnées y : vecteur ou matrice.
- sz - Taille du marqueur : scalaire numérique, vecteur, [] (par défaut : 36)
- c - Couleur du marqueur : nom court de couleur, nom de couleur, triplet RGB ou vecteur d'indices de la carte de couleurs
- ax - Un objet graphique scalaire : conteneur parent, spécifié comme axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères. Voir l'aide de 'line' pour la liste des propriétés.
- propertyValue - Une valeur.

## Argument de sortie

- s - Un objet graphique : type scatter ou tableau de scatter.

## Description

<p>
                        scatter(x, y) génère un nuage de points en plaçant des marqueurs circulaires aux
                        coordonnées définies par les vecteurs x et y.</p>

<p>Si vous souhaitez afficher un seul ensemble de données, assurez-vous que x et y
                        sont des vecteurs de même longueur.</p>

<p>Pour visualiser plusieurs ensembles de données sur un même axe, vous pouvez utiliser
                        une matrice pour x ou y, en gardant l'autre comme vecteur.</p>

<p>Cela vous permet de superposer ou de comparer plusieurs ensembles de données dans le même graphique.</p>

<p></p>

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

## Exemples

```matlab

f = figure();
theta = linspace(0,1,600);
x = exp(theta).*sin(110*theta);
y = exp(theta).*cos(110*theta);
s = scatter(x,y ,'filled');
```

<img src="scatter_1.svg" align="middle"/>

```matlab

f = figure();
x = linspace(0,3*pi,255);
y = cos(x) + rand(1,255);
sz = 1:255;
c = 1:length(x);
scatter(x, y, sz, c, 'd', 'filled')

```

<img src="scatter_2.svg" align="middle"/>

```matlab

f = figure();
x = linspace(0, 3*pi, 255);
y = cos(x) + rand(1, 255);
c = linspace(1,10,length(x));
scatter(x, y, [], c, 'filled')

```

<img src="scatter_3.svg" align="middle"/>

```matlab

f = figure();
theta = linspace(0,2*pi,244);
x = sin(theta) + 0.75*rand(1,244);
y = cos(theta) + 0.75*rand(1,244);
sz = 45;
scatter(x,y,sz,'MarkerEdgeColor',[0 .6 .5], 'MarkerFaceColor',[0 .6 .7],  'LineWidth',3.5)

```

<img src="scatter_4.svg" align="middle"/>

```matlab

f = figure(),
x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
% Top plot
ax1 = subplot(2,1, 1);
scatter(ax1,x,y)
% Bottom plot
ax2 = subplot(2,1, 2);
scatter(ax2,x,y,'filled','d')

```

<img src="scatter_5.svg" align="middle"/>

```matlab

f = figure();
x = rand(500,5);
y = randn(500,5) + (5:5:25);
s = scatter(x,y, 'filled');

```

<img src="scatter_6.svg" align="middle"/>

```matlab

f = figure();
% Create figure
hold on;
% Settings
nPoints = 10; % Number of points per marker type
markers = {'o', '+', '*', 's', 'd', '^', 'v', '>', '<', 'p', 'h'};
sizesMin = 20; % Minimum size
sizesMax = 100; % Maximum size
% X positions
x = linspace(1, 10, nPoints);
% Fixed color
fixedColor = [0 0 0]; % black
% Plot each marker type
for m = 1:numel(markers)
    y = m * ones(size(x)); % Constant Y for each marker type
    sizes = linspace(sizesMin, sizesMax, nPoints); % Increasing sizes
    % Scatter points
    scatter(x, y, sizes, ...
        'Marker', markers{m}, ...
        'MarkerEdgeColor', fixedColor, ...
        'MarkerFaceColor', 'none', ...
        'LineWidth', 1.5);
end
title('Scatter Only - One Line per Marker Type with Increasing Size');
xlabel('X Axis');
ylabel('Marker Type Line');
ylim([0 numel(markers)+1]);
hold off;

```

<img src="scatter_7.svg" align="middle"/>

## Voir aussi

[line](../graphics/line.md), [plot](../graphics/plot.md), [scatter3](../graphics/scatter3.md).

## Historique

| Version | Description                                   |
| ------- | --------------------------------------------- |
| 1.0.0   | version initiale                              |
| 1.12.0  | color name and short color name managed.      |
| 1.14.0  | Scatter is a graphics object with Properties. |

## Auteur

Allan CORNET
