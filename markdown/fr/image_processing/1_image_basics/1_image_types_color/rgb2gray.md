# rgb2gray

Convertit une image RGB en niveaux de gris.

## 📝 Syntaxe

- I = rgb2gray(RGB)
- graymap = rgb2gray(map)

## 📥 Argument d'entrée

- RGB - Image RGB m-by-n-by-3.
- map - Colormap double non vide avec trois colonnes.

## 📤 Argument de sortie

- I - Image en niveaux de gris avec la meme classe que l'entree RGB.
- graymap - Colormap grise de meme taille que map.

## 📄 Description


Convertit une image RGB en niveaux de gris. 

Les images RGB peuvent etre des tableaux double, single ou entiers. Les images RGB logiques ne sont pas prises en charge. 

Une colormap double non vide a trois colonnes est convertie en colormap grise de meme taille. Les valeurs de la colormap sont combinees directement et ne sont pas bornees.

## 💡 Exemple

Convertir une image RGB en niveaux de gris

```matlab
RGB=zeros(64,64,3);
[X,Y]=meshgrid(linspace(0,1,64),linspace(0,1,64));
RGB(:,:,1)=X; RGB(:,:,2)=Y; RGB(:,:,3)=1-X;
G=rgb2gray(RGB);
figure; subplot(1,2,1); image(RGB); title('RGB');
subplot(1,2,2); imagesc(G); g=linspace(0,1,64)'; colormap([g g g]); title('Gray');
```
<img src="rgb2gray_1.png" align="middle"/>


## 🔗 Voir aussi

[im2gray](../../../image_processing/1_image_basics/1_image_types_color/im2gray.md), [ind2gray](../../../image_processing/1_image_basics/1_image_types_color/ind2gray.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
