# text

crée des descriptions textuelles pour les points de données.

## Syntaxe

- text(x, y, txt)
- text(x, y, z, txt)
- text(... , propertyName, propertyValue)
- text(ax, ...)
- go = text(...)

## Argument d'entrée

- x - coordonnées x : vecteur ou matrice.
- y - coordonnées y : vecteur ou matrice.
- z - coordonnées z : vecteur ou matrice.
- parent - une valeur d'objet graphique scalaire : conteneur parent, spécifié comme axes.
- text - Texte à afficher : vecteur de caractères, scalaire de chaîne, tableau de chaînes ou tableau de cellules.
- propertyName - une chaîne scalaire ou un vecteur de caractères ligne.
- propertyValue - une valeur.

## Argument de sortie

- go - un objet graphique : type texte.

## Description

<p>
            text crée du texte.</p>

| Propriété           | Description                                                                                                                                                  |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| BackgroundColor     | Couleur de fond de la boîte de texte : triplet RGB.                                                                                                          |
| Children            | Enfants : [].                                                                                                                                                |
| Color               | Couleur du texte : triplet RGB, [0 0 0] (par défaut) ou code couleur hexadécimal.                                                                            |
| EdgeColor           | Couleur du contour de la boîte : triplet RGB.                                                                                                                |
| Extent              | Taille et position du rectangle qui entoure le texte : vecteur à quatre éléments.                                                                            |
| FontAngle           | Inclinaison des caractères : 'italic' ou 'normal' (par défaut).                                                                                              |
| FontName            | Nom de la police :                                                                                                                                           |
| FontSize            | Taille de la police : valeur scalaire supérieure à zéro.                                                                                                     |
| FontUnits           | Unités de taille de police : 'inches', 'centimeters', 'normalized', 'pixels' ou 'points' (par défaut).                                                       |
| FontWeight          | Épaisseur des caractères : 'bold' ou 'normal' (par défaut).                                                                                                  |
| HorizontalAlignment | Alignement horizontal du texte par rapport au point de position : 'center', 'right', 'left' (par défaut).                                                    |
| Interpreter         | Interpréteur 'tex' (par défaut) ou 'none'.                                                                                                                   |
| LineStyle           | Style de ligne du contour de la boîte : 'none', '--', ':', '-.' ou '-' (par défaut).                                                                         |
| LineWidth           | Largeur du contour de la boîte : valeur numérique scalaire.                                                                                                  |
| Margin              | Espace autour du texte dans la boîte de texte : valeur numérique scalaire.                                                                                   |
| Parent              | Parent : objet axes.                                                                                                                                         |
| Position            | Position du texte : vecteur à deux éléments de forme [x y] ou vecteur à trois éléments de forme [x y z].                                                     |
| Rotation            | Orientation du texte : valeur scalaire en degrés.                                                                                                            |
| String              | Texte à afficher : vecteur de caractères, tableau de cellules de vecteurs de caractères, tableau de chaînes, valeur numérique ou '' (par défaut).            |
| Tag                 | Identifiant d'objet : vecteur de caractères, scalaire de chaîne ou '' (par défaut).                                                                          |
| Type                | Type d'objet graphique : 'text'.                                                                                                                             |
| Units               | Unités de position et d'étendue : 'normalized', 'inches', 'centimeters', 'characters', 'points', 'pixels' ou 'data' (par défaut).                            |
| UserData            | Données utilisateur : tableau ou [] (par défaut).                                                                                                            |
| VerticalAlignment   | Alignement vertical du texte par rapport au point de position.                                                                                               |
| Visible             | État de visibilité : 'off' ou 'on' (par défaut).                                                                                                             |
| CreateFcn           | Callback (poignée de fonction, chaîne ou cellule) appelée lors de la création de l'objet. Définir cette propriété sur un composant existant n'a aucun effet. |
| DeleteFcn           | Callback (poignée de fonction, chaîne ou cellule) appelée lors de la suppression de l'objet.                                                                 |
| BeingDeleted        | Drapeau indiquant que l'objet est en cours de suppression.                                                                                                   |

<p>Certaines propriétés sont disponibles uniquement pour la compatibilité et n'ont actuellement aucun effet sur le texte.</p>

<p>listes des caractères spéciaux pris en charge par l'interpréteur 'tex' :</p>

<p>Exposant : ^{ }   'texte^{exposant}'</p>

<p>Indice : _{ }   'texte_{indice}'</p>

<p></p>

| Séquence de caractères | Symbole |
| ---------------------- | ------- |

|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|

## Exemples

```matlab
f = figure(1)
t = text(0.5, 0.5, 'text here');
s = t.FontSize;
t.FontSize = 12;
t.Color = 'red';

```

<img src="text_1.svg" align="middle"/>

```matlab
figure();
ha = {'left', 'center', 'right'};
va = {'bottom', 'middle', 'top'};
color = {'red', 'green', 'blue'};
x = [0.25 0.5 0.75];
y = x;
for t = 0:45:359;
  for nh = 1:numel (ha)
    for nv = 1:numel (va)
      text (x(nh), y(nv), 'Nelson', ...
      'Rotation', t, ...
      'HorizontalAlignment', ha{nh}, ...
      'VerticalAlignment', va{nv}, ...
      'Color', color{nv});
    end
  end
end
axis([0 1 0 1]);
title (_('Text alignment and rotation (0:45:360 degrees)'));
xlabel(_('Horizontal alignment'));
ylabel (_('Vertical alignment'));
```

<img src="text_2.svg" align="middle"/>

```matlab
figure();
h1 = text(0.5, 0.5, 'Nelson \copyright')
h1.String
% Nelson est entièrement unicode, donc
h2 = text(0.5, 0.3, 'OU Nelson ©')
h2.String
```

## Voir aussi

[titre](../graphics/title.md).

## Historique

| Version | Description                             |
| ------- | --------------------------------------- |
| 1.0.0   | version initiale                        |
| 1.7.0   | Callbacks CreateFcn, DeleteFcn ajoutés. |
| --      | Propriété BeingDeleted ajoutée.         |

## Auteur

Allan CORNET
