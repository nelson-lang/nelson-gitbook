# odeplot

Fonction de sortie EDO pour le trace de solution.

## 📝 Syntaxe

- status = odeplot(t, y, flag)

## 📄 Description

<b>odeplot</b> trace les composantes de la solution en fonction du temps pendant l'execution d'un solveur EDO.

| Flag       | Moment d'appel                            | Valeur retournee                                                           |
| ---------- | ----------------------------------------- | -------------------------------------------------------------------------- |
| **'init'** | Avant le debut des sorties d'integration. | **0** ou **false** pour continuer.                                         |
| **''**     | Aux points de sortie acceptes.            | **0** ou **false** pour continuer; **1** ou **true** arrete l'integration. |
| **'done'** | Apres la fin de l'integration.            | La valeur retournee est ignoree.                                           |

La fonction accepte le protocole de callback de sortie avec <b>flag</b> egal a <b>'init'</b>, <b>''</b> ou <b>'done'</b>. Elle retourne <b>0</b> pour poursuivre l'integration.

## 🔗 Voir aussi

[odeset](../ode_solvers/odeset.md), [odephas2](../ode_solvers/odephas2.md), [odephas3](../ode_solvers/odephas3.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
