# optimconstr

Créer une contrainte d'optimization.

## 📝 Syntaxe

- c = optimconstr()
- c = optimconstr(lhs, relation, rhs)

## 📥 Argument d'entrée

- lhs, rhs - expressions gauche et droite.
- relation - relation de contrainte : <=, == ou >=.

## 📤 Argument de sortie

- c - objet contrainte d'optimization.

## 📄 Description

<b>optimconstr</b> crée des contraintes utilisées par les problèmes d'optimization. Les opérateurs relationnels sur expressions créent aussi des contraintes.

## Fonction(s) utilisée(s)

    optimproblem
    optimexpr

## 📚 Bibliographie

P. E. Gill, W. Murray and M. H. Wright, Practical Optimization, Academic Press, 1981.

## 💡 Exemple

```matlab
x = optimvar('x');
c = optimconstr(x, '<=', 5)

```

## 🔗 Voir aussi

[optimproblem](../optimization/optimproblem.md), [prob2struct](../optimization/prob2struct.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
