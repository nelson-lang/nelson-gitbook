# Opérateurs Python

La représentation des opérateurs Python dans Nelson.

## 📄 Description

Nelson facilite l'utilisation des opérateurs surchargés suivants :

| Symbole opérateur Python | Méthodes Python                   | Méthodes Nelson |
| ------------------------ | --------------------------------- | --------------- |
| - (opérateur unaire)     | \_\_neg\_\_                       | uminus, -a      |
| + (opérateur unaire)     | \_\_pos\_\_                       | uplus, +a       |
| + (opérateur binaire)    | \_\_add\_\_, \_\_radd\_\_         | plus, +         |
| - (opérateur binaire)    | \_\_sub\_\_, \_\_rsub\_\_         | minus, -        |
| \* (opérateur binaire)   | \_\_mul\_\_, \_\_rmul\_\_         | mtimes, \*      |
| / (opérateur binaire)    | \_\_truediv\_\_, \_\_rtruediv\_\_ | mrdivide, /     |
| == (opérateur binaire)   | \_\_eq\_\_                        | eq, ==          |
| > (opérateur binaire)    | \_\_gt\_\_                        | gt, >           |
| < (opérateur binaire)    | \_\_lt\_\_                        | lt, <           |
| != (opérateur binaire)   | \_\_ne\_\_                        | ne, ~=          |
| >= (opérateur binaire)   | \_\_ge\_\_                        | ge, >=          |
| <= (opérateur binaire)   | \_\_le\_\_                        | le, <=          |

<b>isequal</b> builtin est également surchargée pour gérer les types Python.

Pour les types numpy, <b>isequal</b> appelle <b>numpy.array_equal</b> depuis Python.

D'autres opérateurs Python ne sont pas encore pris en charge.

## 💡 Exemple

```matlab
pyrun('import numpy as np')
R = pyrun('R = np.asarray(A)', "R", 'A', magic(3))
R_A = R + R
R_B = R * 2
isequal(R_A, R_B)
```

## 🔗 Voir aussi

[pyrun](../python_engine/pyrun.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.5.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
