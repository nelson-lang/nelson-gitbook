# loglog

Tracé en échelle log-log.

## 📝 Syntaxe

- loglog(X, Y)
- loglog(X, Y, LineSpec)
- loglog(Y)
- loglog(Y, LineSpec)
- loglog(ax, ...)
- loglog(..., propertyName, propertyValue)
- go = loglog(...)

## 📥 Argument d'entrée

- X - Coordonnées en échelle logarithmique : scalaire, vecteur ou matrice.
- Y - Coordonnées en échelle logarithmique : scalaire, vecteur ou matrice.
- LineSpec - Style de ligne, marqueur et/ou couleur : vecteur de caractères ou chaîne scalaire.
- ax - Un objet graphique scalaire : conteneur parent, spécifié comme axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères. Voir l'aide de 'line' pour la liste des propriétés.
- propertyValue - Une valeur.

## 📤 Argument de sortie

- go - Un objet graphique : type ligne.

## 📄 Description

<b>loglog(X, Y)</b> trace les données en utilisant une échelle logarithmique en base 10 pour l'axe des x et l'axe des y.

<b>loglog</b> utilise exactement la même syntaxe que la commande <b>plot</b>.

## 💡 Exemples

```matlab
f = figure();
x = logspace(-1,2);
y = 2 .^ x;
loglog(x,y)
grid on
```

<img src="loglog_1.svg" align="middle"/>

```matlab
f = figure();
x = logspace(-1,2,20);
y = 10 .^ x;
loglog(x,y,'s','MarkerFaceColor',[0 0.447 0.741])
grid on
```

<img src="loglog_2.svg" align="middle"/>

## 🔗 Voir aussi

[semilogx](../graphics/semilogx.md), [semilogy](../graphics/semilogy.md), [line](../graphics/line.md), [plot](../graphics/plot.md), [grid](../graphics/grid.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
