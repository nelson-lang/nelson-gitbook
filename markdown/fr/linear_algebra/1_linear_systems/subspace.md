# subspace

Angle entre deux sous-espaces.

## 📝 Syntaxe

- T = subspace(A, B)

## 📥 Argument d'entrée

- A - vector or matrix (real or single)
- B - vector or matrix (real or single)

## 📤 Argument de sortie

- T - scalar: angle.

## 📄 Description


<b>T = subspace(A, B)</b> calcule l'angle entre deux sous-espaces spécifiés par les colonnes de <b>A</b> et <b>B</b>.

## 💡 Exemple



```matlab
M = [1   1   1   1   1   1   1   1;
1  -1   1  -1   1  -1   1  -1;
1   1  -1  -1   1   1  -1  -1;
1  -1  -1   1   1  -1  -1   1;
1   1   1   1  -1  -1  -1  -1;
1  -1   1  -1  -1   1  -1   1;
1   1  -1  -1  -1  -1   1   1;
1  -1  -1   1  -1   1   1  -1];
A = M(:, 2:4);
B = M(:, 5:8);
R = subspace(A, B)

```


## 🔗 Voir aussi

[orth](../../linear_algebra/1_linear_systems/orth.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
