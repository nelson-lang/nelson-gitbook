# Opérateurs Python

La représentation des opérateurs Python dans Nelson.

## Description

<p>Nelson facilite l'utilisation des opérateurs surchargés suivants :</p>

| Symbole opérateur Python | Méthodes Python           | Méthodes Nelson |
| ------------------------ | ------------------------- | --------------- |
| - (opérateur unaire)     | **neg**                   | uminus, -a      |
| + (opérateur unaire)     | **pos**                   | uplus, +a       |
| + (opérateur binaire)    | **add**, **radd**         | plus, +         |
| - (opérateur binaire)    | **sub**, **rsub**         | minus, -        |
| \* (opérateur binaire)   | **mul**, **rmul**         | mtimes, \*      |
| / (opérateur binaire)    | **truediv**, **rtruediv** | mrdivide, /     |
| == (opérateur binaire)   | **eq**                    | eq, ==          |
| > (opérateur binaire)    | **gt**                    | gt, >           |
| < (opérateur binaire)    | **lt**                    | lt, <           |
| != (opérateur binaire)   | **ne**                    | ne, ~=          |
| >= (opérateur binaire)   | **ge**                    | ge, >=          |
| <= (opérateur binaire)   | **le**                    | le, <=          |

<p></p>

<p>
            isequal builtin est également surchargée pour gérer les types Python.</p>

<p>Pour les types numpy, isequal appelle numpy.array_equal depuis Python.</p>

<p>D'autres opérateurs Python ne sont pas encore pris en charge.</p>

## Exemple

```matlab
pyrun('import numpy as np')
R = pyrun('R = np.asarray(A)', "R", 'A', magic(3))
R_A = R + R
R_B = R * 2
isequal(R_A, R_B)
```

## Voir aussi

[pyrun](../python_engine/pyrun.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
