# evaluate

Évaluer une expression d'optimization.

## 📝 Syntaxe

- value = evaluate(expr, values)

## 📥 Argument d'entrée

- expr - expression ou variable d'optimization.
- values - structure contenant les valeurs des variables.

## 📤 Argument de sortie

- value - valeur numérique évaluée.

## 📄 Description


<b>evaluate</b> calcule la valeur numérique d'une expression problem-based pour une affectation donnée des variables.

## Fonction(s) utilisée(s)


    optimexpr
    optimvar
  

## 📚 Bibliographie

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

## 💡 Exemple



```matlab
x = optimvar('x');
expr = (x - 4)^2;
value = evaluate(expr, struct('x', 3))

```


## 🔗 Voir aussi

[optimexpr](../optimization/optimexpr.md), [show](../optimization/show.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
