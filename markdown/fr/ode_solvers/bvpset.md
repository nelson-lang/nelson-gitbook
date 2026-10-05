# bvpset

Cree ou met a jour des options BVP.

## 📝 Syntaxe

- options = bvpset()
- options = bvpset(name, value)

## 📄 Description


<b>bvpset</b> cree des options pour les solveurs de problemes aux limites. 

| Option | Role | 
| --- | --- | 
| **RelTol**, **AbsTol** | Tolerances de resolution. | 
| **NMax** | Nombre maximal de points de maillage. | 
| **FJacobian**, **BCJacobian** | Jacobiens analytiques pour l equation et les conditions aux limites. | 
| **Vectorized**, **SingularTerm**, **Stats** | Vectorisation, terme singulier et affichage des statistiques. | 

 

Les noms pris en charge incluent <b>AbsTol</b>, <b>RelTol</b>, <b>NMax</b>, <b>Stats</b>, <b>Vectorized</b>, <b>FJacobian</b>, <b>BCJacobian</b> et <b>SingularTerm</b>. <b>FJacobian</b> et <b>BCJacobian</b> sont utilises ensemble par l'iteration de Newton quand les deux callbacks sont presents.

## 💡 Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```


## 🔗 Voir aussi

[bvpget](../ode_solvers/bvpget.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
