# tutoriel objet edo

Definir et resoudre des problemes EDO avec des objets.

## 📄 Description

La classe <b>ode</b> stocke une definition de probleme : equation, etat initial, parametres, evenements, matrice de masse, Jacobien et options de solveur.

| Propriete                                         | Role                                                               |
| ------------------------------------------------- | ------------------------------------------------------------------ |
| **ODEFcn**, **InitialValue**                      | Definit l'equation differentielle et l'etat initial.               |
| **Solver**, **SolverOptions**                     | Selectionne la methode d'integration et ses options.               |
| **EventDefinition**, **MassMatrix**, **Jacobian** | Ajoute evenements, matrice de masse ou jacobien.                   |
| **Sensitivity**, **DelayDefinition**              | Ajoute sensibilites ou retards quand le workflow choisi le permet. |

Appelez <b>solve</b> pour obtenir un objet resultat, ou <b>solutionFcn</b> pour obtenir une fonction d'interpolation et l'objet de resultat.

## 💡 Exemples

Creer un objet probleme reutilisable.

```matlab
problem = ode('ODEFcn', @(t,y,rate) -rate * y, ...
  'InitialValue', 1, 'Parameters', {2});
result = solve(problem, 0, 1)
```

Utiliser solutionFcn pour interpoler.

```matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
[f, result] = solutionFcn(problem, 0, 1);
f(0.5)
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
