# nsidedpoly

Crée un polygone régulier.

## 📝 Syntaxe

- pg = nsidedpoly(n)
- pg = nsidedpoly(n, 'Center', c)
- pg = nsidedpoly(n, 'Radius', r)
- pg = nsidedpoly(n, 'SideLength', s)

## 📥 Argument d'entrée

- n - le nombre de côtés (un entier >= 3).
- 'Center' - le centre [x y] (par défaut [0 0]).
- 'Radius' - le rayon du cercle circonscrit.
- 'SideLength' - la longueur de chaque côté.

## 📤 Argument de sortie

- pg - un polyshape du polygone régulier.

## 📄 Description


<b>nsidedpoly</b> renvoie un polygone régulier à <b>n</b> côtés sous forme de <b>polyshape</b>. Sans rayon ni longueur de côté, le polygone a une aire unitaire.

## 💡 Exemple



```matlab
f = figure();
plot(nsidedpoly(6, 'Radius', 2));
axis equal
```


## 🔗 Voir aussi

[polyshape](../geometry/polyshape.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
