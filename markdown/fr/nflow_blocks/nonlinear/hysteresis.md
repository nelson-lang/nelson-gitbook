# hysteresis


<p align="center">
<img src="hysteresis.svg" width="192"/>
</p>
Relais : bascule à deux seuils avec mémoire (uHigh, uLow, yHigh, yLow).

## 📝 Syntaxe

- Type de bloc : hysteresis

## 📥 Argument d'entrée

- ports d'entrée - 1 port d'entrée déclaré.

## 📤 Argument de sortie

- ports de sortie - 1 port de sortie déclaré.

## 📄 Description


Relais : une bascule à mémoire avec deux seuils (hystérésis). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliothèque | Nonlinear | 
| Type | <code>hysteresis</code> | 
| Libellé | Relay | 

  

<b>Description</b> 

La sortie est mémorisée : elle bascule à <code>yHigh</code> quand l'entrée atteint ou dépasse <code>uHigh</code>, à <code>yLow</code> quand elle atteint ou passe sous <code>uLow</code>, et conserve sa valeur précédente entre les deux. Ce comportement à deux seuils est le relais classique avec hystérésis. Avec état (sortie mémorisée). 

<b>Ports</b> 

| Port | Rôle | Côté | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Entrée de commande comparée aux seuils. | gauche | x=0, y=40 | 

 

<b>Sortie(s)</b> 

| Port | Rôle | Côté | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Sortie relais mémorisée (yHigh ou yLow). | droite | x=80, y=40 | 

 

<b>Paramètres</b> 

| Paramètre | Valeur par défaut | 
| --- | --- | 
| <code>uHigh</code> | 1 | 
| <code>uLow</code> | -1 | 
| <code>yHigh</code> | 1 | 
| <code>yLow</code> | 0 | 

 

<b>Caractéristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | hysteresis | 
| Famille | Nonlinear | 
| Taille de rendu | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| État interne ou historique | oui (sortie mémorisée) | 
| Type de données du signal | valeurs numériques double | 

 

<b>Algorithmes</b> 

- INIT : démarre à yLow. 
- OUTPUT : émet la valeur mémorisée. 
- UPDATE : bascule à yHigh au-dessus de uHigh, à yLow sous uLow, sinon conserve. 

<b>Équation ou règle</b> 
$$y \leftarrow \begin{cases} y_{High} & u \ge u_{High} \\ y_{Low} & u \le u_{Low} \\ y & \text{sinon} \end{cases}$$
 

<b>Capacités étendues</b> 

Génération de code : supportée pour C et Rust. 

<b>Sources d'implémentation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/hysteresis.cpp`


## 💡 Exemple

Relais piloté par un sinus franchissant les deux seuils.

```matlab
d.blocks={ struct('id','s','type','sine','inputs',0,'outputs',1,'params',struct('Amplitude',2,'Frequency',1)), struct('id','r','type','hysteresis','inputs',1,'outputs',1,'params',struct('uHigh',1,'uLow',-1,'yHigh',1,'yLow',0)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','s','to','r','fromIndex',0,'toIndex',0), struct('from','r','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.02; d.duration=2.0; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[saturation](../../nflow_blocks/nonlinear/saturation.md), [deadZone](../../nflow_blocks/nonlinear/deadZone.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
