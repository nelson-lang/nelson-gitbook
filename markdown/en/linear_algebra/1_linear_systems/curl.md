# curl

Curl and angular velocity of a vector field.

## 📝 Syntax

- curlz = curl(X, Y, U, V)
- curlz = curl(U, V)
- [curlz, cav] = curl(X, Y, U, V)
- [curlx, curly, curlz, cav] = curl(X, Y, Z, U, V, W)
- [curlx, curly, curlz, cav] = curl(U, V, W)

## 📥 Input argument

- X, Y, Z - Grid coordinates, as returned by meshgrid. Optional; a default unit grid is used otherwise.
- U, V, W - Components of the vector field (same size).

## 📤 Output argument

- curlx, curly, curlz - Components of the curl of the vector field.
- cav - Angular velocity, equal to half the curl.

## 📄 Description


<b>curl</b> computes the curl of a 2-D or 3-D vector field. In two dimensions it returns the single out-of-plane component <b>curlz</b>; in three dimensions it returns the three components of the curl. The angular velocity <b>cav</b> is half the curl. 

The partial derivatives are evaluated with <b>gradient</b> on the grid defined by <b>X</b>, <b>Y</b> (and <b>Z</b>).

## Used function(s)

gradient

## 💡 Example



```matlab
[x, y] = meshgrid(-3:3, -3:3);
u = -y;
v = x;
curlz = curl(x, y, u, v)
```


## 🔗 See also

[gradient](../../linear_algebra/1_linear_systems/gradient.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
