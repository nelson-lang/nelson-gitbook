# polyshape

Crée un polygone.

## 📝 Syntaxe

- pg = polyshape(x, y)
- pg = polyshape(P)

## 📥 Argument d'entrée

- x, y - vecteurs des coordonnées des sommets du polygone.
- P - une matrice N par 2 des sommets [x y].

## 📤 Argument de sortie

- pg - un objet polyshape.

## 📄 Description


<b>polyshape</b> crée un polygone à partir de ses sommets. Les méthodes <b>area</b>, <b>perimeter</b> et <b>numsides</b> l'interrogent, <b>rotate</b> et <b>translate</b> le transforment, et <b>plot</b> le trace comme un patch rempli (acceptant les propriétés nom-valeur de patch). <b>rotate(pg, theta)</b> tourne le polygone dans le sens trigonométrique de <b>theta</b> degrés autour de l'origine, ou d'un point de référence donné en troisième argument ; <b>translate(pg, [dx dy])</b> le décale.

## 💡 Exemple



```matlab
f = figure();
pg = polyshape([0 1 1 0], [0 0 1 1]);
plot(pg, 'FaceColor', 'r');
area(pg)
```


## 🔗 Voir aussi

[nsidedpoly](../geometry/nsidedpoly.md), [polyarea](../geometry/polyarea.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
