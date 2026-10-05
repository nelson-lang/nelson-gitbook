# intervalTestDynamic


<p align="center">
<img src="intervalTestDynamic.svg" width="72"/>
</p>
Comme intervalTest mais les bornes proviennent des ports d entree (lo, u, up).

## 📝 Syntaxe

- Type de bloc : intervalTestDynamic

## 📥 Argument d'entrée

- ports d entree - 3 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Comme intervalTest mais les bornes proviennent des ports d entree (lo, u, up). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Logique / Operations sur les bits | 
| Type | <code>intervalTestDynamic</code> | 
| Libelle | Interval Test Dynamic | 

  

<b>Description</b> 

Variante pilotee par signaux de <code>intervalTest</code> : au lieu de parametres, la borne basse, la valeur et la borne haute proviennent des ports d'entree 1, 2 et 3, de sorte que la fenetre d'acceptation peut bouger a l'execution. Sortie 1 quand <code>lo <= u <= up</code>. <code>IntervalClosedLeft</code>/<code>IntervalClosedRight</code> controlent l'inclusion des bornes. Element par element sur la largeur de la valeur ; les bornes scalaires sont diffusees. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | gauche | x=0, y=20 | 
| Port\_2 | Signal numerique lu par le bloc. | gauche | x=0, y=40 | 
| Port\_3 | Signal numerique lu par le bloc. | gauche | x=0, y=60 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=100, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>IntervalClosedLeft</code> | 1 | 
| <code>IntervalClosedRight</code> | 1 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | intervalTestDynamic | 
| Famille | Logique / Operations sur les bits | 
| Taille rendue | 100 x 80 | 
| Phases | ALGEBRAIC | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- ALGEBRAIC : lit port 0 = borne basse, port 1 = valeur, port 2 = borne haute ; out = 1 si la valeur est dans l'intervalle (eventuellement ouvert). 

<b>Equation ou regle</b> 
$$y = \begin{cases} 1 & \text{lo} \le u \le \text{up} \\ 0 & \text{otherwise} \end{cases}$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/intervalTestDynamic.cpp`


## 💡 Exemple

Fournir lo=1, u=rampe, up=3 et enregistrer quand la rampe entre dans la fenetre.

```matlab
d.blocks={ struct('id','lo','type','constant','inputs',0,'outputs',1,'params',struct('Value',1)), struct('id','u','type','ramp','inputs',0,'outputs',1,'params',struct('slope',1)), struct('id','up','type','constant','inputs',0,'outputs',1,'params',struct('Value',3)), struct('id','it','type','intervalTestDynamic','inputs',3,'outputs',1,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','lo','to','it','fromIndex',0,'toIndex',0), struct('from','u','to','it','fromIndex',0,'toIndex',1), struct('from','up','to','it','fromIndex',0,'toIndex',2), struct('from','it','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[intervalTest](../../nflow_blocks/logic/intervalTest.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
