# relationalOperator


<p align="center">
<img src="relationalOperator.svg" width="192"/>
</p>
Compare deux signaux d entree.

## 📝 Syntaxe

- Block type: relationalOperator

## 📥 Argument d'entrée

- input ports - 2 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Compare deux signaux d entree. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs logiques | 
| Type | <code>relationalOperator</code> | 
| Libelle | Relational | 

  

<b>Description</b> 

Compare deux signaux d entree. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=30 | 
| Port\_2 | Signal numerique lu par le bloc. | left | x=0, y=50 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=100, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>operator</code> | ge | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>operator</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | relationalOperator | 
| Famille | Blocs logiques | 
| Taille graphique | 100 x 80 | 
| Phases | ALGEBRAIC | 
| Traversee directe | oui | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Bloc algebrique. L entree 1 est requise. 
- Les operateurs pris en charge sont ge, gt et ne; les valeurs inconnues reviennent a ge. 
- L entree 2 vaut 0 par defaut si elle est deconnectee. 

<b>Equation ou regle</b> 
$$y = \operatorname{compare}(u_1,\,u_2,\,operator)$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/logic/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/logic/relationalOperator.cpp`



## 🔗 Voir aussi

[compareToConstant](../../nflow_blocks/logic/compareToConstant.md), [compareToZero](../../nflow_blocks/logic/compareToZero.md), [switch](../../nflow_blocks/utility/switch.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
