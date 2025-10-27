# semilogy

Graphique semi-logarithmique (axe y en échelle logarithmique).

## 📝 Syntaxe

- semilogy(X, Y)
- semilogy(X, Y, LineSpec)
- semilogy(Y)
- semilogy(Y, LineSpec)
- semilogy(ax, ...)
- semilogy(..., propertyName, propertyValue)
- go = semilogy(...)

## 📥 Argument d'entrée

- X - Coordonnées en échelle linéaire : scalaire, vecteur ou matrice.
- Y - Coordonnées en échelle logarithmique : scalaire, vecteur ou matrice.
- LineSpec - Style de ligne, marqueur et/ou couleur : vecteur de caractères ou chaîne scalaire.
- ax - Un objet graphique scalaire : conteneur parent, spécifié comme axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères. Voir l'aide de 'line' pour la liste des propriétés.
- propertyValue - Une valeur.

## 📤 Argument de sortie

- go - Un objet graphique : type ligne.

## 📄 Description

<b>semilogy(X, Y)</b> trace des données en utilisant une échelle logarithmique en base 10 pour l'axe y et une échelle normale (linéaire) pour l'axe x.

<b>semilogy</b> utilise exactement la même syntaxe que la commande <b>plot</b>.

## 💡 Exemples

```matlab
f = figure();
x = 1:100;
y1 = x.^2;
y2 = x.^3;
semilogy(x,y1,'--',x,y2)
legend('x^2','x^3','Location','northwest')
```

<img src="semilogy_1.svg" align="middle"/>

```matlab
f = figure();
y = [ 0.1    1     10
      0.2    2     20
      1.0    10    100
      10     100   1000
      1000   10000 100000];

semilogy(y)
grid on
```

<img src="semilogy_2.svg" align="middle"/>

## 🔗 Voir aussi

[semilogx](../graphics/semilogx.md), [line](../graphics/line.md), [plot](../graphics/plot.md), [grid](../graphics/grid.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
