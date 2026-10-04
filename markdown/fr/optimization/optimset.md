# optimset

Créer ou modifier des structures d'options d'optimization.

## 📝 Syntaxe

- options = optimset()
- options = optimset(name, value)
- options = optimset(oldopts, name, value)

## 📥 Argument d'entrée

- name, value - paires nom-valeur d'options.
- oldopts - structure d'options existante.

## 📤 Argument de sortie

- options - structure d'options.

## 📄 Description

<b>optimset</b> crée une structure acceptée par les solveurs directs du module. Les noms d'options acceptent les abréviations non ambiguës.

## 📚 Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Exemple

```matlab
opts = optimset('TolX', 1e-8, 'Display', 'off')
tol = optimget(opts, 'TolX')

```

## 🔗 Voir aussi

[optimget](../optimization/optimget.md), [optimoptions](../optimization/optimoptions.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
