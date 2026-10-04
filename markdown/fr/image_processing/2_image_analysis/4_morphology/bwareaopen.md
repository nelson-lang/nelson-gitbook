# bwareaopen

Supprime les petits composants connexes d une image binaire.

## 📝 Syntaxe

- BW2 = bwareaopen(BW, minSize)
- BW2 = bwareaopen(BW, minSize, conn)

## 📥 Argument d'entrée

- BW - Image binaire d'entree. Les valeurs non nulles sont traitees comme true.
- minSize - Taille minimale de composante connexe a conserver, sous forme de scalaire entier non negatif.
- conn - Connectivite, 4 ou 8.

## 📤 Argument de sortie

- BW2 - Image logique apres suppression des petites composantes.

## 📄 Description

Supprime les petits composants connexes d une image binaire. minSize doit etre un scalaire entier non negatif. Les connectivites prises en charge sont 4 et 8.

## 💡 Exemple

Supprimer les petits objets

```matlab
BW=false(64,64); BW(20:44,20:44)=true; BW(5,5)=true;
J=bwareaopen(BW,10);
figure; subplot(1,2,1); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Filtered');
```

<img src="bwareaopen_1.png" align="middle"/>

## 🔗 Voir aussi

[bwmorph](../../../image_processing/bwmorph.md), [imopen](../../../image_processing/imopen.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
