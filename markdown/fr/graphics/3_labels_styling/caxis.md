# caxis

Lit ou definit les limites de couleur des axes.

## 📝 Syntaxe

- limits = caxis()
- caxis([cmin cmax])
- mode = caxis('mode')
- caxis('auto')
- caxis('manual')

## 📥 Argument d'entrée

- limits - Vecteur numerique croissant a deux elements.

## 📤 Argument de sortie

- limits - Limites de couleur courantes.

## 📄 Description


<b>caxis</b> fournit une interface de compatibilite pour les limites de couleur des axes.

## 💡 Exemple



```matlab
imagesc([1 2; 3 4]); caxis([0 5]); limits = caxis()
```


## 🔗 Voir aussi

[clim](../../graphics/3_labels_styling/2_color_styling/clim.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
