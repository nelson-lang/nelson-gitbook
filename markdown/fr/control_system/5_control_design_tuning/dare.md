# dare

Solution de l'équation de Riccati algébrique en temps discret.

## 📝 Syntaxe

- [X, L, G] = dare(A, B, Q)
- [X, L, G] = dare(A, B, Q, R, S, E)

## 📥 Argument d'entrée

- A - Matrice représentant l'état avec dimensions n x n, où n correspond au nombre d'états.
- B - Matrice représentant le contrôle avec dimensions n x p, où p est le nombre d'entrées.
- Q - Matrice décrivant le coût associé à l'état, ayant dimensions n x n, où n est le nombre d'états.
- R - Matrice représentant le coût associé au contrôle, avec dimensions p x p, où p est le nombre d'entrées.
- S - Matrice optionnellement réelle avec dimensions n x p.
- E - Matrice avec dimensions n x n qui sert de matrice descripteur.

## 📤 Argument de sortie

- X - solution stabilisée pour l'équation de Riccati en temps discret de dimension n x n.
- L - Vecteur des pôles en boucle fermée.
- G - Matrice de gain.

## 📄 Description


La fonction <b>dare(A, B, Q)</b> calcule la solution exclusive, notée <b>X</b>, pour l'équation de Riccati algébrique en temps discret avec les matrices <b>A</b>, <b>B</b> et <b>Q</b>, et fournit également les matrices supplémentaires <b>L</b> et <b>G</b>.

## 💡 Exemple



```matlab
a = [-3 2;1 1];
b = [0 ; 1];
c = [1 -1];
r = 3;
[x, l, g] = dare(a, b, c'*c, r)

```


## 🔗 Voir aussi

[slicot_sb02od](../../slicot/slicot_sb02od.md), [slicot_sg02ad](../../slicot/slicot_sg02ad.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

SLICOT Documentation
-->
