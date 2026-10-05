# odeprint

Fonction de sortie EDO pour la console.

## 📝 Syntaxe

- status = odeprint(t, y, flag)

## 📄 Description


<b>odeprint</b> est un callback de sortie pour les solveurs EDO. Il affiche les points de sortie acceptes et retourne <b>0</b> pour poursuivre l'integration. 

| Flag | Moment d'appel | Valeur retournee | 
| --- | --- | --- | 
| **'init'** | Avant le debut des sorties d'integration. | **0** ou **false** pour continuer. | 
| **''** | Aux points de sortie acceptes. | **0** ou **false** pour continuer; **1** ou **true** arrete l'integration. | 
| **'done'** | Apres la fin de l'integration. | La valeur retournee est ignoree. | 




## 🔗 Voir aussi

[odeset](../ode_solvers/odeset.md), [odeplot](../ode_solvers/odeplot.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
