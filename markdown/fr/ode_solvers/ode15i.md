# ode15i

Entree de solveur EDO implicite.

## 📝 Syntaxe

- [t, y] = ode15i(odefun, tspan, y0, yp0)

## 📄 Description

<b>ode15i</b> resout les problemes residuels de la forme <b>F(t,y,yp)=0</b>.

| Element           | Details                                                                         |
| ----------------- | ------------------------------------------------------------------------------- |
| Forme du probleme | Residu implicite **F(t,y,yp)=0**.                                               |
| Entrees           | **odefun**, **tspan**, **y0**, **yp0**, et options creees avec **odeset**.      |
| Sorties           | Tableaux **[t,y]** ou structure **sol** avec pentes disponibles pour **deval**. |
| Initialisation    | Utilisez **decic** pour ajuster des conditions initiales coherentes.            |

## 💡 Exemple

```matlab
[t, y] = ode15i(@(t,y,yp) yp + y, [0 1], 1, -1)
```

## 🔗 Voir aussi

[ode15s](../ode_solvers/ode15s.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
