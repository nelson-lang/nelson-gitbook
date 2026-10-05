# wrapToZero


<p align="center">
<img src="wrapToZero.svg" width="72"/>
</p>
Sort 0 quand l entree atteint Threshold, sinon la transmet telle quelle.

## 📝 Syntaxe

- Type de bloc : wrapToZero

## 📥 Argument d'entrée

- ports d entree - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- ports de sortie - 1 port(s) de sortie declare(s).

## 📄 Description


Sort 0 quand l entree atteint Threshold, sinon la transmet telle quelle. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Operations mathematiques | 
| Type | <code>wrapToZero</code> | 
| Libelle | Wrap To Zero | 

  

<b>Description</b> 

Sort 0 quand l'entree atteint ou depasse <code>Threshold</code>, sinon transmet l'entree inchangee (Wrap To Zero). Retour algebrique pur, element par element. 

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
| <code>Threshold</code> | 255 | 

 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | wrapToZero | 
| Famille | Operations mathematiques | 
| Taille rendue | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Etat interne ou historique | non | 
| Type de donnees du signal | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- ALGEBRAIC : out = (u >= Threshold) ? 0 : u. 

<b>Equation ou regle</b> 
$$y = \begin{cases} 0 & u \ge \text{Threshold} \\ u & \text{otherwise} \end{cases}$$
 

<b>Capacites etendues</b> 

<b>Sources d implementation</b> 

Generation de code : prise en charge pour C et Rust. 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/wrapToZero.cpp`


## 💡 Exemple

Avec Threshold = 5 : l'entree 7 est ramenee a 0, l'entree 3 passe.

```matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',7)), struct('id','g','type','wrapToZero','inputs',1,'outputs',1,'params',struct('Threshold',5)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','g','fromIndex',0,'toIndex',0), struct('from','g','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
```


## 🔗 Voir aussi

[saturation](../../nflow_blocks/nonlinear/saturation.md), [deadZone](../../nflow_blocks/nonlinear/deadZone.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
