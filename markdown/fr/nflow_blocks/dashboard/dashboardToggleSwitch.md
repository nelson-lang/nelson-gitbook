# dashboardToggleSwitch


<p align="center">
<img src="dashboardToggleSwitch.svg" width="72"/>
</p>
Bascule un parametre lie entre deux etats via un interrupteur a levier.

## 📝 Syntaxe

- Block type: dashboardToggleSwitch

## 📄 Description


Bascule un parametre lie entre deux etats via un interrupteur a levier. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardToggleSwitch</code> | 
| Libelle | Toggle Switch | 

  

<b>Description</b> 

Le bloc Toggle Switch bascule le parametre lie entre ses deux etats configures. 

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
| <code>States</code> | [{"Value": 0, "Label": "Off"}, {"Value": 1, "Label": "On"}] | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>States</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dashboardToggleSwitch | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 55 x 100 | 
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

[dashboardCallbackButton](../../nflow_blocks/dashboard/dashboardCallbackButton.md), [dashboardCheckBox](../../nflow_blocks/dashboard/dashboardCheckBox.md), [dashboardComboBox](../../nflow_blocks/dashboard/dashboardComboBox.md), [dashboardScope](../../nflow_blocks/dashboard/dashboardScope.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
