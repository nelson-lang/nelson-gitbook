# bitClear


<p align="center">
<img src="bitClear.svg" width="72"/>
</p>
Met a 0 le bit a la position BitIndex de l entree entiere.

## 📝 Syntaxe

- Type de bloc : bitClear

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Met a 0 le bit a la position BitIndex de l entree entiere. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Logique / Operations sur les bits | 
| Type | <code>bitClear</code> | 
| Libelle | Bit Clear | 

  

<b>Description</b> 

Met a 0 un bit unique (index <code>BitIndex</code>, base 0) de l'entree entiere via un ET avec le complement d'un masque a un bit. Les valeurs sont reinterpretees comme entiers non signes sur <code>NumBits</code> bits. Element par element. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | gauche | x=0, y=40 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>BitIndex</code> | 0 | 
| <code>NumBits</code> | 32 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | bitClear | 
| Famille | Logique / Operations sur les bits | 
| Taille rendue | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- ALGEBRAIC : out = (x & ~(1 << BitIndex)) & fullmask. 

<b>Equation ou regle</b> 
$$y = u \,\&\, \overline{2^{\text{BitIndex}}}$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/bitClear.cpp`


## 💡 Exemple

Effacer le bit 3 de 8 (1000) donne 0.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',8)), struct('id','b','type','bitClear','inputs',1,'outputs',1,'params',struct('BitIndex',3,'NumBits',8)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','b','fromIndex',0,'toIndex',0), struct('from','b','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[bitSet](../../nflow_blocks/logic/bitSet.md), [bitwiseOperator](../../nflow_blocks/logic/bitwiseOperator.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
