# timeseries.plot

Trace les donnees timeseries en fonction du temps.

## 📝 Syntaxe

- h = plot(ts)
- h = plot(ax, ts)
- h = plot(ts, lineSpec)

## 📥 Argument d'entrée

- ts - Objet timeseries en entree.
- ax - Axes cibles optionnels.
- lineSpec - Style de ligne ou arguments graphiques optionnels.

## 📤 Argument de sortie

- h - Handle graphique vers la ligne ou l'objet stairs trace.

## 📄 Description

<b>plot</b> Trace le temps des echantillons sur l'axe x et les donnees timeseries sur l'axe y. L'interpolation par maintien d'ordre zero utilise un trace en escalier.

## 💡 Exemple

```matlab
f = figure();
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
h = plot(ts);

```

## 🔗 Voir aussi

[timeseries](../../time/timeseries.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
