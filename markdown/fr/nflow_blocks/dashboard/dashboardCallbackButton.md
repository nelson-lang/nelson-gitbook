# dashboardCallbackButton


<p align="center">
<img src="dashboardCallbackButton.svg" width="72"/>
</p>
Execute un rappel et ecrit une valeur lorsqu on clique.

## 📝 Syntaxe

- Block type: dashboardCallbackButton

## 📄 Description


Execute un rappel et ecrit une valeur lorsqu on clique. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs tableau de bord | 
| Type | <code>dashboardCallbackButton</code> | 
| Libelle | Callback Button | 

  

<b>Description</b> 

Le bloc Callback Button execute la fonction de rappel configuree lorsqu on clique et peut ecrire une valeur dans le parametre lie. Utile pour declencher des actions scriptees depuis le tableau de bord. 

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
| <code>ShowInitialText</code> | off | 
| <code>ButtonText</code> | Callback Button | 
| <code>ButtonType</code> | Momentary | 
| <code>ClickFcn</code> |  | 
| <code>OnValue</code> | 1 | 
| <code>PressDelay</code> | 500 | 
| <code>PressFcn</code> |  | 
| <code>RepeatInterval</code> | 0 | 
| <code>AutoActivate</code> | true | 
| <code>fixedAspectRatio</code> | off | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>LabelPosition</code> 
- <code>Binding</code> 
- <code>ShowInitialText</code> 
- <code>ButtonText</code> 
- <code>ButtonType</code> 
- <code>ClickFcn</code> 
- <code>OnValue</code> 
- <code>PressDelay</code> 
- <code>PressFcn</code> 
- <code>RepeatInterval</code> 
- <code>AutoActivate</code> 
- <code>fixedAspectRatio</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dashboardCallbackButton | 
| Famille | Blocs tableau de bord | 
| Taille graphique | 110 x 35 | 
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

[dashboardCheckBox](../../nflow_blocks/dashboard/dashboardCheckBox.md), [dashboardComboBox](../../nflow_blocks/dashboard/dashboardComboBox.md), [dashboardScope](../../nflow_blocks/dashboard/dashboardScope.md), [dashboardDisplay](../../nflow_blocks/dashboard/dashboardDisplay.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
