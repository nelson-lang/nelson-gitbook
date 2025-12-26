# imwrite

Écrit une image dans un fichier graphique.

## 📝 Syntaxe

- imwrite(A, filename)
- imwrite(A, map, filename)
- imwrite(..., fmt)
- imwrite(..., , propertyName, propertyValue)

## 📥 Argument d'entrée

- A - matrice : 3D pour image couleur, 2D pour image en niveaux de gris ou indexée.
- map - Colormap d'une image indexée : matrice m-by-3.
- fmt - Format du fichier de sortie : 'bmp', 'png', 'jpg', 'gif', ...
- filename - vecteur ligne de caractères ou chaîne scalaire : nom du fichier graphique.
- propertyName - chaîne scalaire ou vecteur ligne de caractères.
- propertyValue - une valeur.

## 📄 Description

<b>imwrite(A, filename)</b> écrit les données d'image <b>A</b> dans le fichier spécifié par <b>filename</b>.

Noms de propriétés :

<b>Quality</b> : qualité du fichier de sortie : scalaire dans [0, 100] (75 par défaut).

<b>Alpha</b> : matrice de valeurs dans [0, 1] : transparence par pixel.

<b>Comment</b> : vecteur de caractères, chaîne scalaire, cellule de vecteurs de caractères ou tableau de chaînes : commentaire ajouté à l'image.

<b>Author</b> : vecteur de caractères ou chaîne scalaire : information d'auteur.

Propriétés pour le format <b>gif</b> :

<b>WriteMode</b> :

<b>LoopCount</b> :

<b>DelayTime</b> :

## 💡 Exemples

```matlab
f = figure();
A = rand(69, 69);
A(:,:,2) = rand(69,69);
A(:,:,3) = rand(69,69);
imshow(A);
imwrite(A, [tempdir, '69x69-RGB.png']);
```

gif animation

```matlab
movie_directory = [modulepath('graphics'), '/examples/', 'movie/'];
sequences = {'dance', 8; 'leap', 9};
frameIdx = 0;
filename_gif = [tempdir, 'gif_animation.gif'];
for s = 1:size(sequences, 1)
    action = sequences{s, 1};
    nb_frames_action = sequences{s, 2};

    for i = 1:nb_frames_action
        % Construct the filename for the current frame
        filename = fullfile(movie_directory, sprintf('%s_%d.png', action, i));

        % Read the image and store it in the movie structure
        [image, map] = imread(filename);
        % Read the image
        [A, map] = imread(filename);
        if frameIdx == 1
            imwrite(A,map,filename_gif,"gif", 'LoopCount', Inf, 'DelayTime', 1);
        else
            imwrite(A,map,filename_gif,"gif", 'WriteMode', "append", 'DelayTime', 1)
        end
        frameIdx = frameIdx + 1;
    end
end
if ispc()
  unix(filename_gif);
else
  unix(['xdg-open ', filename_gif]);
end

```

<img src="imwrite_gif.gif" align="middle"/>

## 🔗 Voir aussi

[imread](../graphics_io/imread.md), [imshow](../graphics/imshow.md), [imformats](../graphics_io/imformats.md).

## 🕔 Historique

| Version | 📄 Description                  |
| ------- | ------------------------------- |
| 1.0.0   | version initiale                |
| 1.13.0  | gif animation, pcx format added |

<!--
## 👤 Auteur

Allan CORNET
-->
