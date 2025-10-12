# axes

Créer des axes cartésiens.

## Syntaxe

- ax = axes()
- ax = axes(parent)
- ax = axes(propertyName, propertyValue)
- ax = axes(parent, propertyName, propertyValue)
- axes(cax)

## Argument d'entrée

- parent - une valeur scalaire d'objet graphique : conteneur parent, spécifié comme une figure.
- cax - axes à rendre courant.
- propertyName - une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - une valeur.

## Argument de sortie

- ax - un objet graphique : type axes.

## Description

<p>axes crée des axes dans la figure courante et les définit comme axes courants.</p>

<p>axes(cax) rend les axes courants.</p>

<p>Un clic sur un axe le rend automatiquement courant.</p>

<p>Propriétés :</p>

| Propriété              | Description                                                                                                                                       |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| ALim                   | Limites alpha : vecteur à deux éléments de la forme [amin, amax].                                                                                 |
| ALimMode               | Mode de sélection pour ALim : 'manual' ou 'auto' (par défaut).                                                                                    |
| AmbientLightColor      | Couleur de la lumière d'arrière-plan : triplet RGB ou nom de couleur.                                                                             |
| Box                    | Boîte : 'on' ou 'off'.                                                                                                                            |
| CLim                   | Limites de couleur : vecteur à deux éléments [cmin, cmax] ou [0 1] (par défaut).                                                                  |
| CLimMode               | Mode de sélection pour CLim : 'manual' ou 'auto' (par défaut).                                                                                    |
| CameraPosition         | Position de la caméra : vecteur [x, y, z].                                                                                                        |
| CameraPositionMode     | Mode de sélection pour CameraPosition : 'manual' ou 'auto' (par défaut).                                                                          |
| CameraTarget           | Cible de la caméra : vecteur [x, y, z].                                                                                                           |
| CameraTargetMode       | Mode de sélection pour CameraTarget : 'manual' ou 'auto' (par défaut).                                                                            |
| CameraUpVector         | Vecteur définissant la direction vers le haut : [x, y, z].                                                                                        |
| CameraUpVectorMode     | Mode de sélection pour CameraUpVector : 'manual' ou 'auto' (par défaut).                                                                          |
| CameraViewAngle        | Champ de vision : 0 (par défaut)                                                                                                                  | angle scalaire dans [0,180] |
| CameraViewAngleMode    | Mode de sélection pour CameraViewAngle : 'manual' ou 'auto' (par défaut).                                                                         |
| Children               | Tableau d'objets graphiques : vecteur contenant les enfants de l'axe courant.                                                                     |
| Clipping               | Rognage des objets aux limites des axes : 'on' (par défaut) ou 'off'.                                                                             |
| Color                  | Couleur de fond des axes : triplet RGB, nom de couleur ou code hexadécimal.                                                                       |
| ColorOrder             | Ordre des couleurs : matrice à trois colonnes de triplets RGB.                                                                                    |
| ColorOrderIndex        | Indice d'ordre des couleurs : entier positif, spécifie la prochaine couleur utilisée.                                                             |
| DataAspectRatio        | Rapport d'aspect des données : vecteur [x, y, z].                                                                                                 |
| DataAspectRatioMode    | Mode du rapport d'aspect des données : 'manual' ou 'auto' (par défaut).                                                                           |
| FontAngle              | Inclinaison des caractères : 'italic' ou 'normal' (par défaut).                                                                                   |
| FontName               | Nom de la police                                                                                                                                  |
| FontSize               | Taille de la police : valeur numérique scalaire                                                                                                   |
| FontUnits              | Unités de taille de police : 'inches', 'centimeters', 'normalized', 'pixels' ou 'points' (par défaut).                                            |
| FontWeight             | Épaisseur des caractères : 'bold' ou 'normal' (par défaut).                                                                                       |
| GridAlpha              | Transparence des lignes de grille (0.15 (par défaut) ou valeur dans [0, 1]).                                                                      |
| GridColor              | Couleur des lignes de grille ([0.15, 0.15, 0.15] (par défaut) ou triplet RGB).                                                                    |
| GridLineStyle          | Style de ligne pour la grille : '--', ':', '-.', 'none' ou '-' (par défaut).                                                                      |
| HandleVisibility       | Visibilité du handle de l'objet : 'on' (par défaut) ou 'off'.                                                                                     |
| HitTest                | Réponse aux clics souris capturés : 'on' (par défaut) ou 'off'.                                                                                   |
| BeingDeleted           | Indique que l'objet est en cours de suppression.                                                                                                  |
| Interruptible          | Interruption de callback :                                                                                                                        |
| Layer                  | Placement des lignes de grille et des graduations : 'top' ou 'bottom' (par défaut).                                                               |
| LineStyleOrder         | Ordre des styles de ligne : vecteur de caractères, cellule de vecteurs de caractères, tableau de chaînes ou '-' ligne continue (par défaut).      |
| LineStyleOrderIndex    | Indice d'ordre des couleurs : entier positif, spécifie le prochain style de ligne utilisé.                                                        |
| LineWidth              | Largeur de ligne : valeur numérique positive.                                                                                                     |
| MinorGridLineStyle     | Style de ligne pour la grille mineure : '-', '--', '-.', 'none' ou ':' (par défaut).                                                              |
| NextPlot               | Propriétés à réinitialiser : 'add', 'replacechildren', 'replaceall' ou 'replace' (par défaut).                                                    |
| OuterPosition          | Taille et position, y compris labels et marges : vecteur à quatre éléments.                                                                       |
| Parent                 | Conteneur parent : objet figure graphique.                                                                                                        |
| PlotBoxAspectRatio     | Rapport d'aspect de chaque axe : vecteur [x, y, z].                                                                                               |
| PlotBoxAspectRatioMode | Mode de sélection pour PlotBoxAspectRatio : 'manual' ou 'auto' (par défaut).                                                                      |
| Position               | Taille et position, sans marges pour les labels : vecteur à quatre éléments                                                                       |
| PositionMode           | 'manual' ou 'auto' (par défaut).                                                                                                                  |
| Projection             | Type de projection sur l'écran 2D : 'perspective' ou 'orthographic' (par défaut).                                                                 |
| Selected               | État de sélection : 'on' ou 'off' (par défaut).                                                                                                   |
| SelectionHighlight     | Affichage des objets graphiques sélectionnés : 'on' (par défaut) ou 'off'.                                                                        |
| Tag                    | Identifiant de l'objet : vecteur de caractères, chaîne scalaire ou '' (par défaut).                                                               |
| TickDir                | Direction des graduations : 'out', 'both', 'none' ou 'in' (par défaut).                                                                           |
| TickDirMode            | Mode de sélection pour TickDir : 'manual' ou 'auto' (par défaut).                                                                                 |
| TickLength             | Longueur des graduations : vecteur à deux éléments.                                                                                               |
| TightInset             | Marges pour les labels de texte : vecteur à quatre éléments [gauche bas droite haut].                                                             |
| Title                  | Objet texte pour le titre : objet texte                                                                                                           |
| Type                   | Type d'objet graphique : 'axes'.                                                                                                                  |
| Units                  | Unités de position : 'inches', 'centimeters', 'points', 'pixels', 'characters' ou 'normalized' (par défaut).                                      |
| UserData               | Données utilisateur : tableau ou []                                                                                                               |
| View                   | Azimut et élévation de la vue (par défaut : [0 90])                                                                                               |
| Visible                | État de visibilité : 'on' (par défaut) ou 'off'.                                                                                                  |
| XAxisLocation          | Position de l'axe x : 'top', 'origin' ou 'bottom' (par défaut).                                                                                   |
| XColor                 | Couleur de l'axe, des graduations et des labels x : triplet RGB.                                                                                  |
| XDir                   | Direction de l'axe x : 'reverse' ou 'normal' (par défaut).                                                                                        |
| XGrid                  | Lignes de grille : 'on' ou 'off' (par défaut).                                                                                                    |
| XLabel                 | Objet texte pour le label de l'axe x : objet texte                                                                                                |
| XLim                   | Limites minimales et maximales de l'axe x : vecteur [min max].                                                                                    |
| XLimMode               | Mode de sélection des limites de l'axe x : 'manual' ou 'auto' (par défaut).                                                                       |
| XMinorGrid             | Lignes de grille mineure : 'on' ou 'off' (par défaut).                                                                                            |
| XScale                 | Échelle des valeurs sur l'axe x : 'log' ou 'linear' (par défaut).                                                                                 |
| XTick                  | Valeurs des graduations : vecteur de valeurs croissantes ou [] (par défaut).                                                                      |
| XTickLabel             | Labels des graduations : cellule de vecteurs de caractères ou '' (par défaut).                                                                    |
| XTickLabelMode         | Mode de sélection des labels : 'manual' ou 'auto' (par défaut).                                                                                   |
| XTickMode              | Mode de sélection des valeurs de graduation : 'manual' ou 'auto' (par défaut).                                                                    |
| YAxisLocation          | Position de l'axe y : 'top', 'origin' ou 'bottom' (par défaut).                                                                                   |
| YColor                 | Couleur de l'axe, des graduations et des labels y : triplet RGB.                                                                                  |
| YDir                   | Direction de l'axe y : 'reverse' ou 'normal' (par défaut).                                                                                        |
| YGrid                  | Lignes de grille : 'on' ou 'off' (par défaut).                                                                                                    |
| YLabel                 | Objet texte pour le label de l'axe y : objet texte                                                                                                |
| YLim                   | Limites minimales et maximales de l'axe y : vecteur [min max].                                                                                    |
| YLimMode               | Mode de sélection des limites de l'axe y : 'manual' ou 'auto' (par défaut).                                                                       |
| YMinorGrid             | Lignes de grille mineure : 'on' ou 'off' (par défaut).                                                                                            |
| YScale                 | Échelle des valeurs sur l'axe y : 'log' ou 'linear' (par défaut).                                                                                 |
| YTick                  | Valeurs des graduations : vecteur de valeurs croissantes ou [] (par défaut).                                                                      |
| YTickLabel             | Labels des graduations : cellule de vecteurs de caractères ou '' (par défaut).                                                                    |
| YTickLabelMode         | Mode de sélection des labels : 'manual' ou 'auto' (par défaut).                                                                                   |
| YTickMode              | Mode de sélection des valeurs de graduation : 'manual' ou 'auto' (par défaut).                                                                    |
| ZColor                 | Couleur de l'axe, des graduations et des labels z : triplet RGB.                                                                                  |
| ZDir                   | Direction de l'axe z : 'reverse' ou 'normal' (par défaut).                                                                                        |
| ZGrid                  | Lignes de grille : 'on' ou 'off' (par défaut).                                                                                                    |
| ZLabel                 | Objet texte pour le label de l'axe z : objet texte                                                                                                |
| ZLim                   | Limites minimales et maximales de l'axe z : vecteur [min max].                                                                                    |
| ZLimMode               | Mode de sélection des limites de l'axe z : 'manual' ou 'auto' (par défaut).                                                                       |
| ZMinorGrid             | Lignes de grille mineure : 'on' ou 'off' (par défaut).                                                                                            |
| ZScale                 | Échelle des valeurs sur l'axe z : 'log' ou 'linear' (par défaut).                                                                                 |
| ZTick                  | Valeurs des graduations : vecteur de valeurs croissantes ou [] (par défaut).                                                                      |
| ZTickLabel             | Labels des graduations : cellule de vecteurs de caractères ou '' (par défaut).                                                                    |
| ZTickLabelMode         | Mode de sélection des labels : 'manual' ou 'auto' (par défaut).                                                                                   |
| ZTickMode              | Mode de sélection des valeurs de graduation : 'manual' ou 'auto' (par défaut).                                                                    |
| CreateFcn              | Callback (fonction, chaîne ou cellule) appelée lors de la création de l'objet. Définir cette propriété sur un composant existant n'a aucun effet. |
| DeleteFcn              | Callback (fonction, chaîne ou cellule) appelée lors de la suppression de l'objet.                                                                 |

<p>Certaines propriétés sont disponibles uniquement pour compatibilité et n'ont actuellement aucun effet sur les axes.</p>

## Exemple

```matlab
f = figure();
ax1 = axes('Position', [0.1 0.1 0.7 0.7]);
ax2 = axes('Position', [0.65 0.65 0.28 0.28]);
x = linspace(0,10);
y1 = sin(x);
y2 = cos(x);
plot(ax1, x, y1);
plot(ax2, x, y2);
```

<img src="axes.svg" align="middle"/>

## Voir aussi

[gcf](../graphics/gcf.md), [close](../graphics/close.md).

## Historique

| Version | Description                                         |
| ------- | --------------------------------------------------- |
| 1.0.0   | version initiale                                    |
| 1.2.0   | Un clic sur un axe le rend automatiquement courant. |
| --      | Propriétés GridAlpha, GridColor pour Axes.          |
| 1.7.0   | Ajout des callbacks CreateFcn, DeleteFcn.           |
| --      | Ajout de la propriété BeingDeleted.                 |

## Auteur

Allan CORNET
