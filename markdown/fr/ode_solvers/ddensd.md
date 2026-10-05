# ddensd

Resout des equations a retard neutres.

## 📝 Syntaxe

- sol = ddensd(ddefun, dely, delyp, history, tspan)
- sol = ddensd(ddefun, dely, delyp, history, tspan, options)

## 📄 Description


<b>ddensd</b> resout des equations a retard neutres. La fonction derivee est appelee comme <b>f(t,y,z,zp)</b>, avec les etats et pentes retardes. 

| Element | Details | 
| --- | --- | 
| Type de retard | Retards neutres avec etats et pentes retardes. | 
| Callback | **f(t,y,z,zp)** | 
| Historique | Scalaire, vecteur, structure de solution ou fonction selon la forme appelee. | 
| Solution | Structure **sol** avec **x**, **y**, **yp**, **solver** et interpolation par **deval**. | 



## 💡 Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```


## 🔗 Voir aussi

[dde23](../ode_solvers/dde23.md), [ddesd](../ode_solvers/ddesd.md), [ddeset](../ode_solvers/ddeset.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
