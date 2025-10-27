# cart2pol

Transforme des coordonnées cartésiennes en coordonnées polaires ou cylindriques.

## 📝 Syntaxe

- [theta, rho] = cart2pol(x, y)
- [theta, rho, z] = cart2pol(x, y, z)

## 📥 Argument d'entrée

- x - une valeur numérique (double ou simple réel) : Coordonnées cartésiennes
- y - une valeur numérique (double ou simple réel) : Coordonnées cartésiennes
- z - une valeur numérique (double ou simple réel) : Coordonnées cartésiennes

## 📤 Argument de sortie

- theta - une valeur numérique : Coordonnée angulaire.
- rho - une valeur numérique : Coordonnée radiale.
- z - a numeric value: Elevation coordinate.

## 📄 Description

<b>cart2pol</b> transforms Cartesian coordinates to polar or cylindrical.

## 💡 Exemples

```matlab
x = [5 3.5355 0 -10];
y = [0 3.5355 10 0];
[theta, rho] = cart2pol(x, y)
```

```matlab
x = [1 2.1213 0 -5];
y = [0 2.1213 4 0];
z = [7 8 9 10];
[theta, rho, el] = cart2pol(x, y, z)
```

## 🔗 Voir aussi

[pol2cart](../trigonometric_functions/pol2cart.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
