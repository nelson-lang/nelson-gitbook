# dashboardLinearGauge


<p align="center">
<img src="dashboardLinearGauge.svg" width="72"/>
</p>
Affiche un signal lie sur une echelle lineaire droite.

## 📝 Syntaxe

- Block type: dashboardLinearGauge

## 📄 Description


Affiche un signal lie sur une echelle lineaire droite. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardLinearGauge</code> | 
| Libelle | Linear Gauge | 

  

<b>Description</b> 

Le bloc Linear Gauge affiche la valeur du signal lie sous forme d un curseur se deplacant le long d une echelle lineaire droite entre les limites configurees. 

<b>Ports</b> 

<b>Entree(s)</b> 

Ce bloc ne declare aucune entree. 

<b>Sortie(s)</b> 

Ce bloc ne declare aucune sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>LabelPosition</code> | Top | 
| <code>Binding</code> |  | 
| <code>ShowInitialText</code> | on | 
| <code>ScaleColors</code> | [] | 
| <code>Limits</code> | [0, -1, 100] | 
| <code>FontColor</code> | [0, 0, 0] | 
| <code>Opacity</code> | 1 | 
| <code>ScaleDirection</code> | Clockwise | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>ScaleColors</code> 
- <code>Limits</code> 
- <code>FontColor</code> 
- <code>Opacity</code> 
- <code>ScaleDirection</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dashboardLinearGauge | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 210 x 90 | 
| Phases | INIT, AFTER\_STEP | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT reinitialise le widget a son affichage initial. 
- AFTER\_STEP echantillonne le signal lie et rafraichit l affichage. 
- Le bloc ne fait que visualiser le signal; il ne declare aucun port de signal en entree ou sortie. 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/dashboard/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/DashboardHandlers.cpp`



## 🔗 Voir aussi

[dashboardMultiStateImage](../../nflow_blocks/dashboard/dashboardMultiStateImage.md), [dashboardPushButton](../../nflow_blocks/dashboard/dashboardPushButton.md), [dashboardQuarterGauge](../../nflow_blocks/dashboard/dashboardQuarterGauge.md), [dashboardRadioButton](../../nflow_blocks/dashboard/dashboardRadioButton.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
