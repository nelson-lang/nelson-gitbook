# linsolve

Résout un système d'équations linéaires.

## 📝 Syntaxe

- X = linsolve(A, B)
- X = linsolve(A, B, opts)
- [X, r] = linsolve(...)

## 📥 Argument d'entrée

- A - une matrice de coefficients.
- B - le second membre.
- opts - une structure d'options ; le champ <b>TRANSA</b> résout <b>A'\*X = B</b>.

## 📤 Argument de sortie

- X - la solution de <b>A\*X = B</b>.
- r - l'estimation du conditionnement inverse de <b>A</b>.

## 📄 Description


<b>X = linsolve(A, B)</b> résout le système linéaire <b>A\*X = B</b>. 

<b>X = linsolve(A, B, opts)</b> utilise les options de <b>opts</b> ; définissez <b>opts.TRANSA = true</b> pour résoudre <b>A'\*X = B</b>.

## 💡 Exemple



```matlab
X = linsolve([2 0; 0 4], [6; 8])
```


## 🔗 Voir aussi

[inv](../../linear_algebra/1_linear_systems/inv.md), [rref](../../linear_algebra/1_linear_systems/rref.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
