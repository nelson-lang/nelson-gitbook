# theme

Definit le theme de couleur d'une figure.

## 📝 Syntaxe

- theme(themename)
- theme(f, themename)
- theme(f, t)
- t = theme(...)

## 📥 Argument d'entrée

- themename - une chaine : 'light' ou 'dark'.
- f - un objet graphique. Figure cible. Si un objet non figure est fourni, sa figure ancetre est utilisee. Si omis, la figure courante est utilisee.
- t - un objet theme, tel que renvoye par la propriete <b>Theme</b> d'une figure.

## 📤 Argument de sortie

- t - l'objet theme applique a la figure.

## 📄 Description

<b>theme</b> definit le theme de couleur d'une figure a <b>'light'</b> ou <b>'dark'</b>.

L'application d'un theme met a jour la propriete <b>Theme</b> de la figure ainsi que les couleurs de la figure et de ses enfants qui utilisent des couleurs gerees par le theme.

Sans argument figure, le theme est applique a la figure courante renvoyee par <b>gcf</b>.

## 💡 Exemples

Appliquer un theme sombre a une figure.

```matlab
f = figure();
surf(peaks);
theme(f, 'dark');

```

Interroger le theme applique a la figure courante.

```matlab
f = figure();
t = theme('light')

```

## 🔗 Voir aussi

[figure](../../../graphics/2_graphics_objects/1_object_management/figure.md), [gcf](../../../graphics/2_graphics_objects/1_object_management/gcf.md), [colororder](../../../graphics/3_labels_styling/2_color_styling/colororder.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
