# shiftArithmetic


<p align="center">
<img src="shiftArithmetic.svg" width="72"/>
</p>
Decalage arithmetique de bits a gauche/droite de ShiftNumber (64 bits signes).

## 📝 Syntaxe

- Type de bloc : shiftArithmetic

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Decalage arithmetique de bits a gauche/droite de ShiftNumber (64 bits signes). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Logique / Operations sur les bits | 
| Type | <code>shiftArithmetic</code> | 
| Libelle | Shift Arithmetic | 

  

<b>Description</b> 

Decalage arithmetique de bits de l'entree entiere. <code>ShiftDirection</code> = "Left" multiplie par 2^ShiftNumber ; "Right" effectue un decalage arithmetique a droite preservant le signe (division par 2^ShiftNumber, arrondi vers moins l'infini). Les valeurs sont traitees comme entiers signes 64 bits ; le decalage a gauche passe par de l'arithmetique non signee pour rester bien defini. Element par element. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | gauche | x=0, y=40 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=90, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>ShiftDirection</code> | Left | 
| <code>ShiftNumber</code> | 1 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | shiftArithmetic | 
| Famille | Logique / Operations sur les bits | 
| Taille rendue | 90 x 80 | 
| Phases | ALGEBRAIC | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- ALGEBRAIC : Left -> out = x << ShiftNumber ; Right -> out = x >> ShiftNumber (arithmetique). 

<b>Equation ou regle</b> 
$$y = u \cdot 2^{\pm \text{ShiftNumber}}$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/shiftArithmetic.cpp`


## 💡 Exemple

Decaler 5 de 3 bits a gauche donne 40.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',5)), struct('id','s','type','shiftArithmetic','inputs',1,'outputs',1,'params',struct('ShiftDirection','Left','ShiftNumber',3)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','s','fromIndex',0,'toIndex',0), struct('from','s','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[bitwiseOperator](../../nflow_blocks/logic/bitwiseOperator.md), [extractBits](../../nflow_blocks/logic/extractBits.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
