# optimexpr

Créer une expression d'optimization.

## 📝 Syntaxe

- expr = optimexpr()
- expr = optimexpr(value)

## 📥 Argument d'entrée

- value - valeur numérique ou expression de départ.

## 📤 Argument de sortie

- expr - objet expression d'optimization.

## 📄 Description

<b>optimexpr</b> crée un objet expression combinable avec des variables d'optimization par les opérateurs arithmétiques.

## Fonction(s) utilisée(s)

    optimvar
    evaluate

## 📚 Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Exemple

```matlab
x = optimvar('x');
expr = optimexpr(3) + x^2;
value = evaluate(expr, struct('x', 2))

```

## 🔗 Voir aussi

[evaluate](../optimization/evaluate.md), [optimconstr](../optimization/optimconstr.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
