# zoh


<p align="center">
<img src="zoh.svg" width="192"/>
</p>
Echantillonne une entree et conserve la derniere valeur.

## 📝 Syntaxe

- Block type: zoh

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Echantillonne une entree et conserve la derniere valeur. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs discrets | 
| Type | <code>zoh</code> | 
| Libelle | ZOH | 

  

<b>Description</b> 

Echantillonne une entree et conserve la derniere valeur. 

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
| <code>ts</code> | 0.1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>ts</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | zoh | 
| Famille | Blocs discrets | 
| Taille graphique | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT efface la sortie memorisee et planifie l echantillonnage. 
- OUTPUT emet la sortie memorisee. UPDATE echantillonne lorsque t atteint le prochain instant. 
- ts est contraint a au moins 0.001. 

<b>Equation ou regle</b> 
$$y(t) = u(t_k),\quad t_k \le t$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/zoh.cpp`



## 🔗 Voir aussi

[foh](../../nflow_blocks/discrete/foh.md), [unitDelay](../../nflow_blocks/discrete/unitDelay.md), [ddelay](../../nflow_blocks/discrete/ddelay.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
