# getframe

Capture une figure ou des axes comme image vidéo.

## 📝 Syntaxe

- F = getframe
- F = getframe(ax)
- F = getframe(fig)

## 📥 Argument d'entrée

- ax - Objet axes : axes à capturer.
- fig - Objet figure : figure à capturer.

## 📤 Argument de sortie

- F - Structure : image vidéo.

## 📄 Description

<b>F = getframe</b> capture les axes courants affichés à l'écran comme une image vidéo. F est une structure contenant les données de l'image. La capture préserve la taille à l'écran des axes mais n'inclut pas les étiquettes de graduations ni tout contenu en dehors des limites des axes.

<b>F = getframe(ax)</b> capture les axes spécifiés par ax au lieu des axes courants.

<b>F = getframe(fig)</b> capture la fenêtre de figure entière spécifiée par fig, y compris le titre des axes, les étiquettes et les graduations. Cependant, l'image capturée n'inclut pas le menu ou les barres d'outils de la figure.

## 💡 Exemples

```matlab
f = figure();
surf(peaks);
F = getframe(f);
figure('Color',[0.5 0.5 0.5]);
imshow(F.cdata)

```

```matlab
f = figure();
ax1 = subplot(2,1,1);
surf(peaks);
ax2 = subplot(2,1,2);
plot(rand(30))
F1 = getframe(ax1);
F2 = getframe(ax2);
figure('Color',[0.5 0.5 0.5]);
imshow(F1.cdata)
figure('Color',[0.5 0.5 0.5]);
imshow(F2.cdata)

```

## 🔗 Voir aussi

[image](../graphics/image.md), [imshow](../graphics/imshow.md), [imwrite](../graphics_io/imwrite.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.13.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
