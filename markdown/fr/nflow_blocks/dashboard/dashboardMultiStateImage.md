# dashboardMultiStateImage


<p align="center">
<img src="dashboardMultiStateImage.svg" width="72"/>
</p>
Affiche une image parmi plusieurs selon un signal lie.

## 📝 Syntaxe

- Block type: dashboardMultiStateImage

## 📄 Description


Affiche une image parmi plusieurs selon un signal lie. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardMultiStateImage</code> | 
| Libelle | MultiStateImage | 

  

<b>Description</b> 

Le bloc MultiStateImage affiche une image parmi un ensemble configure, choisie selon la valeur du signal lie. Les valeurs sans etat correspondant utilisent l image par defaut. 

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
| <code>States</code> | [{"State": 0, "Size": [0, 0], "Image": "", "Thumbnail": ""}] | 
| <code>DefaultImage</code> | {"Size": [0, 0], "Image": "", "Thumbnail": ""} | 
| <code>ScaleMode</code> | Fill with fixed aspect ratio | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>States</code> 
- <code>DefaultImage</code> 
- <code>ScaleMode</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dashboardMultiStateImage | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 190 x 180 | 
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

[dashboardPushButton](../../nflow_blocks/dashboard/dashboardPushButton.md), [dashboardQuarterGauge](../../nflow_blocks/dashboard/dashboardQuarterGauge.md), [dashboardRadioButton](../../nflow_blocks/dashboard/dashboardRadioButton.md), [dashboardRockerSwitch](../../nflow_blocks/dashboard/dashboardRockerSwitch.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
