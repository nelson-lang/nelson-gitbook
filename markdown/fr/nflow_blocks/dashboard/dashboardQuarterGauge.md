# dashboardQuarterGauge


<p align="center">
<img src="dashboardQuarterGauge.svg" width="72"/>
</p>
Affiche un signal lie sur un cadran en quart de cercle de 90 degres.

## 📝 Syntaxe

- Block type: dashboardQuarterGauge

## 📄 Description


Affiche un signal lie sur un cadran en quart de cercle de 90 degres. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardQuarterGauge</code> | 
| Libelle | Quarter Gauge | 

  

<b>Description</b> 

Le bloc Quarter Gauge affiche la valeur du signal lie sur une echelle en quart de cercle (90 degres) entre les limites configurees. 

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
| Type de bloc | dashboardQuarterGauge | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 140 x 160 | 
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

[dashboardRadioButton](../../nflow_blocks/dashboard/dashboardRadioButton.md), [dashboardRockerSwitch](../../nflow_blocks/dashboard/dashboardRockerSwitch.md), [dashboardRotarySwitch](../../nflow_blocks/dashboard/dashboardRotarySwitch.md), [dashboardSlider](../../nflow_blocks/dashboard/dashboardSlider.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
