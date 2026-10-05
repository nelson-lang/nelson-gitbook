# stopSimulation


<p align="center">
<img src="stopSimulation.svg" width="72"/>
</p>
Termine le run a la fin du pas ou son entree devient non nulle pour la premiere fois.

## 📝 Syntaxe

- Type de bloc : stopSimulation

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - Aucun port de sortie (ce bloc n en possede aucun).

## 📄 Description


Termine le run a la fin du pas ou son entree devient non nulle pour la premiere fois. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Puits | 
| Type | <code>stopSimulation</code> | 
| Libelle | Stop | 

  

<b>Description</b> 

Arrete la simulation a la fin du pas ou son entree devient non nulle pour la premiere fois, en positionnant <code>SimCtx::stopRequested</code> (respecte par la boucle a pas fixe et par la boucle solveur). Typiquement pilote par un bloc de comparaison ou de test d'intervalle pour arreter sur condition. Une entree, aucune sortie ; natif seulement. 

Enregistre en phase AFTER\_STEP afin d'observer les sorties stabilisees de chaque pas avant de decider d'arreter. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | gauche | x=0, y=20 | 

 

Ce bloc n'a aucun port de sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| *none* |  | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | stopSimulation | 
| Famille | Puits | 
| Taille rendue | 40 x 40 | 
| Phases | AFTER\_STEP | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- AFTER\_STEP : si un element d'entree != 0, positionner stopRequested = true. 

<b>Capacites etendues</b> 

Execution native seulement (ce bloc n'est pas genere en code). 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/sink/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/sink/stopSimulation.cpp`


## 💡 Exemple

Arreter le run des qu'une source echelon s'active a t = 0.45.

```matlab
d.blocks={ struct('id','s','type','step','inputs',0,'outputs',1,'params',struct('Time',0.45)), struct('id','stop','type','stopSimulation','inputs',1,'outputs',0,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','stop','fromIndex',0,'toIndex',0), struct('from','s','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[compareToConstant](../../nflow_blocks/logic/compareToConstant.md), [intervalTest](../../nflow_blocks/logic/intervalTest.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
