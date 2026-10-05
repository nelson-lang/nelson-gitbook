# counterLimited


<p align="center">
<img src="counterLimited.svg" width="72"/>
</p>
Compteur incremental qui revient a 0 des qu il atteint UpperLimit.

## 📝 Syntaxe

- Type de bloc : counterLimited

## 📥 Argument d'entrée

- ports d entree - Aucun port d entree (ce bloc n en a aucun).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Compteur incremental qui revient a 0 des qu il atteint UpperLimit. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Source | 
| Type | <code>counterLimited</code> | 
| Libelle | Counter Limited | 

  

<b>Description</b> 

Un compteur incremental sans entree qui se replie a un plafond configurable. Demarre a 0 et s'incremente de 1 a chaque pas ; une fois <code>UpperLimit</code> atteint, il revient a 0 au pas suivant, donc la sortie balaie 0, 1, ..., UpperLimit, 0, ... 

<b>Ports</b> 

Ce bloc n'a aucun port d'entree. 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>UpperLimit</code> | 7 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | counterLimited | 
| Famille | Source | 
| Taille rendue | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Etat interne ou historique | oui | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- OUTPUT : out = count. UPDATE : count = (count >= UpperLimit) ? 0 : count + 1. 

<b>Equation ou regle</b> 
$$y_k = k \bmod (\text{UpperLimit}+1)$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/counterLimited.cpp`


## 💡 Exemple

Un compteur limite a 3 parcourt 0,1,2,3,0,1,...

```matlab
d.blocks={ struct('id','c','type','counterLimited','inputs',0,'outputs',1,'params',struct('UpperLimit',3)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[counterFreeRunning](../../nflow_blocks/source/counterFreeRunning.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
