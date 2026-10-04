# xline

Ligne constante verticale.

## 📝 Syntaxe

- xline(xvalue)
- xline(xvalue, LineSpec)
- xline(xvalue, LineSpec, label)
- xline(xvalue, nomPropriete, valeurPropriete)
- xline(ax, xvalue)
- cl = xline(xvalue)

## 📥 Argument d'entrée

- xvalue - un scalaire ou un vecteur numérique réel : position de la ou des lignes verticales sur l'axe des x.
- LineSpec - un vecteur ligne de caractères ou une chaîne scalaire : style et couleur de la ligne, par exemple <b>'--r'</b>.
- label - un vecteur ligne de caractères, une chaîne scalaire ou un tableau de cellules de caractères : texte affiché près de la ligne.
- ax - Axes cible : objet axes.
- nomPropriete - une chaîne scalaire ou un vecteur ligne de caractères.
- valeurPropriete - une valeur.

## 📤 Argument de sortie

- cl - un objet graphique : type ConstantLine.

## 📄 Description

<b>xline(xvalue)</b> trace une ligne verticale à la valeur <b>xvalue</b>sur les axes courants. La ligne occupe toute la hauteur des axes.

Utilisez un <b>LineSpec</b> pour définir le style et la couleur de la ligne, et un <b>label</b> pour l'annoter.

Lorsque <b>xvalue</b> est un vecteur, une ligne verticale est créée pour chaque valeur.

## 💡 Exemples

```matlab
f = figure();
plot(1:10, (1:10).^2);
xline(5, '--r', 'threshold');

```

```matlab
f = figure();
plot(-10:10, (-10:10).^2);
xline([-3 3], 'Color', [0 0 1], 'LineWidth', 2);

```

## 🔗 Voir aussi

[yline](../../../graphics/1_plots/1_line_plots/yline.md), [line](../../../graphics/1_plots/1_line_plots/line.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
