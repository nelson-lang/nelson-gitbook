# imtranslate

Translate une image en 2D.

## 📝 Syntaxe

- J = imtranslate(I, translation)
- J = imtranslate(I, translation, method)
- J = imtranslate(I, translation, Name, Value)

## 📥 Argument d'entrée

- I - Image d'entree en niveaux de gris ou RGB.
- translation - Vecteur de translation a deux elements [x y].
- method - Methode d'interpolation : 'nearest', 'linear', 'bilinear' ou 'cubic'.
- 'FillValues' - Valeur de remplissage utilisee hors de l'image d'entree.
- 'Interpolation' - Remplacement nomme de la methode d'interpolation.
- 'OutputView' - Vue de sortie : 'same' ou 'full'.

## 📤 Argument de sortie

- J - Image translatee.

## 📄 Description

Translate une image en 2D. Les methodes d interpolation prises en charge sont nearest, linear, bilinear et cubic. Les noms d options sont insensibles a la casse. OutputView peut valoir same ou full.

## 💡 Exemple

Translater une image

```matlab
I=zeros(64,64); I(20:36,24:40)=1;
J=imtranslate(I,[12 8],'Interpolation','nearest','OutputView','full');
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Translated');
```

<img src="imtranslate_1.png" align="middle"/>

## 🔗 Voir aussi

[imwarp](../../../image_processing/imwarp.md), [imcrop](../../../image_processing/imcrop.md), [imresize](../../../image_processing/imresize.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
