# odextend

Prolonger une solution EDO.

## 📝 Syntaxe

- solout = odextend(sol, odefun, tfinal)
- solout = odextend(sol, odefun, tfinal, options)

## 📄 Description


<b>odextend</b> continue une solution depuis son dernier point calcule jusqu'a un nouveau temps final. 

| Element | Details | 
| --- | --- | 
| Solution en entree | Structure **sol** existante retournee par un solveur ODE. | 
| Continuation | Etend la solution vers un nouveau temps final avec la meme definition du probleme. | 
| Options | Les options peuvent ajuster tolerances, evenements, callbacks de sortie et limites de pas. | 
| Resultat | Nouvelle structure **sol** compatible avec **deval**. | 

 

Quand <b>odefun</b> est vide, la fonction stockee dans la solution d'entree est reutilisee. Si le temps final demande est deja couvert par l'intervalle de solution, la solution d'entree est retournee. Prolonger dans la direction opposee est une erreur. Les champs d'evenements sont conserves et prolonges quand des donnees d'evenements existent. Les solutions sans donnees d'evenements ne recoivent pas de champs <b>xe</b>, <b>ye</b> ou <b>ie</b> vides.

## 💡 Exemple


```matlab
sol = ode45(@(t,y) -y, [0 0.5], 1);
sol = odextend(sol, [], 1)
```


## 🔗 Voir aussi

[deval](../ode_solvers/deval.md), [odeset](../ode_solvers/odeset.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
