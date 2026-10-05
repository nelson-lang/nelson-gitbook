# coulombViscousFriction


<p align="center">
<img src="coulombViscousFriction.svg" width="72"/>
</p>
Friction statique : terme visqueux Gain\*u plus terme de Coulomb signe Offset\*sign(u).

## 📝 Syntaxe

- Type de bloc : coulombViscousFriction

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Friction statique : terme visqueux Gain\*u plus terme de Coulomb signe Offset\*sign(u). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Non lineaire | 
| Type | <code>coulombViscousFriction</code> | 
| Libelle | Coulomb & Viscous Friction | 

  

<b>Description</b> 

Modelise une caracteristique de friction statique combinant un terme visqueux proportionnel a l'entree (<code>Gain</code>) et un terme de Coulomb de magnitude fixe (<code>Offset</code>) opposant le sens du mouvement : <code>y = Gain*u + Offset*sign(u)</code>. Comme <code>sign(0) = 0</code>, la sortie vaut exactement 0 au repos. Deux segments paralleles avec un saut de 2\*Offset a l'origine. Scalaire ou vecteur (element par element). 

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
| <code>Gain</code> | 1 | 
| <code>Offset</code> | 1 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | coulombViscousFriction | 
| Famille | Non lineaire | 
| Taille rendue | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- ALGEBRAIC : y = Gain\*u + Offset\*sign(u), element par element sur la largeur d'entree. 

<b>Equation ou regle</b> 
$$y = \text{Gain}\cdot u + \text{Offset}\cdot \operatorname{sign}(u)$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/coulombViscousFriction.cpp`


## 💡 Exemple

Gain = 2, Offset = 3 : entree 2 -> 7, entree -2 -> -7, entree 0 -> 0.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',2)), struct('id','f','type','coulombViscousFriction','inputs',1,'outputs',1,'params',struct('Gain',2,'Offset',3)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','f','fromIndex',0,'toIndex',0), struct('from','f','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[deadZone](../../nflow_blocks/nonlinear/deadZone.md), [saturation](../../nflow_blocks/nonlinear/saturation.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
