# fpolarplot

Trace une fonction en coordonnees polaires.

## 📝 Syntaxe

- fpolarplot(fun)
- fpolarplot(fun, [tmin tmax])
- fpolarplot(..., LineSpec)
- fpolarplot(..., Nom, Valeur)
- fpolarplot(parent, ...)
- h = fpolarplot(...)

## 📤 Argument de sortie

- h - Objet graphique functionline trace dans des axes polaires.

## 📄 Description


<b>fpolarplot</b> echantillonne une fonction sur un intervalle d'angles et trace les rayons obtenus en coordonnees polaires. L'objet retourne est un <b>functionline</b>. 

Les paires nom-valeur peuvent definir les proprietes de ligne et les proprietes de functionline comme <b>MeshDensity</b>.

## 💡 Exemple

Tracer une fonction polaire.

```matlab
fpolarplot(@(t) 1 + sin(4*t), [0 2*pi], 'r-');
```
<img src="fpolarplot_1.svg" align="middle"/>


## 🔗 Voir aussi

[polarplot](../../../graphics/1_plots/2_polar_plots/polarplot.md), [fplot](../../../graphics/1_plots/1_line_plots/fplot.md), [proprietes de functionline](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.functionline.properties.md).