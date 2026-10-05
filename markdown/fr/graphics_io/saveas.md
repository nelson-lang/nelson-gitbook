# saveas

Enregistre une figure dans un format de fichier spécifique.

## 📝 Syntaxe

- saveas(fig, filename)
- saveas(fig, filename, formattype)

## 📥 Argument d'entrée

- fig - objet figure.
- filename - vecteur de caractères ou chaîne scalaire : nom de fichier de destination.
- formattype - vecteur de caractères ou chaîne scalaire : extension ou type de format.

## 📄 Description


<b>saveas</b> enregistre la figure dans un format de fichier spécifique. 

Le <b>formattype</b> explicite est prioritaire sur l'extension du fichier. Sans extension, PNG est sélectionné et <b>.png</b> est ajouté. Les modes bureau, web et headless utilisent le même moteur de rendu et le même registre de formats. 

<b>Fond :</b> tant que la propriété <b>InvertHardcopy</b> de la figure vaut <b>'on'</b>(valeur par défaut), le fond exporté est blanc quelle que soit la couleur <b>Color</b> affichée (gris clair par défaut). Passer <b>InvertHardcopy</b> à <b>'off'</b> pour exporter la couleur de fond affichée. 

Les <b>formats vectoriels</b> utilisent des exporteurs de figure dédiés : 

| Option | Format | Extension | 
| --- | --- | --- | 
| svg | Scalable Vector Graphics | .svg | 
| pdf | Portable Document Format, page entière en couleur | .pdf | 

 

Les <b>formats raster</b> sont encodés par le même registre que <b>imwrite</b> : 

| Option canonique | Alias | Extension | 
| --- | --- | --- | 
| png | - | .png | 
| jpg | jpeg, jfif | .jpg, .jpeg, .jfif | 
| gif | - | .gif | 
| webp | - | .webp | 
| tiff | tif | .tiff, .tif | 
| bmp | dib | .bmp, .dib | 
| tga | - | .tga | 
| pbm, pgm, ppm, pnm | - | .pbm, .pgm, .ppm, .pnm | 
| pcx | - | .pcx | 



## 💡 Exemple



```matlab
x = -2:0.25:2;
y = x;
[X,Y] = meshgrid(x);
F = X.*exp(-X.^2-Y.^2);
surf(X,Y,F);
saveas(gcf(), [tempdir, 'svg-file.svg']);
saveas(gcf(), [tempdir, 'webp-file.webp']);
saveas(gcf(), [tempdir, 'bitmap-file.bmp']);
saveas(gcf(), [tempdir, 'document-file.pdf']);
close(gcf());

```


## 🔗 Voir aussi

[gcf](../graphics/2_graphics_objects/1_object_management/gcf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 1.13.0   | tiff format added |
| 2.0.0   | ajout des formats d'export communs aux modes bureau, web et headless |

<!--
## 👤 Auteur

Allan CORNET
-->
