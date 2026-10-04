# optimoptions

Créer des options de solveur.

## 📝 Syntaxe

- options = optimoptions(solver)
- options = optimoptions(solver, name, value)

## 📥 Argument d'entrée

- solver - nom de solveur, function handle ou problème d'optimization.
- name, value - paires nom-valeur d'options.

## 📤 Argument de sortie

- options - objet d'options du solveur.

## 📄 Description

<b>optimoptions</b> valide les noms d'options pour le solveur choisi et retourne un objet convertible en structure pour les solveurs directs.

## Fonction(s) utilisée(s)

    optimset

## 📚 Bibliographie

P. E. Gill, W. Murray and M. H. Wright, Practical Optimization, Academic Press, 1981.

## 💡 Exemple

```matlab
opts = optimoptions('fsolve', 'TolFun', 1e-8);
[x, fval] = fsolve(@(x) x - 3, 0, opts)

```

## 🔗 Voir aussi

[optimset](../optimization/optimset.md), [optimget](../optimization/optimget.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
