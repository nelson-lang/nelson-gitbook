# true

Valeur logique true.

## 📝 Syntaxe

- true
- l = true(n)
- l = true(sz)
- l = true(size(A))
- l = true(n, m, ..., k)
- l = true(n, m, 'like', sp)

## 📥 Argument d'entrée

- n - une valeur entière.
- sz - un vecteur ligne de dimensions, comme le résultat de <b>size</b>.
- A - un tableau dont la taille est utilisée pour créer la sortie.
- n, m, ..., k - un tableau n par m par ... par k indiquant la taille.
- sp - une structure creuse (sparse) ou un tableau.

## 📤 Argument de sortie

- l - une valeur logique : true.

## 📄 Description

<b>true</b> construit un tableau de valeurs logiques true.

## 💡 Exemple

```matlab
true
true(4)
true(4, 1, 4)
A = zeros(2, 3);
T = true(size(A))
L = logical(sparse(1, 2))
L2 = true(3,'like', L);
```

## 🔗 Voir aussi

[false](../logical/false.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
