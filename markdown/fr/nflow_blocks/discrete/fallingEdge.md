# fallingEdge


<p align="center">
<img src="fallingEdge.svg" width="192"/>
</p>
Sort 1 au pas ou l entree passe de >= 0 a < 0.

## 📝 Syntaxe

- Type de bloc : fallingEdge

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Sort 1 au pas ou l entree passe de >= 0 a < 0. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Discret | 
| Type | <code>fallingEdge</code> | 
| Libelle | Falling Edge | 

  

<b>Description</b> 

Detecte un front descendant : sort 1 au pas ou l'entree passe de non negative a strictement negative (<code>prev >= 0 && u < 0</code>), sinon 0. <code>InitialCondition</code> initialise la valeur precedente. Avec etat ; element par element. 

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
| <code>InitialCondition</code> | 0 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | fallingEdge | 
| Famille | Discret | 
| Taille rendue | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Etat interne ou historique | oui | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- OUTPUT : out = (prev >= 0 && u < 0) ? 1 : 0. UPDATE : prev = u. 

<b>Equation ou regle</b> 
$$y_k = [\,u_{k-1} \ge 0 \wedge u_k < 0\,]$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/fallingEdge.cpp`


## 💡 Exemple

Une rampe descendante amorcee au-dessus de 0 produit un front descendant au passage par zero.

```matlab
d.blocks={ struct('id','r','type','ramp','inputs',0,'outputs',1,'params',struct('slope',-1)), struct('id','ic','type','initialCondition','inputs',1,'outputs',1,'params',struct('InitialValue',1)), struct('id','fe','type','fallingEdge','inputs',1,'outputs',1,'params',struct('InitialCondition',1)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','ic','fromIndex',0,'toIndex',0), struct('from','ic','to','fe','fromIndex',0,'toIndex',0), struct('from','fe','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[risingEdge](../../nflow_blocks/discrete/risingEdge.md), [detectChange](../../nflow_blocks/discrete/detectChange.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
