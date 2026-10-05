# odeexamples

Point d'entree des exemples EDO.

## 📝 Syntaxe

- odeexamples()

## 📄 Description


<b>odeexamples</b> ouvre la page d'aide des workflows EDO, qui contient des exemples executables et des tutoriels. 

| Exemple | Objectif | Sortie | 
| --- | --- | --- | 
| ODE de base | Resolution de valeur initiale et sortie dense. | Courbes de solution et valeurs echantillonnees. | 
| Evenements et matrice de masse | Localisation d'evenements, matrices de masse et options solveur. | Points d'evenement et traces diagnostiques. | 
| Fonctionnalites DDE/BVP ajoutees | Equations a retard et problemes aux limites. | Traces et structures de solution. | 

 

Le repertoire <b>ode\_solvers/examples</b> contient aussi des scripts complets pour les evenements et l'interpolation, les equations totalement implicites, les sensibilites avec retard, les workflows DDE/BVP et le preconditionnement creux SUNDIALS optionnel.

## 💡 Exemples

Ouvrir le point d'entree des exemples.

```matlab
odeexamples()
```
Executer l'exemple evenements et interpolation.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/ode_object_event_interpolation_example.m'])
```
Executer l'exemple DDE et BVP.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```
Executer l'exemple SUNDIALS optionnel avec preconditionnement creux.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/ode_sundials_sparse_preconditioner_example.m'])
```


## 🔗 Voir aussi

[workflows EDO](../ode_solvers/1_ode_workflows.md), [ode](../ode_solvers/ode.md), [dde23](../ode_solvers/dde23.md), [bvp4c](../ode_solvers/bvp4c.md), [nelson.ode.options.CVODESStiff](../ode_solvers/nelson.ode.options.CVODESStiff.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
