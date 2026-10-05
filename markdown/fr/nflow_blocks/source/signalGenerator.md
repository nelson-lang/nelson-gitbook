# signalGenerator


<p align="center">
<img src="signalGenerator.svg" width="72"/>
</p>
Source periodique configurable : sinus, carre ou dent de scie (Amplitude, Frequency).

## 📝 Syntaxe

- Type de bloc : signalGenerator

## 📥 Argument d'entrée

- ports d entree - Aucun port d entree (ce bloc n en a aucun).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Source periodique configurable : sinus, carre ou dent de scie (Amplitude, Frequency). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Source | 
| Type | <code>signalGenerator</code> | 
| Libelle | Signal Generator | 

  

<b>Description</b> 

Une source periodique configurable sans entree. <code>Waveform</code> vaut "sine", "square" ou "sawtooth", mise a l'echelle par <code>Amplitude</code>, avec <code>Frequency</code> en Hz. sine = A\*sin(2\*pi\*f\*t) ; square = A\*signe(sin(2\*pi\*f\*t)) ; sawtooth monte lineairement de -A a +A sur chaque periode. Sans etat (fonction pure du temps). 

<b>Ports</b> 

Ce bloc n'a aucun port d'entree. 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | droite | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>Waveform</code> | sine | 
| <code>Amplitude</code> | 1 | 
| <code>Frequency</code> | 1 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | signalGenerator | 
| Famille | Source | 
| Taille rendue | 80 x 80 | 
| Phases | OUTPUT | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- OUTPUT : evalue la forme d'onde choisie au temps courant. 

<b>Equation ou regle</b> 
$$y(t) = A\,\sin(2\pi f t) \quad(\text{sine})$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/signalGenerator.cpp`


## 💡 Exemple

Generer un sinus 1 Hz d'amplitude 2.

```matlab
d.blocks={ struct('id','g','type','signalGenerator','inputs',0,'outputs',1,'params',struct('Waveform','sine','Amplitude',2,'Frequency',1)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','g','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=1.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[sine](../../nflow_blocks/source/sine.md), [repeatingSequenceInterpolated](../../nflow_blocks/source/repeatingSequenceInterpolated.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
