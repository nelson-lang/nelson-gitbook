# boxchart

Afficher une boite a moustaches pour donnees numeriques groupees.

## 📝 Syntaxe

- boxchart(ydata)
- boxchart(xgroupdata, ydata)
- boxchart(..., 'GroupByColor', cgroupdata)
- boxchart(tbl, yvar)
- boxchart(tbl, xvar, yvar)
- boxchart(parent, ...)
- boxchart(..., propertyName, propertyValue)
- h = boxchart(...)

## 📄 Description


<b>boxchart</b> affiche des boites pour des donnees numeriques. La valeur retournee est un ou plusieurs objets graphiques dont <b>Type</b> vaut <b>boxchart</b>. 

Le graphe calcule les quartiles, la mediane, les moustaches, les caps, les valeurs aberrantes et les notches optionnelles pour chaque groupe numerique. Les valeurs NaN sont ignorees pendant le calcul des statistiques. 

Voir [proprietes de boxchart](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.boxchart.properties.md) pour la liste complete des proprietes.

## 💡 Exemples

Boite simple.

```matlab
f = figure();
boxchart([1 2 3 4 12], 'BoxFaceColor', [0.2 0.5 0.8]);

```
<img src="boxchart_1.svg" align="middle"/>
Boite groupee.

```matlab
f = figure();
g = categorical({'A', 'A', 'A', 'B', 'B', 'B'});
y = [1 2 8 4 5 15];
boxchart(g, y, 'MarkerStyle', 'x');

```
<img src="boxchart_2.svg" align="middle"/>
Groupes de couleur.

```matlab
f = figure();
x = [1 1 2 2 2 1];
y = [10 20 3 4 100 15];
c = categorical({'red', 'blue', 'red', 'blue', 'red', 'blue'});
boxchart(x, y, 'GroupByColor', c);

```
<img src="boxchart_3.svg" align="middle"/>
Boites pour les colonnes d'une matrice.

```matlab
f = figure();
Y = magic(10);
boxchart(Y);
xlabel('Column');
ylabel('Value');

```
<img src="boxchart_4.svg" align="middle"/>
Notches et valeurs aberrantes jittered.

```matlab
f = figure();
x = [ones(1, 8), 2 * ones(1, 8), 3 * ones(1, 8)];
y = [1 2 3 4 5 6 7 30, 4 5 6 7 8 9 10 11, 2 3 4 5 20 21 22 23];
boxchart(x, y, 'Notch', 'on', 'JitterOutliers', 'on');
xlabel('Group');
ylabel('Value');

```
<img src="boxchart_5.svg" align="middle"/>
Marqueur de valeur aberrante et charnieres de boite.

```matlab
f = figure();
boxchart([1 2 3 4 100]);
xlabel('Sample');
ylabel('Value');

```
<img src="boxchart_6.svg" align="middle"/>


## 🔗 Voir aussi

[proprietes de boxchart](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.boxchart.properties.md), [boxplot](../../../graphics/1_plots/4_data_distribution_plots/boxplot.md).