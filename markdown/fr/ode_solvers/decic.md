# decic

Calcule des conditions initiales coherentes pour les EDO implicites.

## 📝 Syntaxe

- [y0new, yp0new] = decic(odefun, t0, y0, fixed_y0, yp0, fixed_yp0)
- [y0new, yp0new, resnrm] = decic(odefun, t0, y0, fixed_y0, yp0, fixed_yp0, options)

## 📄 Description

<b>decic</b> ajuste les composantes libres de <b>y0</b> et <b>yp0</b> afin que le residu <b>odefun(t0,y0,yp0)</b> soit petit. Les composantes marquees par <b>fixed_y0</b> et <b>fixed_yp0</b> restent fixes.

| Element           | Details                                                         |
| ----------------- | --------------------------------------------------------------- |
| Forme du probleme | Residuel totalement implicite **F(t,y,yp) = 0**.                |
| Composantes fixes | **fixed_y0** et **fixed_yp0** marquent les valeurs a conserver. |
| Sorties           | Conditions initiales coherentes **y0mod** et **yp0mod**.        |
| Utilise avec      | **ode15i** ou un objet **ode** de type totalement implicite.    |

## 💡 Exemple

```matlab
f = @(t,y,yp) yp + y;
[y0, yp0] = decic(f, 0, 1, 1, 0, 0);
[t, y] = ode15i(f, [0 1], y0, yp0)
```

## 🔗 Voir aussi

[ode15i](../ode_solvers/ode15i.md), [odeset](../ode_solvers/odeset.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
