# counterFreeRunning


<p align="center">
<img src="counterFreeRunning.svg" width="72"/>
</p>
Compteur incremental libre, replie modulo 2^NumBits.

## 📝 Syntaxe

- Type de bloc : counterFreeRunning

## 📥 Argument d'entrée

- ports d entree - Aucun port d entree (ce bloc n en a aucun).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Compteur incremental libre, replie modulo 2^NumBits. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Source | 
| Type | <code>counterFreeRunning</code> | 
| Libelle | Counter Free-Running | 

  

<b>Description</b> 

Un compteur incremental libre sans entree. Demarre a 0 et s'incremente de 1 a chaque pas d'echantillonnage, repliant a 0 apres 2^<code>NumBits</code> - 1 (arithmetique modulo non signee). Le compte courant est emis avant l'increment du pas, donc le premier echantillon vaut 0. 

<b>Ports</b> 

Ce bloc n'a aucun port d'entree. 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>NumBits</code> | 16 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | counterFreeRunning | 
| Famille | Source | 
| Taille rendue | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Etat interne ou historique | oui | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- OUTPUT : out = count. UPDATE : count = (count + 1) mod 2^NumBits. 

<b>Equation ou regle</b> 
$$y_k = k \bmod 2^{\text{NumBits}}$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/counterFreeRunning.cpp`


## 💡 Exemple

Un compteur 2 bits parcourt 0,1,2,3,0,1,...

```matlab
d.blocks={ struct('id','c','type','counterFreeRunning','inputs',0,'outputs',1,'params',struct('NumBits',2)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[counterLimited](../../nflow_blocks/source/counterLimited.md), [repeatingSequenceStair](../../nflow_blocks/source/repeatingSequenceStair.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
