# repeatingSequenceStair


<p align="center">
<img src="repeatingSequenceStair.svg" width="72"/>
</p>
Escalier periodique : une entree de OutValues par echantillon, en boucle.

## 📝 Syntaxe

- Type de bloc : repeatingSequenceStair

## 📥 Argument d'entrée

- ports d entree - Aucun port d entree (ce bloc n en a aucun).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Escalier periodique : une entree de OutValues par echantillon, en boucle. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Source | 
| Type | <code>repeatingSequenceStair</code> | 
| Libelle | Repeating Sequence Stair | 

  

<b>Description</b> 

Une source en escalier periodique sans entree. Emet une valeur du vecteur <code>OutValues</code> par echantillon, chacune maintenue un pas, et reboucle depuis le debut une fois la fin atteinte. Un vecteur vide sort 0 ; une seule valeur agit comme une constante. 

<b>Ports</b> 

Ce bloc n'a aucun port d'entree. 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>OutValues</code> | [0 1 2 3 2 1] | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | repeatingSequenceStair | 
| Famille | Source | 
| Taille rendue | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Etat interne ou historique | oui | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- OUTPUT : out = OutValues[index]. UPDATE : index = (index + 1) mod N. 

<b>Equation ou regle</b> 
$$y_k = \text{OutValues}[k \bmod N]$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/repeatingSequenceStair.cpp`


## 💡 Exemple

Repeter la sequence 10, 20, 30.

```matlab
d.blocks={ struct('id','r','type','repeatingSequenceStair','inputs',0,'outputs',1,'params',struct('OutValues',[10 20 30])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[repeatingSequenceInterpolated](../../nflow_blocks/source/repeatingSequenceInterpolated.md), [counterLimited](../../nflow_blocks/source/counterLimited.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
