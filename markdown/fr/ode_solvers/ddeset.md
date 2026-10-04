# ddeset

Cree ou met a jour des options DDE.

## 📝 Syntaxe

- options = ddeset()
- options = ddeset(name, value)

## 📄 Description

<b>ddeset</b> cree une structure d'options pour les solveurs d'equations a retard. Elle accepte les options ODE communes ainsi que <b>InitialY</b> et <b>Jumps</b>.

| Option               | Role                                                                                  |
| -------------------- | ------------------------------------------------------------------------------------- |
| **InitialY**         | Valeur d historique initiale utilisee quand un historique structure n est pas fourni. |
| **Jumps**            | Instants de discontinuite connus.                                                     |
| Options EDO communes | Tolerances, pas, evenements et sorties partages avec **odeset**.                      |

## 💡 Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 Voir aussi

[ddeget](../ode_solvers/ddeget.md), [dde23](../ode_solvers/dde23.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
