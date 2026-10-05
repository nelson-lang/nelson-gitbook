# repeatingSequenceInterpolated


<p align="center">
<img src="repeatingSequenceInterpolated.svg" width="72"/>
</p>
Source periodique lineaire par morceaux interpolant une table (TimeValues, OutValues).

## 📝 Syntaxe

- Type de bloc : repeatingSequenceInterpolated

## 📥 Argument d'entrée

- ports d entree - Aucun port d entree (ce bloc n en a aucun).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Source periodique lineaire par morceaux interpolant une table (TimeValues, OutValues). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Source | 
| Type | <code>repeatingSequenceInterpolated</code> | 
| Libelle | Repeating Sequence Interpolated | 

  

<b>Description</b> 

Une source periodique lineaire par morceaux sans entree. La table <code>TimeValues</code>/<code>OutValues</code> definit une periode (periode = dernier TimeValues) ; la sortie interpole lineairement la table a t ramene dans [0, periode) et reboucle. Sans etat (fonction pure du temps). 

<b>Ports</b> 

Ce bloc n'a aucun port d'entree. 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>TimeValues</code> | [0 1 2] | 
| <code>OutValues</code> | [0 2 0] | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | repeatingSequenceInterpolated | 
| Famille | Source | 
| Taille rendue | 80 x 80 | 
| Phases | OUTPUT | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- OUTPUT : tm = mod(t, periode) ; out = interpolation lineaire de OutValues sur TimeValues en tm. 

<b>Equation ou regle</b> 
$$y(t) = \text{interp}\big(\text{TimeValues}, \text{OutValues}, t \bmod T\big)$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/repeatingSequenceInterpolated.cpp`


## 💡 Exemple

Une onde triangulaire de periode 1 s de [0 0.5 1] -> [0 1 0].

```matlab
d.blocks={ struct('id','r','type','repeatingSequenceInterpolated','inputs',0,'outputs',1,'params',struct('TimeValues',[0 0.5 1],'OutValues',[0 1 0])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[repeatingSequenceStair](../../nflow_blocks/source/repeatingSequenceStair.md), [signalGenerator](../../nflow_blocks/source/signalGenerator.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
