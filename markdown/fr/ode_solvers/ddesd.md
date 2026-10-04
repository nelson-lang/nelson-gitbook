# ddesd

Resout des equations a temps retardes dependants de l'etat.

## 📝 Syntaxe

- sol = ddesd(ddefun, delays, history, tspan)
- sol = ddesd(ddefun, delays, history, tspan, options)

## 📄 Description

<b>ddesd</b> resout des equations a retard ou <b>delays(t,y)</b> retourne des temps retardes. Les vecteurs constants sont interpretes comme des lags positifs.

| Element        | Details                                                                                 |
| -------------- | --------------------------------------------------------------------------------------- |
| Type de retard | Temps retardes dependants de **t** et **y**.                                            |
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

[dde23](../ode_solvers/dde23.md), [ddensd](../ode_solvers/ddensd.md), [deval](../ode_solvers/deval.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
