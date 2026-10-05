# dtf


<p align="center">
<img src="dtf.svg" width="192"/>
</p>
Implemente une fonction de transfert discrete.

## 📝 Syntaxe

- Block type: dtf

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Implemente une fonction de transfert discrete. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs discrets | 
| Type | <code>dtf</code> | 
| Libelle | Discrete TF | 

  

<b>Description</b> 

Implemente une fonction de transfert discrete. 

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
| <code>num</code> | [1] | 
| <code>den</code> | [1, -0.5] | 
| <code>ts</code> | 0.1 | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>num</code> 
- <code>den</code> 
- <code>ts</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | dtf | 
| Famille | Blocs discrets | 
| Taille graphique | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT normalise numerateur et denominateur par den[0] et efface les historiques. 
- OUTPUT emet la sortie memorisee. UPDATE echantillonne a ts, decale les historiques et evalue la recurrence. 
- Un numerateur vide vaut [0], un denominateur vide vaut [1], et ts vaut au moins 0.001. 

<b>Equation ou regle</b> 

discrete transfer-function recurrence 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/dtf.cpp`



## 🔗 Voir aussi

[dstateSpace](../../nflow_blocks/discrete/dstateSpace.md), [tf](../../nflow_blocks/continuous/tf.md), [unitDelay](../../nflow_blocks/discrete/unitDelay.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
