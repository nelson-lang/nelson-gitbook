# signalConversion


<p align="center">
<img src="signalConversion.svg" width="72"/>
</p>
Passe-plat qui recopie son entree vers sa sortie inchangee (point de conversion).

## 📝 Syntaxe

- Type de bloc : signalConversion

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Passe-plat qui recopie son entree vers sa sortie inchangee (point de conversion). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Utilitaires | 
| Type | <code>signalConversion</code> | 
| Libelle | Signal Conversion | 

  

<b>Description</b> 

Un passe-plat qui recopie son entree vers sa sortie sans la modifier. Il marque un point de conversion de signal explicite dans un diagramme (frontiere de copie contigue / specification de signal) ; la valeur est identique, c'est donc une identite element par element. Scalaire ou vecteur. 

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
| *aucun* |  | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | signalConversion | 
| Famille | Utilitaires | 
| Taille rendue | 90 x 50 | 
| Phases | ALGEBRAIC | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- ALGEBRAIC : out = in, element par element. 

<b>Equation ou regle</b> 
$$y = u$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/signalConversion.cpp`


## 💡 Exemple

L'entree 5 passe inchangee a 5.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',5)), struct('id','s','type','signalConversion','inputs',1,'outputs',1,'params',struct()), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','s','fromIndex',0,'toIndex',0), struct('from','s','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[convert](../../nflow_blocks/utility/convert.md), [reshape](../../nflow_blocks/utility/reshape.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
