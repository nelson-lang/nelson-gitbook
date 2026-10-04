# padarray

Ajoute des marges a un tableau pour le filtrage ou la morphologie.

## 📝 Syntaxe

- B = padarray(A, padSize)
- B = padarray(A, padSize, method)
- B = padarray(A, padSize, method, direction)

## 📥 Argument d'entrée

- A - Image 2-D numerique/logique ou image RGB a completer par padding.
- padSize - Scalaire entier non negatif ou vecteur a deux elements qui definit le padding en lignes et colonnes.
- method - Methode de padding : constante numerique/logique, replicate, symmetric ou circular.
- direction - Direction du padding : pre, post ou both. La valeur par defaut est both.

## 📤 Argument de sortie

- B - Image ou tableau complete par padding, avec preservation de la classe d'entree.

## 📄 Description

Ajoute des marges a un tableau pour le filtrage ou la morphologie. Les methodes prises en charge incluent les constantes numeriques, replicate, symmetric et circular. La direction peut etre pre, post ou both. Les options textuelles sont insensibles a la casse.

## 💡 Exemple

Ajouter des marges a une image

```matlab
I=eye(32);
P=padarray(I,[8 12],'replicate');
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(P); g=linspace(0,1,64)'; colormap([g g g]); title('Padded');
```

<img src="padarray_1.png" align="middle"/>

## 🔗 Voir aussi

[imfilter](../../../image_processing/imfilter.md), [medfilt2](../../../image_processing/medfilt2.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
