# rate


<p align="center">
<img src="rate.svg" width="192"/>
</p>
Limite les vitesses de montee et de descente du signal.

## 📝 Syntaxe

- Block type: rate

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Limite les vitesses de montee et de descente du signal. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs non lineaires | 
| Type | <code>rate</code> | 
| Libelle | Rate Lim. | 

  

<b>Description</b> 

Limite les vitesses de montee et de descente du signal. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=40 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>rise</code> | 1 | 
| <code>fall</code> | 1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>rise</code> 
- <code>fall</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | rate | 
| Famille | Blocs non lineaires | 
| Taille graphique | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT met la sortie memorisee a 0. 
- OUTPUT emet la valeur memorisee. UPDATE borne l entree entre previous - fall\*dt et previous + rise\*dt. 
- rise et fall sont contraints a des valeurs positives ou nulles. 

<b>Equation ou regle</b> 
$$y = \operatorname{clamp}(u,\,y_{prev} - fall\,dt,\,y_{prev} + rise\,dt)$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/nonlinear/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/rate.cpp`



## 🔗 Voir aussi

[saturation](../../nflow_blocks/nonlinear/saturation.md), [quantizer](../../nflow_blocks/nonlinear/quantizer.md), [delay](../../nflow_blocks/continuous/delay.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
