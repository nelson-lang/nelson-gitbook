# colormap

Afficher et définir la palette de couleurs courante.

## 📝 Syntaxe

- colormap(map)
- colormap(target ,map)
- cmap = colormap()
- cmap = colormap(target)

## 📥 Argument d'entrée

- map - nom de la palette, 'default' ou triplets RGB (matrice).
- target - Cible : figure ou axes.

## 📤 Argument de sortie

- cmap - Valeurs de la palette : triplets RGB (matrice).

## 📄 Description

<b>colormap</b> permet d'afficher et de définir la palette de couleurs utilisée dans un graphique.

## 💡 Exemples

```matlab
f = figure()
x = linspace(-1, 1, 1024)' * ones(1, 1024);
y = x';
Z = exp(-(x .^ 2 + y .^ 2) / 0.4);
imagesc(Z);
colormap('summer')

```

<img src="colormap_1.svg" align="middle"/>

```matlab
f = figure()
x = linspace(-1, 1, 1024)' * ones(1, 1024);
y = x';
Z = exp(-(x .^ 2 + y .^ 2) / 0.4);
imagesc(Z);
colormap('gray')
```

<img src="colormap_2.svg" align="middle"/>

```matlab
f = figure()
x = linspace(-1, 1, 1024)' * ones(1, 1024);
y = x';
Z = exp(-(x .^ 2 + y .^ 2) / 0.4);
imagesc(Z);

map = [0 0 0.3;
    0 0 0.4;
    0 0 0.5;
    0 0 0.6;
    0 0 0.8;
    0 0 1.0];
colormap(map)
```

<img src="colormap_3.svg" align="middle"/>

## 🔗 Voir aussi

[rgbplot](../graphics/rgbplot.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
