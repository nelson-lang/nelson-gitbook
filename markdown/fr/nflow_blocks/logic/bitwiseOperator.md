# bitwiseOperator


<p align="center">
<img src="bitwiseOperator.svg" width="72"/>
</p>
AND/OR/XOR/NAND/NOR/NOT bit-a-bit de l entree avec un BitMask constant.

## 📝 Syntaxe

- Type de bloc : bitwiseOperator

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


AND/OR/XOR/NAND/NOR/NOT bit-a-bit de l entree avec un BitMask constant. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Logique / Operations sur les bits | 
| Type | <code>bitwiseOperator</code> | 
| Libelle | Bitwise Operator | 

  

<b>Description</b> 

Reinterprete l'entree (entiere) comme un entier non signe sur <code>NumBits</code> bits et applique l'<code>Operation</code> bit-a-bit choisie avec le <code>BitMask</code> constant. NOT ignore le masque. Le resultat est re-masque sur <code>NumBits</code> bits et renvoye en double. Element par element. 

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
| <code>Operation</code> | AND | 
| <code>BitMask</code> | 0 | 
| <code>NumBits</code> | 32 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | bitwiseOperator | 
| Famille | Logique / Operations sur les bits | 
| Taille rendue | 90 x 80 | 
| Phases | ALGEBRAIC | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- ALGEBRAIC : x = (uint)round(u) & fullmask ; out = op(x, BitMask) & fullmask, avec fullmask = 2^NumBits - 1. 

<b>Equation ou regle</b> 
$$y = (u \star \text{BitMask}) \,\&\, (2^{\text{NumBits}}-1)$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/bitwiseOperator.cpp`


## 💡 Exemple

ET de 12 (1100) avec le masque 10 (1010) sur 8 bits donne 8 (1000).

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',12)), struct('id','b','type','bitwiseOperator','inputs',1,'outputs',1,'params',struct('Operation','AND','BitMask',10,'NumBits',8)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','b','fromIndex',0,'toIndex',0), struct('from','b','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[bitSet](../../nflow_blocks/logic/bitSet.md), [bitClear](../../nflow_blocks/logic/bitClear.md), [extractBits](../../nflow_blocks/logic/extractBits.md), [shiftArithmetic](../../nflow_blocks/logic/shiftArithmetic.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
