# imrotate

Fait pivoter une image d'un angle spécifié

## 📝 Syntaxe

- J = imrotate(I, angle)
- J = imrotate(I, angle, method)
- J = imrotate(I, angle, method, bbox)

## 📥 Argument d'entrée

- I - Image d'entrée : image 2D en niveaux de gris ou image 3D RGB de classe uint8, uint16, int16, single ou double
- angle - Angle de rotation en degrés (scalaire). Les valeurs positives tournent dans le sens anti-horaire, les valeurs négatives dans le sens horaire
- method - Méthode d'interpolation (optionnelle, par défaut : 'bilinear') : - 'nearest' : interpolation au plus proche voisin - 'bilinear' : interpolation bilinéaire (par défaut) - 'bicubic' : interpolation bicubique
- bbox - Option de boîte englobante (optionnelle, par défaut : 'loose') : - 'loose' : dimensionne la sortie pour contenir l'image tournée en entier - 'crop' : recadre la sortie à la même taille que l'image d'entrée

## 📤 Argument de sortie

- J - Rotated image, same class as input image I

## 📄 Description

La fonction<b>imrotate</b> fait pivoter une image de l'angle spécifié autour de son centre. La rotation utilise la méthode d'interpolation spécifiée.

La fonction prend en charge divers formats d'images, y compris niveaux de gris et RGB. L'image de sortie conserve le même type de données que l'image d'entrée.

Pour les angles multiples de 90°, la rotation est effectuée exactement sans interpolation afin de préserver la qualité. Pour les autres angles, l'interpolation est utilisée pour estimer les valeurs de pixels aux coordonnées non entières.

L'option de boîte englobante contrôle la taille de l'image de sortie :

- <b>'loose'</b> : l'image de sortie est dimensionnée pour contenir l'image tournée en entier. Cela peut donner une image plus grande que l'entrée.
- <b>'crop'</b> : l'image de sortie est recadrée à la même taille que l'image d'entrée. Des parties de l'image tournée peuvent être coupées.

Les pixels de fond (zones non couvertes par l'image tournée) sont remplis de zéros.

Note:

<b>Note de performance :</b> pour des rotations exactes de 90° (0°, 90°, 180°, 270°), la fonction utilise des algorithmes optimisés qui préservent les valeurs exactes des pixels sans interpolation.

<b>Utilisation mémoire :</b> en utilisant 'loose' avec de grands angles de rotation, l'image de sortie peut être significativement plus grande que l'entrée. Envisagez 'crop' pour les applications avec contrainte mémoire.

<b>Conservation du type de données :</b> l'image de sortie conserve le même type de données que l'entrée. Pour les entrées en virgule flottante, les valeurs de pixels peuvent dépasser la plage habituelle [0,1] après interpolation.

<b>Convention d'angle :</b> les angles positifs tournent dans le sens anti-horaire, conformément à la convention mathématique standard. Cela peut être l'inverse de certaines applications de traitement d'images qui utilisent la rotation positive dans le sens horaire.

Limitations:

L'image d'entrée doit être 2D (niveaux de gris) ou 3D (RGB). Les autres espaces colorimétriques ne sont pas directement supportés.

La rotation est toujours effectuée autour du centre de l'image. Les rotations hors-centre requièrent un prétraitement supplémentaire.

Pour des angles très grands (>360°), considérez l'utilisation de l'arithmétique modulo pour normaliser l'angle et améliorer les performances.

L'interpolation bicubique peut produire des artefacts de dépassement près des contours nets de l'image.

## 💡 Exemples

Interactive rotation visualization (Part 1)

```matlab
% Create a test image with clear directional features
I = zeros(100, 100, 'uint8');

% Add arrow-like pattern to show rotation clearly
I(40:60, 20:80) = 128;  % Horizontal bar
I(45:55, 15:85) = 255;  % Arrow shaft
I(50, 85:95) = 255;     % Arrow tip
I(45:49, 80:84) = 255;  % Upper arrow head
I(51:55, 80:84) = 255;  % Lower arrow head

% Show original
figure('Name', 'Rotation Progression', 'Position', [0 0 1024 768]);
subplot(2, 4, 1);
imagesc(I);
colormap(gray);
axis equal; axis tight;
title('Original (0°)');

% Show rotation progression
angles = [15, 30, 45, 60, 90, 120, 180];

for i = 1:length(angles)
    J = imrotate(I, angles(i), 'bilinear');

    subplot(2, 4, i + 1);
    imagesc(J);
    colormap(gray);
    axis equal; axis tight;
    title(sprintf('%d°', angles(i)));

    % Print rotation statistics
    fprintf('Angle %3d°: size %dx%d, non-zero pixels: %d\n', ...
            angles(i), size(J, 1), size(J, 2), sum(J(:) > 0));
end

```

<img src="imrotate_1.svg" align="middle"/>
Interactive rotation visualization (Part 2)

```matlab
% Create a test image with clear directional features
I = zeros(100, 100, 'uint8');

% Add arrow-like pattern to show rotation clearly
I(40:60, 20:80) = 128;  % Horizontal bar
I(45:55, 15:85) = 255;  % Arrow shaft
I(50, 85:95) = 255;     % Arrow tip
I(45:49, 80:84) = 255;  % Upper arrow head
I(51:55, 80:84) = 255;  % Lower arrow head

% Demonstrate interpolation effects with zoomed view
figure('Name', 'Interpolation Methods Comparison','Position', [0 0 1024 768]);
I_small = I(40:70, 40:70);  % Crop a section for detailed view

methods = {'nearest', 'bilinear', 'bicubic'};
for i = 1:length(methods)
    J = imrotate(I_small, 30, methods{i});

    subplot(1, 3, i);
    imagesc(J);
    colormap(gray);
    axis equal; axis tight;
    title(sprintf('%s interpolation', methods{i}));
end

```

<img src="imrotate_2.svg" align="middle"/>

## 🔗 Voir aussi

[imresize](../image_processing/imresize.md), [imshow](../image_processing/imshow.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.14.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
