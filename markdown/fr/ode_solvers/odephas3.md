# odephas3

Fonction de sortie EDO pour portrait de phase 3D.

## 📝 Syntaxe

- status = odephas3(t, y, flag)

## 📄 Description


<b>odephas3</b> trace les trois premieres composantes de la solution comme trajectoire de phase en trois dimensions pendant l'execution d'un solveur EDO. 

| Flag | Moment d'appel | Valeur retournee | 
| --- | --- | --- | 
| **'init'** | Avant le debut des sorties d'integration. | **0** ou **false** pour continuer. | 
| **''** | Aux points de sortie acceptes. | **0** ou **false** pour continuer; **1** ou **true** arrete l'integration. | 
| **'done'** | Apres la fin de l'integration. | La valeur retournee est ignoree. | 

 

La fonction accepte le protocole de callback de sortie avec <b>flag</b> egal a <b>'init'</b>, <b>''</b> ou <b>'done'</b>. Elle retourne <b>0</b> pour poursuivre l'integration.


## 🔗 Voir aussi

[odephas2](../ode_solvers/odephas2.md), [odeplot](../ode_solvers/odeplot.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
