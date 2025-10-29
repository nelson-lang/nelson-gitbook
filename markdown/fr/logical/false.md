# false

Valeur logique false.

## 📝 Syntaxe

- false
- l = false(n)
- l = false(sz)
- l = false(n, m, ..., k)
- l = false(n, m, 'like', sp)

## 📥 Argument d'entrée

- n - une valeur entière.
- sz - un vecteur de taille.
- n, m, ..., k - un tableau n par m par ... par k indiquant la taille.
- sp - une structure creuse (sparse) ou un tableau.

## 📤 Argument de sortie

- l - une valeur logique : false.

## 📄 Description

<b>false</b> construit une matrice de valeurs false.

## 💡 Exemple

```matlab
false
false(4)
false(4, 1, 4)
L = logical(sparse(1, 2))
L2 = false(3,'like', L);
```

## 🔗 Voir aussi

[true](../logical/true.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
