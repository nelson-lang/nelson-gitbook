# bubblelim

Definit ou retourne les limites des donnees de taille des bulles.

## 📝 Syntaxe

- bubblelim(limits)
- bubblelim('auto')
- bubblelim('manual')
- bubblelim(ax, ...)
- limits = bubblelim()
- mode = bubblelim('mode')

## 📥 Argument d'entrée

- limits - Vecteur numerique a deux elements [min max].
- ax - Axes cible. Si omis, les axes courants sont utilises.

## 📤 Argument de sortie

- limits - Limites courantes des donnees de taille des bulles.

## 📄 Description

<b>bubblelim</b> controle les limites de donnees utilisees pour convertir <b>SizeData</b> en diametres de bulles.

## 💡 Exemple

Definir les limites de bulles.

```matlab
figure();
bubblechart(1:3, [2 4 6], [10 100 1000]);
bubblelim([10 1000]);
```

<img src="bubblelim_1.svg" align="middle"/>

## 🔗 Voir aussi

[bubblechart](../../../graphics/1_plots/4_data_distribution_plots/bubblechart.md), [bubblesize](../../../graphics/1_plots/4_data_distribution_plots/bubblesize.md).

<!--
## 👤 Auteur

Allan CORNET
-->
