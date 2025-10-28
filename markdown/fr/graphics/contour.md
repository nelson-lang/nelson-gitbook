# contour

Tracé de contours d'une matrice

## 📝 Syntaxe

- contour(Z)
- contour(X, Y, Z)
- contour(..., levels)
- contour(..., LineSpec)
- contour(ax, ...)
- M = contour(...)
- [M, h] = contour(...)

## 📥 Argument d'entrée

- X - Coordonnées x : vecteur ou matrice.
- Y - Coordonnées y : vecteur ou matrice.
- Z - Coordonnées z : vecteur ou matrice.
- levels - Niveaux de contours : scalaire ou vecteur.
- LineSpec - Style et couleur de ligne
- ax - Un objet graphique scalaire : conteneur parent, spécifié comme axes.

## 📤 Argument de sortie

- M - Matrice de contours.
- h - Un objet graphique : type contour.

## 📄 Description

<b>contour(Z)</b> génère un tracé de contours représentant les isolignes de la matrice Z. Chaque isoligne correspond à une valeur de hauteur spécifique sur le plan x-y.

Nelson sélectionne automatiquement les lignes de contour à afficher en fonction des valeurs de Z. Les indices de colonnes et de lignes de Z servent respectivement de coordonnées x et y dans le plan.

<b>contour(X, Y, Z)</b> permet à l'utilisateur de spécifier les coordonnées x et y correspondant aux valeurs de la matrice Z. Cela permet un contrôle plus précis du positionnement du tracé de contours sur le plan x-y.

Les matrices X et Y fournissent les coordonnées, tandis que Z contient les valeurs de hauteur pour générer le tracé de contours.

Paires Nom-Valeur de propriétés :
| Propriété | Description |
| --- | --- |
| **LevelList** | Les niveaux de contours, spécifiés comme un vecteur de valeurs z, déterminent les hauteurs auxquelles les lignes de contour sont tracées. Par défaut, si non fournis, la fonction contour sélectionne automatiquement ces valeurs pour couvrir l'ensemble des valeurs présentes dans la propriété ZData, assurant une couverture complète de la plage de données. Par défaut : matrice vide. |
| **LevelListMode** | Mode de sélection pour LevelList : 'manual' ou 'auto' (par défaut). |
| **LevelStep** | Espacement entre les lignes de contour : valeur numérique scalaire ou 0 (par défaut). |
| **LevelStepMode** | Mode de sélection pour LevelStep : 'manual' ou 'auto' (par défaut). |
| **EdgeColor** | Couleur des lignes de contour : couleur rgb ou 'flat' (par défaut). |
| **EdgeAlpha** | Transparence des lignes de contour : scalaire dans [0, 1] ou 1 (par défaut). |
| **LineStyle** | Style de ligne : '--', ':', '-.' ou '-' (par défaut). |
| **LineWidth** | Épaisseur de ligne : valeur positive ou 0.5 (par défaut). |
| **ContourMatrix** | Matrice de contours. |
| **XData** | Valeurs x : vecteur ou matrice ou [] (par défaut). |
| **YData** | Valeurs y : vecteur ou matrice ou [] (par défaut). |
| **ZData** | Valeurs z : vecteur ou matrice ou [] (par défaut). |
| **XDataMode** | Mode de sélection pour XData : 'manual' ou 'auto' (par défaut). |
| **YDataMode** | Mode de sélection pour YData : 'manual' ou 'auto' (par défaut). |
| **DisplayName** | Étiquette de légende : vecteur de caractères, chaîne ou '' (par défaut). |
| **Visible** | État de visibilité : valeur logique on/off, 'on' (par défaut). |
| **Parent** | Parent : objet Axes ou Group. |
| **Children** | Enfants. |
| **HandleVisibility** | Visibilité du handle : 'on', 'off'. |
| **Type** | Type d'objet graphique : 'contour'. |
| **Tag** | Identifiant de l'objet : vecteur de caractères, chaîne ou '' (par défaut). |
| **UserData** | Données utilisateur : tableau ou [] (par défaut). |
| **CreateFcn** | Callback (fonction, chaîne ou cellule) appelée lors de la création de l'objet. Définir cette propriété sur un composant existant n'a aucun effet. |
| **DeleteFcn** | Callback (fonction, chaîne ou cellule) appelée lors de la suppression de l'objet. |
| **BeingDeleted** | Indique que l'objet est en cours de suppression. |

## 💡 Exemples

```matlab
f = figure();
    subplot(2, 3, 1)
    x = linspace(-2 * pi, 2 * pi);
    y = linspace(0, 4 * pi);
    [X, Y] = meshgrid(x, y);
    Z = sin(X) + cos(Y);
    contour(X, Y, Z);

    subplot(2, 3, 2)
    [X, Y, Z] = peaks;
    contour(X, Y, Z, 20)

    subplot(2, 3, 3)
    [X, Y, Z] = peaks;
    v = [1,1];
    contour(X, Y, Z, v)

    subplot(2, 3, 4)
    [X, Y, Z] = peaks;
    contour(X, Y, Z, '-.')

    subplot(2, 3, 5)
    Z = peaks;
    [M, c] = contour(Z);
    c.LineWidth = 3;

    subplot(2, 3, 6)
    [theta, r] = meshgrid (linspace (0,2*pi,64), linspace (0,1,64));
    [X, Y] = pol2cart (theta, r);
    Z = sin (2*theta) .* (1-r);
    contour (X, Y, abs (Z), 10);

```

<img src="contour_1.svg" align="middle"/>

```matlab

    rng('default');
    f = figure();
    N = 50;
    contour(1:N, 1:N, rand(N), 5)

```

<img src="contour_2.svg" align="middle"/>

```matlab

    f = figure();
    Z = peaks;
    Z(:,26) = NaN;
    contour(Z)

```

<img src="contour_nan.png" align="middle"/>

## 🔗 Voir aussi

[contour3](../graphics/contour3.md), [surf](../graphics/surf.md), [mesh](../graphics/mesh.md).

## 🕔 Historique

| Version | 📄 Description                       |
| ------- | ------------------------------------ |
| 1.3.0   | version initiale                     |
| 1.7.0   | CreateFcn, DeleteFcn callback added. |
| --      | BeingDeleted property added.         |

## 👤 Auteur

Allan CORNET
