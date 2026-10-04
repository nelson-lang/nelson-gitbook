# imwrite

Écrit une image dans un fichier graphique.

## 📝 Syntaxe

- imwrite(A, filename)
- imwrite(A, map, filename)
- imwrite(..., fmt)
- imwrite(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- A - matrice : 3D pour image couleur, 2D pour image en niveaux de gris ou indexée.
- map - Colormap d'une image indexée : matrice m-by-3.
- fmt - Format du fichier de sortie : 'bmp', 'png', 'jpg', 'gif', ...
- filename - vecteur ligne de caractères ou chaîne scalaire : nom du fichier graphique.
- propertyName - chaîne scalaire ou vecteur ligne de caractères.
- propertyValue - une valeur.

## 📄 Description

<b>imwrite(A, filename)</b> écrit les données d'image <b>A</b> dans le fichier spécifié par <b>filename</b>.

Les formats inscriptibles sont PNG, JPEG/JFIF, GIF, WebP, TIFF, BMP/DIB, TGA, PBM, PGM, PPM/PNM et PCX. Le format vient de <b>fmt</b> ou de l'extension du nom de fichier.

<b>A</b> peut être logical, single, double, uint8 ou uint16. Un tableau bidimensionnel est en niveaux de gris, sauf si une palette K-par-3 dans [0, 1] est fournie ; une image en couleurs directes est M-par-N-par-3. La matrice alpha doit être exactement M-par-N. Les données flottantes et logiques sont normalisées sur 8 bits ; les données uint8 sont utilisées directement. Une image reste indexée lorsque chaque entrée de palette possède un alpha cohérent. Une entrée uint16 n'est acceptée que pour les images en niveaux de gris PNG, TIFF et PGM. Les autres formats signalent une erreur explicite.

Le fichier n'est remplacé atomiquement qu'après un encodage réussi ; une erreur ne laisse donc pas de destination partiellement écrite.

Noms de propriétés :

<b>Quality</b> : qualité JPEG ou WebP dans [0, 100] (75 par défaut).

<b>Alpha</b> : matrice M-par-N par pixel ; les flottants utilisent [0, 1], uint8 utilise [0, 255].

<b>Comment</b> : texte enregistré lorsque le codec sélectionné prend cette métadonnée en charge.

<b>Author</b> : auteur enregistré lorsque le codec sélectionné prend cette métadonnée en charge.

PNG, JPEG et TIFF enregistrent <b>Comment</b> et <b>Author</b> ; GIF enregistre <b>Comment</b>. Les autres codecs ignorent ces propriétés sans faire échouer l'écriture.

Propriétés pour le format <b>gif</b> :

<b>WriteMode</b> : <b>overwrite</b> (par défaut) ou <b>append</b>.

<b>LoopCount</b> : nombre de répétitions ; <b>Inf</b> répète indéfiniment.

<b>DelayTime</b> : délai d'une image en secondes, dans [0, 655].

## 💡 Exemples

```matlab
f = figure();
A = rand(69, 69);
A(:,:,2) = rand(69,69);
A(:,:,3) = rand(69,69);
imshow(A);
imwrite(A, [tempdir, '69x69-RGB.png']);
close(f);
```

WebP avec alpha et PNG 16 bits.

```matlab
rgb = rand(16, 16, 3);
alpha = rand(16, 16);
gray16 = uint16(reshape(0:255, 16, 16) * 257);
imwrite(rgb, [tempdir, 'image.webp'], 'Quality', 90, 'Alpha', alpha);
imwrite(gray16, [tempdir, 'image16.png']);
```

Animation GIF avec toutes les options d'animation.

```matlab
firstFrame = uint8(zeros(32, 32, 3));
firstFrame(:, :, 1) = 255;
secondFrame = uint8(zeros(32, 32, 3));
secondFrame(:, :, 3) = 255;
filename_gif = [tempname(), '.gif'];
imwrite(firstFrame, filename_gif, 'gif', 'WriteMode', 'overwrite', ...
        'LoopCount', Inf, 'DelayTime', 0.25);
imwrite(secondFrame, filename_gif, 'gif', 'WriteMode', 'append', ...
        'DelayTime', 0.50);
```

<img src="imwrite_gif.gif" align="middle"/>

## 🔗 Voir aussi

[imread](../graphics_io/imread.md), [imshow](../graphics/4_images/imshow.md), [imformats](../graphics_io/imformats.md).

## 🕔 Historique

| Version | 📄 Description                                                     |
| ------- | ------------------------------------------------------------------ |
| 1.0.0   | version initiale                                                   |
| 1.13.0  | gif animation, pcx format added                                    |
| 2.0.0   | ajout de WebP, des codecs portables et des niveaux de gris 16 bits |

<!--
## 👤 Auteur

Allan CORNET
-->
