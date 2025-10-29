# ndgrid

Rectangular grid in N-D space

## 📝 Syntaxe

- [X1, X2, ..., Xn] = ndgrid(x1, x2, ... , xn)
- [X1, X2, ..., Xn] = ndgrid(xg)

## 📥 Argument d'entrée

- x1, x2, … , xn - vector: grid vectors as separate arguments.
- xg - vector: grid vector for all dimensions.

## 📤 Argument de sortie

- X1, X2, … , Xn - array: full grid representation.

## 📄 Description

<b>[X1, X2, … , Xn] = ndgrid(x1, x2, … , xn)</b> generates an n-dimensional full grid by replicating each grid vector.

<b>[X1, X2, … , Xn] = ndgrid(xg)</b> In this scenario, the single grid vector <b>xg</b> is used for all dimensions. The number of output arguments determines the dimensionality n of the resulting grid.

## 💡 Exemples

```matlab
M = {'apple', 'banana', 'cherry'};
N = {'blue', 'green', 'red'};
ndgrid(M , N)

```

```matlab
[X, Y] = ndgrid(1:2:19, 2:2:12)
```

## 🔗 Voir aussi

[meshgrid](../elementary_functions/meshgrid.md), [mesh](../graphics/mesh.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.6.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
