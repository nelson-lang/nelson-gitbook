# bwmorph

Applique des operations morphologiques aux images binaires.

## 📝 Syntaxe

- BW2 = bwmorph(BW, operation)
- BW2 = bwmorph(BW, operation, n)

## 📥 Argument d'entrée

- BW - Image binaire 2-D numerique ou logique. Les valeurs non nulles sont traitees comme true.
- operation - Nom d operation : 'clean', 'fill', 'majority', 'remove', 'endpoints', 'branchpoints', 'spur', 'bridge', 'thin', 'skel', 'dilate', 'erode', 'open', 'close', 'tophat' ou 'bothat'.
- n - Nombre d iterations. Il doit etre un scalaire entier positif ou nul, ou Inf. La valeur par defaut est 1.

## 📤 Argument de sortie

- BW2 - Image logique apres application de l operation demandee.

## 📄 Description


Applique des operations morphologiques binaires a une image 2-D. 

Dilate, erode, open, close, tophat et bothat utilisent un voisinage carre 3-by-3. 

Le nombre d iterations n peut etre un entier positif ou nul, ou Inf.

## 💡 Exemple

Supprimer des extremites dans une ligne binaire

```matlab
BW=false(64,64); BW(32,12:52)=true; BW(20:32,32)=true;
BW2=bwmorph(BW,'spur',4);
figure; subplot(1,2,1); imagesc(BW); title('Input');
subplot(1,2,2); imagesc(BW2); title('After spur');
```
<img src="bwmorph_1.png" align="middle"/>


## 🔗 Voir aussi

[imdilate](../../../image_processing/2_image_analysis/4_morphology/imdilate.md), [imerode](../../../image_processing/2_image_analysis/4_morphology/imerode.md), [bwperim](../../../image_processing/2_image_analysis/4_morphology/bwperim.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
