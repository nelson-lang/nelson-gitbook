# mesh

Tracé de surface en maillage (mesh).

## Syntaxe

- mesh(X, Y, Z)
- mesh(Z)
- mesh(Z, C)
- mesh(X, Y, Z, C)
- mesh(parent, ...)
- mesh(..., propertyName, propertyValue)
- go = mesh(...)

## Argument d'entrée

- X - Coordonnées x : vecteur ou matrice.
- Y - Coordonnées y : vecteur ou matrice.
- Z - Coordonnées z : vecteur ou matrice.
- C - Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
- parent - Un objet graphique scalaire : conteneur parent, spécifié comme axes.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Une valeur.

## Argument de sortie

- go - Un objet graphique : type surface.

## Description

<p>
            mesh crée un maillage 3D (wireframe).
        </p>

<p>
            Vous pouvez personnaliser l'apparence du tracé avec différentes options comme la couleur, l'éclairage et l'ombrage.
        </p>

## Exemples

```matlab
f = figure();
[X, Y] = meshgrid(-8:.5:8);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R) ./ R;
mesh(X, Y, Z)
axis square
```

<img src="mesh_1.svg" align="middle"/>

```matlab
f = figure();
F = str2func('@(z) z .^ 3 - 1');
x = linspace(-2, 2, 100);
y = linspace(-2, 2, 100);
[X, Y] = meshgrid(x, y);
Z = X + 1i*Y;
W = F(Z);
mesh(real(W), imag(W), abs(W))
xlabel('Real')
ylabel('Imaginary')
zlabel('Magnitude')
```

<img src="mesh_2.svg" align="middle"/>

## Voir aussi

[surf](../graphics/surf.md), [meshgrid](../elementary_functions/meshgrid.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
