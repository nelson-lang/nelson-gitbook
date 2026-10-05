# switch


<p align="center">
<img src="switch.svg" width="192"/>
</p>
Selectionne l entree haute ou basse avec une entree de condition.

## 📝 Syntaxe

- Block type: switch

## 📥 Argument d'entrée

- input ports - 3 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Selectionne l entree haute ou basse avec une entree de condition. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs utilitaires | 
| Type | <code>switch</code> | 
| Libelle | Switch | 

  

<b>Description</b> 

Selectionne l entree haute ou basse avec une entree de condition. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=0 | 
| Port\_2 | Signal numerique lu par le bloc. | left | x=0, y=40 | 
| Port\_3 | Signal numerique lu par le bloc. | left | x=0, y=80 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=80, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>condition</code> | ge | 
| <code>threshold</code> | 0 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>condition</code> 
- <code>threshold</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | switch | 
| Famille | Blocs utilitaires | 
| Taille graphique | 80 x 80 | 
| Phases | ALGEBRAIC | 
| Traversee directe | oui | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Bloc algebrique. 
- L entree 1 est la donnee haute, l entree 2 la condition, l entree 3 la donnee basse. 
- condition prend en charge gt, ne et ge; les valeurs inconnues reviennent a ge. 
- La generation C suit condition; la generation Rust traite actuellement l entree de condition comme non nulle ou nulle. 

<b>Equation ou regle</b> 
$$y = \begin{cases} u_1, & \operatorname{condition}(u_2, threshold) \\ u_3, & \mathrm{otherwise} \end{cases}$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/nonlinear/switch.cpp`



## 🔗 Voir aussi

[compareToConstant](../../nflow_blocks/logic/compareToConstant.md), [relationalOperator](../../nflow_blocks/logic/relationalOperator.md), [toggleSwitch](../../nflow_blocks/utility/toggleSwitch.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
