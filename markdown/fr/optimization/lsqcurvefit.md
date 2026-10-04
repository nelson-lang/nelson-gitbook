# lsqcurvefit

Ajustement de courbe par moindres carres.

## 📝 Syntaxe

- x = lsqcurvefit(fun, x0, xdata, ydata)
- x = lsqcurvefit(fun, x0, xdata, ydata, lb, ub, options)

## 📥 Argument d'entrée

- fun - Fonction modele.
- x0 - Point initial.
- xdata - Donnees d'entree du modele.
- ydata - Donnees observees.

## 📤 Argument de sortie

- x - Parametres ajustes.

## 📄 Description

<b>lsqcurvefit</b> minimise <b>fun(x, xdata) - ydata</b> avec <b>lsqnonlin</b>.

## 💡 Exemple

```matlab
x = lsqcurvefit(@(p,t) p(1) * exp(p(2) * t), [1; 0], (0:3).', exp((0:3).'))
```

## 🔗 Voir aussi

[lsqnonlin](../optimization/lsqnonlin.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
