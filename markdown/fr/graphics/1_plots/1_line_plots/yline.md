# yline

Ligne constante horizontale.

## 📝 Syntaxe

- yline(yvalue)
- yline(yvalue, LineSpec)
- yline(yvalue, LineSpec, label)
- yline(yvalue, nomPropriete, valeurPropriete)
- yline(ax, yvalue)
- cl = yline(yvalue)

## 📥 Argument d'entrée

- yvalue - un scalaire ou un vecteur numérique réel : position de la ou des lignes horizontales sur l'axe des y.
- LineSpec - un vecteur ligne de caractères ou une chaîne scalaire : style et couleur de la ligne, par exemple <b>'--r'</b>.
- label - un vecteur ligne de caractères, une chaîne scalaire ou un tableau de cellules de caractères : texte affiché près de la ligne.
- ax - Axes cible : objet axes.
- nomPropriete - une chaîne scalaire ou un vecteur ligne de caractères.
- valeurPropriete - une valeur.

## 📤 Argument de sortie

- cl - un objet graphique : type ConstantLine.

## 📄 Description


<b>yline(yvalue)</b> trace une ligne horizontale à la valeur <b>yvalue</b>sur les axes courants. La ligne occupe toute la largeur des axes. 

Utilisez un <b>LineSpec</b> pour définir le style et la couleur de la ligne, et un <b>label</b> pour l'annoter. 

Lorsque <b>yvalue</b> est un vecteur, une ligne horizontale est créée pour chaque valeur.

## 💡 Exemples



```matlab
f = figure();
plot(1:10, (1:10).^2);
yline(50, '-.b', 'mean');

```


```matlab
f = figure();
plot(1:10, sin(1:10));
yline([-1 0 1], 'Color', [0 0 1]);

```


## 🔗 Voir aussi

[xline](../../../graphics/1_plots/1_line_plots/xline.md), [line](../../../graphics/1_plots/1_line_plots/line.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
