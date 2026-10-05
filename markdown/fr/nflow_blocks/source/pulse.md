# pulse


<p align="center">
<img src="pulse.svg" width="192"/>
</p>
Générateur d'impulsions : train d'impulsions périodique (Amplitude, Period, Width, StartTime, Offset).

## 📝 Syntaxe

- Type de bloc : pulse

## 📥 Argument d'entrée

- ports d'entrée - Aucun port d'entrée (ce bloc n'en a pas).

## 📤 Argument de sortie

- ports de sortie - 1 port de sortie déclaré.

## 📄 Description


Générateur d'impulsions : un train d'impulsions périodique. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliothèque | Source | 
| Type | <code>pulse</code> | 
| Libellé | Pulse Generator | 

  

<b>Description</b> 

Un train d'impulsions périodique sans entrée. À partir de <code>StartTime</code>, la sortie vaut <code>Offset + Amplitude</code> pendant les premiers <code>Width</code> pour cent de chaque <code>Period</code>, et <code>Offset</code> sinon. Sans état (fonction pure du temps). 

<b>Ports</b> 

Ce bloc n'a pas de port d'entrée. 

<b>Sortie(s)</b> 

| Port | Rôle | Côté | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numérique produit par le bloc. | droite | x=80, y=40 | 

 

<b>Paramètres</b> 

| Paramètre | Valeur par défaut | 
| --- | --- | 
| <code>Amplitude</code> | 1 | 
| <code>Period</code> | 1 | 
| <code>Width</code> | 50 | 
| <code>StartTime</code> | 0 | 
| <code>Offset</code> | 0 | 

 

<b>Caractéristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | pulse | 
| Famille | Source | 
| Taille de rendu | 80 x 80 | 
| Phases | OUTPUT | 
| État interne ou historique | non | 
| Type de données du signal | valeurs numériques double | 

 

<b>Algorithmes</b> 

- OUTPUT : évalue le train d'impulsions à l'instant courant. 

<b>Équation ou règle</b> 
$$y(t) = \text{Offset} + \begin{cases} A & \bmod(t-t_0, T) < \frac{W}{100} T \\ 0 & \text{sinon} \end{cases}$$
 

<b>Capacités étendues</b> 

Génération de code : supportée pour C et Rust. 

<b>Sources d'implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/source/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/source/periodic.cpp`


## 💡 Exemple

Générer un train d'impulsions (amplitude 1, période 1, rapport cyclique 50%).

```matlab
d.blocks={ struct('id','p','type','pulse','inputs',0,'outputs',1,'params',struct('Amplitude',1,'Period',1,'Width',50,'StartTime',0,'Offset',0)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','p','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.05; d.duration=2.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[signalGenerator](../../nflow_blocks/source/signalGenerator.md), [step](../../nflow_blocks/source/step.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
