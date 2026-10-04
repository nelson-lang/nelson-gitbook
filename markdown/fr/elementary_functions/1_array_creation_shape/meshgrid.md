# meshgrid

grille rectangulaire cartésienne en 2-D ou 3-D.

## 📝 Syntaxe

- [X, Y] = meshgrid(x, y)
- [X, Y] = meshgrid(x)
- [X, Y, Z] = meshgrid(x, y, z)
- [X, Y, Z] = meshgrid(x)

## 📥 Argument d'entrée

- x - coordonnées x des points : vecteur
- y - coordonnées y des points : vecteur
- z - coordonnées z des points : vecteur

## 📤 Argument de sortie

- X - coordonnées x sur la grille : tableau 2-D ou 3-D.
- Y - coordonnées y sur la grille : tableau 2-D ou 3-D.
- Z - coordonnées z sur la grille : tableau 3-D.

## 📄 Description

<b>meshgrid</b> crée une grille rectangulaire cartésienne en 2-D ou 3-D.

## 💡 Exemple

```matlab
x = -1:0.4:1;
y = -1:0.4:1;
[X, Y] = meshgrid(x, y)

x = 0:2:6;
y = 0:1:6;
z = 0:3:6;
[X,Y,Z] = meshgrid(x, y, z)
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
