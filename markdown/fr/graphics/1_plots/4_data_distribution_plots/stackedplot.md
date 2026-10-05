# stackedplot

Trace des variables dans des axes empiles.

## 📝 Syntaxe

- s = stackedplot(tbl)
- s = stackedplot(tbl1, ..., tblN)
- s = stackedplot({tbl1, ..., tblN})
- s = stackedplot(tt)
- s = stackedplot(tbl, vars)
- s = stackedplot(X, Y)
- s = stackedplot(..., LineSpec)
- s = stackedplot(parent, ...)
- s = stackedplot(..., Name, Value)
- s = stackedplot(..., Name=Value)

## 📥 Argument d'entrée

- tbl - une table.
- tt - une timetable.
- vars - variables a afficher : noms, indices numeriques, selecteur logique ou cellule de groupes.
- X, Y - tableaux numeriques, logiques, datetime ou duration.

## 📤 Argument de sortie

- s - un objet graphique StackedLineChart.

## 📄 Description


<b>stackedplot</b> cree un axe par variable selectionnee et retourne un objet <b>StackedLineChart</b>. 

Pour les timetables, les temps de ligne sont utilises comme valeurs x. Pour les tables, les numeros de ligne sont utilises sauf si <b>XVariable</b> est fourni. 

Plusieurs tables ou timetables peuvent etre fournies. Les variables de meme nom sont combinees dans le meme axe y par defaut. Utiliser <b>CombineMatchingNames</b> avec la valeur <b>false</b> pour placer les variables de meme nom dans des axes separes. 

<b>LineSpec</b> definit le style de ligne, le marqueur et la couleur pour toutes les lignes tracees. Une figure parent peut etre fournie comme premier argument. 

Utiliser des groupes de variables comme <b>{{'A','B'}, 'C'}</b> pour tracer plusieurs variables dans un meme axe empile. 

Les variables de table non prises en charge sont ignorees. Une erreur est emise s'il ne reste aucune variable tracable. Jusqu'a 25 variables peuvent etre affichees. 

Voir [proprietes de stackedplot](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.stackedplot.properties.md) pour la liste complete des proprietes.

## 💡 Exemples

Tracer des variables selectionnees depuis une table et modifier les proprietes du graphique.

```matlab

close all
Temperature = [19.4; 20.1; 21.7; 23.2; 22.6; 20.9];
Pressure = [1012; 1011; 1009; 1008; 1010; 1013];
Rain = [0; 0.2; 0; 1.1; 0.4; 0];
T = table(Temperature, Pressure, Rain);
s = stackedplot(T, {'Temperature', 'Rain'}, ...
  'DisplayLabels', {'Temperature', 'Rainfall'}, ...
  'GridVisible', 'on', ...
  'Title', 'Weather sample', ...
  'XLabel', 'Sample');
s.LineProperties(1).LineWidth = 2;
s.LineProperties(1).Marker = 'o';
s.AxesProperties(2).YLimits = [0 1.2];

```
<img src="stackedplot_1.svg" align="middle"/>
Utiliser une variable de table comme axe x.

```matlab

close all
Time = datetime(2026, 1, 1) + hours(0:5)';
Temperature = [19.4; 20.1; 21.7; 23.2; 22.6; 20.9];
Pressure = [1012; 1011; 1009; 1008; 1010; 1013];
Rain = [0; 0.2; 0; 1.1; 0.4; 0];
T = table(Time, Temperature, Pressure, Rain);
s = stackedplot(T, {'Temperature', 'Pressure', 'Rain'}, 'XVariable', 'Time');
s.Title = 'Weather over time';

```
Tracer des variables groupees dans un meme axe.

```matlab

close all
Time = (1:6)';
Temperature = [19.4; 20.1; 21.7; 23.2; 22.6; 20.9];
Pressure = [1012; 1011; 1009; 1008; 1010; 1013];
Rain = [0; 0.2; 0; 1.1; 0.4; 0];
T = table(Time, Temperature, Pressure, Rain);
s = stackedplot(T, {{'Temperature', 'Rain'}, 'Pressure'}, ...
  'XVariable', 'Time', ...
  'LegendVisible', 'on');

```
Tracer les variables d'une timetable avec les temps de ligne.

```matlab

close all
Time = datetime(2026, 1, 1) + hours(0:5)';
Temperature = [19.4; 20.1; 21.7; 23.2; 22.6; 20.9];
Pressure = [1012; 1011; 1009; 1008; 1010; 1013];
Rain = [0; 0.2; 0; 1.1; 0.4; 0];
TT = timetable(Time, Temperature, Pressure, Rain, ...
  'VariableNames', {'Temperature', 'Pressure', 'Rain'});
s = stackedplot(TT);
s.GridVisible = 'on';

```
Tracer des tableaux numeriques.

```matlab

close all
X = (0:0.5:5)';
Y = [sin(X), cos(X), sin(X) .* cos(X)];
s = stackedplot(X, Y, 'DisplayLabels', {'sin', 'cos', 'product'});
s.AxesProperties(1).YScale = 'linear';

```
Definir des proprietes de haut niveau du graphique.

```matlab

close all
Temperature = [19.4; 20.1; 21.7; 23.2; 22.6; 20.9];
Rain = [0; 0.2; 0; 1.1; 0.4; 0];
T = table(Temperature, Rain);
s = stackedplot(T, {'Temperature', 'Rain'}, ...
  XLimits=[1 4], ...
  GridVisible="on", ...
  LegendVisible="on", ...
  LegendLabels={'Temperature', 'Rain'}, ...
  FontSize=13, ...
  MarkerFaceColor=[0 1 0]);
s.Color = [0 0 1];

```
Tracer des variables correspondantes depuis deux tables dans les memes axes.

```matlab

close all
Time = (1:6)';
T1 = table(Time, [19.4; 20.1; 21.7; 23.2; 22.6; 20.9], ...
  [0; 0.2; 0; 1.1; 0.4; 0], ...
  'VariableNames', {'Time', 'Temperature', 'Rain'});
T2 = table(Time, [18.9; 19.7; 21.0; 22.8; 22.0; 20.1], ...
  [0.1; 0.0; 0.1; 0.9; 0.5; 0.2], ...
  'VariableNames', {'Time', 'Temperature', 'Rain'});
s = stackedplot(T1, T2, {'Temperature', 'Rain'}, '--o', ...
  'XVariable', 'Time', ...
  'Title', 'Two stations');

```
Placer les variables correspondantes dans des axes separes.

```matlab

close all
Time = (1:4)';
T1 = table(Time, [10; 11; 12; 13], 'VariableNames', {'Time', 'Value'});
T2 = table(Time, [20; 21; 22; 23], 'VariableNames', {'Time', 'Value'});
s = stackedplot({T1, T2}, {'Value'}, ...
  'XVariable', 'Time', ...
  'CombineMatchingNames', false);

```
Creer un graphique empile dans une figure indiquee.

```matlab

close all
f = figure();
Temperature = [19.4; 20.1; 21.7; 23.2];
Rain = [0; 0.2; 0; 1.1];
T = table(Temperature, Rain);
s = stackedplot(f, T, 'LineWidth', 2);

```


## 🔗 Voir aussi

[proprietes de stackedplot](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.stackedplot.properties.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md), [table](../../../table/1_create_convert_tables/table.md), [timetable](../../../table/1_create_convert_tables/timetable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
