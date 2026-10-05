# unitDelay


<p align="center">
<img src="unitDelay.svg" width="192"/>
</p>
Retarde l entree d une mise a jour.

## 📝 Syntaxe

- Block type: unitDelay

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Retarde l entree d une mise a jour. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs discrets | 
| Type | <code>unitDelay</code> | 
| Libelle | Unit Delay | 

  

<b>Description</b> 

Retarde l entree d une mise a jour. 

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
| <code>initial</code> | 0 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>initial</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | unitDelay | 
| Famille | Blocs discrets | 
| Taille graphique | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT stocke initial. 
- OUTPUT emet la valeur memorisee. UPDATE stocke l entree courante pour la prochaine phase OUTPUT. 

<b>Equation ou regle</b> 
$$y_k = u_{k-1}$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/unitDelay.cpp`



## 🔗 Voir aussi

[ddelay](../../nflow_blocks/discrete/ddelay.md), [difference](../../nflow_blocks/discrete/difference.md), [zoh](../../nflow_blocks/discrete/zoh.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
