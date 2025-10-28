# imagesc

Affiche une image à partir d'un tableau avec des couleurs mises à l'échelle.

## 📝 Syntaxe

- imagesc()
- imagesc(C)
- image(X, Y, C)
- imagesc('CData', C)
- imagesc('XData', X, 'YData', Y,'CData', C)
- imagesc(..., propertyName, propertyValue)
- imagesc(parent, ...)
- go = imagesc(...)

## 📥 Argument d'entrée

- X - Coordonnées x : vecteur ou matrice.
- Y - Coordonnées y : vecteur ou matrice.
- C - Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
- parent - Un objet graphique scalaire : conteneur parent, spécifié comme un axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Une valeur.

## 📤 Argument de sortie

- go - Un objet graphique : type image.

## 📄 Description

<b>imagesc</b> affiche les données C sous forme d'image. Cette image est colorée à l'aide de la palette de couleurs de la figure courante.

Propriétés :
| Propriété | Description |
| --- | --- |
| **AlphaData** | Données de transparence : scalaire, tableau de même taille que CData, ou 1 (par défaut). |
| **AlphaDataMapping** | Méthode de mappage des données alpha. |
| **CData** | Données de couleur de l'image : vecteur ou matrice, tableau 3D de triplets RGB. |
| **CDataMapping** | Méthode de mappage des couleurs : 'direct' ou 'scaled' (par défaut). |
| **Children** | []. |
| **Parent** | Parent : objet axes. |
| **Tag** | Identifiant de l'objet : chaîne scalaire, vecteur de caractères, '' (par défaut). |
| **Type** | Type d'objet graphique : 'surface'. |
| **UserData** | Données utilisateur : tableau ou [] (par défaut). |
| **Visible** | État de visibilité : 'off' ou 'on' (par défaut). |
| **XData** | Placement sur l'axe x : vecteur à deux éléments, scalaire, [1 size(CData, 1)] (par défaut). |
| **YData** | Placement sur l'axe y : vecteur à deux éléments, scalaire, [1 size(CData, 2)] (par défaut). |
| **CreateFcn** | Callback (fonction, chaîne ou cellule) appelée lors de la création de l'objet. Définir cette propriété sur un composant existant n'a aucun effet. |
| **DeleteFcn** | Callback (fonction, chaîne ou cellule) appelée lors de la suppression de l'objet. |
| **BeingDeleted** | Indique que l'objet est en cours de suppression. |

## 💡 Exemples

```matlab
f1 = figure();
C = [0 2 4 6; 8 10 12 14; 16 18 20 22];
imagesc(C)
```

<img src="imagesc_1.png" align="middle"/>

```matlab
f2 = figure();
C = [0 2 4 6; 8 10 12 14; 16 18 20 22];
imagesc(C)
colormap(gray)
```

<img src="imagesc_2.png" align="middle"/>

## 🔗 Voir aussi

[image](../graphics/image.md), [colormap](../graphics/colormap.md).

## 🕔 Historique

| Version | 📄 Description                            |
| ------- | ----------------------------------------- |
| 1.0.0   | version initiale                          |
| 1.7.0   | Ajout des callbacks CreateFcn, DeleteFcn. |
| --      | Ajout de la propriété BeingDeleted.       |

## 👤 Auteur

Allan CORNET
