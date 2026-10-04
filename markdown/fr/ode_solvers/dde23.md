# dde23

Resout des equations a retard constant.

## 📝 Syntaxe

- sol = dde23(ddefun, delays, history, tspan)
- sol = dde23(ddefun, delays, history, tspan, options)

## 📄 Description

<b>dde23</b> resout des equations a retard ou chaque retard est un lag positif constant. La fonction derivee est appelee comme <b>f(t,y,z)</b>, avec les etats retardes en colonnes de <b>z</b>.

| Element        | Details                                                                                 |
| -------------- | --------------------------------------------------------------------------------------- |
| Type de retard | Retards constants positifs.                                                             |
| Callback       | **f(t,y,z)**                                                                            |
| Historique     | Scalaire, vecteur, structure de solution ou fonction selon la forme appelee.            |
| Solution       | Structure **sol** avec **x**, **y**, **yp**, **solver** et interpolation par **deval**. |

## 💡 Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 Voir aussi

[ddesd](../ode_solvers/ddesd.md), [ddensd](../ode_solvers/ddensd.md), [ddeset](../ode_solvers/ddeset.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
