# exportapp

Enregistre une figure avec ses composants d'interface dans un fichier image.

## 📝 Syntaxe

- exportapp(fig, filename)

## 📥 Argument d'entrée

- fig - objet figure : figure ou figure d'interface à capturer.
- filename - un vecteur de caractères ou une chaîne scalaire : fichier image de destination.

## 📄 Description


<b>exportapp(fig, filename)</b> capture la figure <b>fig</b>, y compris tous ses composants d'interface, et l'écrit dans le fichier image <b>filename</b>. 

Le format du fichier de sortie est déterminé par l'extension de <b>filename</b> (par exemple <b>.png</b>, <b>.jpg</b> ou <b>.tif</b>). 

Contrairement à <b>saveas</b>, <b>exportapp</b> est destinée à exporter les figures créées avec <b>uifigure</b> contenant des composants d'interface tels que des boutons, des curseurs et des tableaux.

## 💡 Exemple



```matlab
f = uifigure('Position', [100 100 300 200]);
b = uibutton(f, 'Text', 'Export me');
exportapp(f, [tempdir(), 'exportapp_example.png']);
img = imread([tempdir(), 'exportapp_example.png']);
figure();
imshow(img)

```


## 🔗 Voir aussi

[getframe](../../graphics/4_images/getframe.md), [saveas](../../graphics_io/saveas.md), [uifigure](../../gui/uifigure.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
