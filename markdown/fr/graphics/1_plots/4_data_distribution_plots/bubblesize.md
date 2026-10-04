# bubblesize

Definit ou retourne la plage des diametres affiches des bulles.

## 📝 Syntaxe

- bubblesize(range)
- bubblesize(ax, range)
- range = bubblesize()

## 📥 Argument d'entrée

- range - Vecteur positif a deux elements [min max], en points.
- ax - Axes cible. Si omis, les axes courants sont utilises.

## 📤 Argument de sortie

- range - Plage courante des diametres affiches des bulles.

## 📄 Description

<b>bubblesize</b> controle les diametres minimum et maximum affiches des bulles dans les axes.

## 💡 Exemple

Reduire les tailles de bulles.

```matlab
figure();
bubblechart(1:3, [2 4 6], [10 100 1000]);
bubblesize([5 30]);
```

<img src="bubblesize_1.svg" align="middle"/>

## 🔗 Voir aussi

[bubblechart](../../../graphics/1_plots/4_data_distribution_plots/bubblechart.md), [bubblelim](../../../graphics/1_plots/4_data_distribution_plots/bubblelim.md).

<!--
## 👤 Auteur

Allan CORNET
-->
