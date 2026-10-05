# odephas2

Fonction de sortie EDO pour portrait de phase 2D.

## 📝 Syntaxe

- status = odephas2(t, y, flag)

## 📄 Description


<b>odephas2</b> trace la deuxieme composante de la solution en fonction de la premiere pendant l'execution d'un solveur EDO. 

| Flag | Moment d'appel | Valeur retournee | 
| --- | --- | --- | 
| **'init'** | Avant le debut des sorties d'integration. | **0** ou **false** pour continuer. | 
| **''** | Aux points de sortie acceptes. | **0** ou **false** pour continuer; **1** ou **true** arrete l'integration. | 
| **'done'** | Apres la fin de l'integration. | La valeur retournee est ignoree. | 

 

La fonction accepte le protocole de callback de sortie avec <b>flag</b> egal a <b>'init'</b>, <b>''</b> ou <b>'done'</b>. Elle retourne <b>0</b> pour poursuivre l'integration.


## 🔗 Voir aussi

[odephas3](../ode_solvers/odephas3.md), [odeplot](../ode_solvers/odeplot.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
