# logicalOperator


<p align="center">
<img src="logicalOperator.svg" width="72"/>
</p>
AND/OR/NAND/NOR/XOR/XNOR/NOT logique configurable des entrees.

## 📝 Syntaxe

- Type de bloc : logicalOperator

## 📥 Argument d'entrée

- ports d entree - 2 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


AND/OR/NAND/NOR/XOR/XNOR/NOT logique configurable des entrees. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Logique / Operations sur les bits | 
| Type | <code>logicalOperator</code> | 
| Libelle | Logical Operator | 

  

<b>Description</b> 

Un bloc logique unique et parametrable : <code>Operator</code> choisit AND, OR, NAND, NOR, XOR, XNOR ou NOT. Il reduit les N entrees element par element (une entree non nulle vaut vrai) ; NOT prend une seule entree et l'inverse. Complete les blocs fixes and / or / xor / not par un bloc configurable. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | gauche | x=0, y=26 | 
| Port\_2 | Signal numerique lu par le bloc. | gauche | x=0, y=54 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>Operator</code> | AND | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | logicalOperator | 
| Famille | Logique / Operations sur les bits | 
| Taille rendue | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- ALGEBRAIC : reduit les N entrees booleennes avec l'operateur choisi ; sortie booleenne (0/1). 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/logicalOperator.cpp`


## 💡 Exemple

NON-ET de deux constantes : NAND(1, 1) = 0.

```matlab
d.blocks={ struct('id','a','type','constant','inputs',0,'outputs',1,'params',struct('Value',1)), struct('id','b','type','constant','inputs',0,'outputs',1,'params',struct('Value',1)), struct('id','g','type','logicalOperator','inputs',2,'outputs',1,'params',struct('Operator','NAND')), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','a','to','g','fromIndex',0,'toIndex',0), struct('from','b','to','g','fromIndex',0,'toIndex',1), struct('from','g','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[and](../../nflow_blocks/logic/and.md), [or](../../nflow_blocks/logic/or.md), [relationalOperator](../../nflow_blocks/logic/relationalOperator.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
