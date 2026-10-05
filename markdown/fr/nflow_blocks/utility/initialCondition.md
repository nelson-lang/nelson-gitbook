# initialCondition


<p align="center">
<img src="initialCondition.svg" width="72"/>
</p>
Force la sortie a InitialValue au premier pas, puis transmet l entree.

## 📝 Syntaxe

- Type de bloc : initialCondition

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Force la sortie a InitialValue au premier pas, puis transmet l entree. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Utilitaires | 
| Type | <code>initialCondition</code> | 
| Libelle | IC | 

  

<b>Description</b> 

Emet le parametre <code>InitialValue</code> au temps de simulation 0 puis transmet l'entree inchangee a chaque pas suivant (t > 0). Utile pour amorcer une boucle algebrique ou definir la valeur d'un signal de retour avant que le premier echantillon reel soit disponible. Transparent pour t > 0. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | gauche | x=0, y=25 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=90, y=25 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>InitialValue</code> | 0 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | initialCondition | 
| Famille | Utilitaires | 
| Taille rendue | 90 x 50 | 
| Phases | ALGEBRAIC | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- ALGEBRAIC : out = (t > 0) ? u : InitialValue. 

<b>Equation ou regle</b> 
$$y(t) = \begin{cases} \text{InitialValue} & t = 0 \\ u(t) & t > 0 \end{cases}$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/initialCondition.cpp`


## 💡 Exemple

Casser une boucle algebrique en amorcant le premier echantillon a 5.

```matlab
d.blocks={ struct('id','r','type','ramp','inputs',0,'outputs',1,'params',struct('slope',1)), struct('id','ic','type','initialCondition','inputs',1,'outputs',1,'params',struct('InitialValue',5)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','ic','fromIndex',0,'toIndex',0), struct('from','ic','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.5; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[unitDelay](../../nflow_blocks/discrete/unitDelay.md), [dataStoreMemory](../../nflow_blocks/utility/dataStoreMemory.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
