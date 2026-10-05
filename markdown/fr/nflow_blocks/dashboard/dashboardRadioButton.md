# dashboardRadioButton


<p align="center">
<img src="dashboardRadioButton.svg" width="72"/>
</p>
Selectionne une valeur parmi un groupe de boutons radio.

## 📝 Syntaxe

- Block type: dashboardRadioButton

## 📄 Description


Selectionne une valeur parmi un groupe de boutons radio. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardRadioButton</code> | 
| Libelle | Radio Button | 

  

<b>Description</b> 

Le bloc Radio Button presente un groupe d options mutuellement exclusives et ecrit la valeur de l option selectionnee dans le parametre lie. 

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
| <code>ButtonGroupName</code> | Group | 
| <code>States</code> | [{"Value": 0, "Label": "Label1"}, {"Value": 1, "Label": "Label2"}, {"Value": 2, "Label": "Label3"}] | 
| <code>UseEnumeratedDataType</code> | off | 
| <code>EnumeratedDataType</code> |  | 
| <code>Opacity</code> | 1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>ButtonGroupName</code> 
- <code>States</code> 
- <code>UseEnumeratedDataType</code> 
- <code>EnumeratedDataType</code> 
- <code>Opacity</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dashboardRadioButton | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 135 x 115 | 
| Phases | aucune | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Le bloc ne declare aucune phase de simulation; il est pilote par le tableau de bord, pas par le solveur. 
- L interaction utilisateur ecrit la valeur choisie dans le parametre lie avant ou pendant l execution. 
- Le bloc ne declare aucun port de signal en entree ou sortie. 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/dashboard/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/DashboardHandlers.cpp`



## 🔗 Voir aussi

[dashboardRockerSwitch](../../nflow_blocks/dashboard/dashboardRockerSwitch.md), [dashboardRotarySwitch](../../nflow_blocks/dashboard/dashboardRotarySwitch.md), [dashboardSlider](../../nflow_blocks/dashboard/dashboardSlider.md), [dashboardSliderSwitch](../../nflow_blocks/dashboard/dashboardSliderSwitch.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
