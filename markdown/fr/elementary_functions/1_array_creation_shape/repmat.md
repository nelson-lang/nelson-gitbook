# repmat

Répliquer et paver un tableau.

## 📝 Syntaxe

- R = repmat(A, m)
- R = repmat(A, m, n)
- R = repmat(A, m, n, p …)
- R = repmat(A, [m n])
- R = repmat(A, [m n p …])

## 📥 Argument d'entrée

- A - un tableau.
- m, n, p … - une valeur : entier

## 📤 Argument de sortie

- R - tableau résultant du pavage.

## 📄 Description

<b>repmat</b> répète une matrice ou un tableau à N dimensions.

Si une dimension résultante est nulle, la sortie est vide. Les autres dimensions et la classe de l'entrée sont conservées. Par exemple, repmat(zeros(0, 3), 2, 4) a pour taille [0, 12].

## 💡 Exemples

```matlab
repmat(1:5, 2)
```

```matlab
repmat(1:5, [2 3])
```

```matlab
repmat(1:5, [2 3 4])
```

## 🔗 Voir aussi

[reshape](../../elementary_functions/reshape.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
