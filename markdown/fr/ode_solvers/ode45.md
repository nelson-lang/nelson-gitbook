# ode45

Solveur EDO non raide.

## 📝 Syntaxe

- [t, y] = ode45(odefun, tspan, y0)
- sol = ode45(odefun, tspan, y0, options)

## 📄 Description

<b>ode45</b> resout un probleme a valeur initiale avec des pas explicites adaptatifs.

| Element           | Details                                                                                                             |
| ----------------- | ------------------------------------------------------------------------------------------------------------------- |
| Forme du probleme | **y' = f(t,y)**, avec valeur initiale **y0**.                                                                       |
| Entrees           | **odefun**, **tspan**, **y0**, et options creees avec **odeset**.                                                   |
| Sorties           | **[t,y]** pour les tableaux ou **sol** pour une structure compatible avec **deval** et **odextend**.                |
| Evenements        | Les options **Events** renseignent **te**, **ye** et **ie** ou les champs **xe**, **ye** et **ie** de la structure. |

## 💡 Exemple

Decroissance exponentielle.

```matlab
[t, y] = ode45(@(t,y) -y, [0 1], 1)
```

## 🔗 Voir aussi

[odeset](../ode_solvers/odeset.md), [deval](../ode_solvers/deval.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
