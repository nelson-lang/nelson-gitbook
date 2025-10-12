# hist

Tracé d'histogramme.

## Syntaxe

- hist(x)
- hist(x, nbins)
- hist(ax, ...)
- counts = hist(...)
- [counts, centers] = hist(...)

## Argument d'entrée

- x - vecteur ou matrice
- nbins - vecteur.
- ax - Objet axes.

## Argument de sortie

- counts - Nombre d'éléments dans chaque intervalle : vecteur ligne.
- centers - Centres des intervalles : vecteur.

## Description

<p>Un histogramme est une représentation graphique qui illustre la distribution des valeurs d'un ensemble de données.</p>

<p>Lorsque vous utilisez la fonction hist, elle organise les éléments du vecteur Y en 10 intervalles également espacés et fournit le nombre d'éléments dans chaque intervalle sous forme de vecteur ligne.</p>

<p>
            hist(Y, x) avec un vecteur x, la fonction retourne la distribution des valeurs de Y parmi des intervalles déterminés par la longueur de x, avec des centres spécifiés par les valeurs de x.</p>

<p>Par exemple, si x est un vecteur de 5 éléments, hist classera les éléments de Y dans cinq intervalles, chacun centré sur l'axe des x aux valeurs spécifiées dans x.</p>

<p>Lorsque vous utilisez hist(...) sans spécifier d'argument de sortie, cela génère un tracé d'histogramme. Les intervalles sont répartis le long de l'axe des x entre les valeurs minimale et maximale trouvées dans le vecteur d'entrée Y.</p>

## Exemple

```matlab
f = figure();
for i = 1:4
  subplot(2, 2, i)
  hist(randn(1000, 1), 50)
end

```

<img src="hist_1.svg" align="middle"/>

## Voir aussi

[bar](../graphics/bar.md), [patch](../graphics/patch.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
