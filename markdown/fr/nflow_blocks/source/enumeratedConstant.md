# enumeratedConstant


<p align="center">
<img src="enumeratedConstant.svg" width="72"/>
</p>
Sort une valeur d enumeration fixe (EnumClass la documente, Value est le nombre).

## 📝 Syntaxe

- Type de bloc : enumeratedConstant

## 📥 Argument d'entrée

- ports d entree - Aucun port d entree (ce bloc n en a aucun).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Sort une valeur d enumeration fixe (EnumClass la documente, Value est le nombre). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Source | 
| Type | <code>enumeratedConstant</code> | 
| Libelle | Enumerated Constant | 

  

<b>Description</b> 

Sort une valeur d'enumeration fixe. <code>EnumClass</code> nomme l'enumeration (documentation seulement) et <code>Value</code> est la valeur numerique sous-jacente du membre choisi. Se comporte comme une constante porteuse d'un sens enumere ; sortie scalaire. 

<b>Ports</b> 

Ce bloc n'a aucun port d'entree. 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=90, y=25 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>EnumClass</code> |  | 
| <code>Value</code> | 0 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | enumeratedConstant | 
| Famille | Source | 
| Taille rendue | 90 x 50 | 
| Phases | OUTPUT | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- OUTPUT : out = Value (constante, a chaque pas). 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/enumeratedConstant.cpp`


## 💡 Exemple

EnumClass 'Color', Value 7 sort 7 a chaque pas.

```matlab
d.blocks={ struct('id','e','type','enumeratedConstant','inputs',0,'outputs',1,'params',struct('EnumClass','Color','Value',7)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','e','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[constant](../../nflow_blocks/source/constant.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
