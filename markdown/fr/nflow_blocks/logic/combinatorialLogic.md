# combinatorialLogic


<p align="center">
<img src="combinatorialLogic.svg" width="72"/>
</p>
Recherche par table de verite : un vecteur d entree de N bits indexe une TruthTable de 2^N entrees.

## 📝 Syntaxe

- Type de bloc : combinatorialLogic

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Recherche par table de verite : un vecteur d entree de N bits indexe une TruthTable de 2^N entrees. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Logique / Operations sur les bits | 
| Type | <code>combinatorialLogic</code> | 
| Libelle | Combinatorial Logic | 

  

<b>Description</b> 

L'unique entree est un vecteur de N elements booleens qui forme un index binaire (l'element 0 est le bit de poids fort) ; la sortie est <code>TruthTable[index]</code>, ou <code>TruthTable</code> est une colonne de 2^N valeurs. Les entrees non nulles comptent pour 1. Le bloc est enregistre "vector-aware" (il accepte une entree vectorielle et produit une sortie scalaire). 

Execution native seulement : la lecture de ligne a entree vectorielle n'est pas encore generee en code. Un index hors plage ou une table vide donne 0. 

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
| <code>TruthTable</code> | [0 1 1 0] | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | combinatorialLogic | 
| Famille | Logique / Operations sur les bits | 
| Taille rendue | 90 x 80 | 
| Phases | ALGEBRAIC | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- ALGEBRAIC : index = somme sur les bits (u[i] != 0) \* 2^(N-1-i) ; out = TruthTable[index]. 

<b>Equation ou regle</b> 
$$y = \text{TruthTable}\big[\textstyle\sum_i u_i\,2^{N-1-i}\big]$$
 

<b>Capacites etendues</b> 

Execution native seulement (ce bloc n'est pas genere en code). 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/combinatorialLogic.cpp`


## 💡 Exemple

Une table de verite XOR a 2 entrees [0 1 1 0] appliquee au vecteur [1 0] donne 1.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',[1 0])), struct('id','cl','type','combinatorialLogic','inputs',1,'outputs',1,'params',struct('TruthTable',[0 1 1 0])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','cl','fromIndex',0,'toIndex',0), struct('from','cl','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[bitwiseOperator](../../nflow_blocks/logic/bitwiseOperator.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
