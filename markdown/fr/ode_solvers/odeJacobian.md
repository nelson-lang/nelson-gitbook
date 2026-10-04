# odeJacobian

Description de jacobien pour solveurs EDO.

## 📝 Syntaxe

- J = odeJacobian(value)
- J = odeJacobian(value, nom, valeur)
- J = odeJacobian(nom, valeur)

## 📄 Description

<b>odeJacobian</b> stocke une fonction, une matrice ou un motif de differences finies pour le flux objet EDO.

| Objet           | Role                                                               | Utilise par                                                |
| --------------- | ------------------------------------------------------------------ | ---------------------------------------------------------- |
| **odeJacobian** | Stocke une definition reutilisable pour le workflow objet **ode**. | La propriete correspondante de **ode** et **solve**.       |
| Validation      | Verifie les noms et formes supportes au moment de la construction. | Les tests et erreurs restent explicites avant integration. |

Les proprietes publiques sont <b>Jacobian</b> et <b>SparsityPattern</b>. L'alias compatible <b>Pattern</b> est accepte par le constructeur. L'indication compatible <b>Constant</b> est aussi acceptee et transmise aux options du solveur.

## 💡 Exemples

```matlab
J = odeJacobian(-1)
```

Motif de jacobien pour le flux objet.

```matlab
J = odeJacobian('SparsityPattern', [1 0; 0 1]);
problem = ode('ODEFcn', @(t,y) [-10*y(1); -20*y(2)], 'InitialValue', [1; 2], 'Jacobian', J);
result = solve(problem, 0, 0.2)
```

Indication de jacobien constant.

```matlab
J = odeJacobian(-25, 'Constant', 'on');
problem = ode('ODEFcn', @(t,y) -25*y, 'InitialValue', 1, 'Jacobian', J);
result = solve(problem, 0, 0.2)
```

## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [odeset](../ode_solvers/odeset.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
