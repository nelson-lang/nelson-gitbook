# sum


<p align="center">
<img src="sum.svg" width="192"/>
</p>
Additionne les entrees connectees avec des signes configurables.

## 📝 Syntaxe

- Block type: sum

## 📥 Argument d'entrée

- input ports - 3 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Additionne les entrees connectees avec des signes configurables. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs mathematiques | 
| Type | <code>sum</code> | 
| Libelle | Sum | 

  

<b>Description</b> 

Additionne les entrees connectees avec des signes configurables. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=-30, y=10 | 
| Port\_2 | Signal numerique lu par le bloc. | top | x=10, y=-30 | 
| Port\_3 | Signal numerique lu par le bloc. | bottom | x=10, y=50 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=50, y=10 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>signs</code> | [1, 1, 1] | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>signs</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | sum | 
| Famille | Blocs mathematiques | 
| Taille graphique | 20 x 20 | 
| Phases | ALGEBRAIC | 
| Traversee directe | oui | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Bloc algebrique. 
- signs fournit un signe par entree; les signes manquants valent +1 et les ports deconnectes sont ignores. 

<b>Equation ou regle</b> 
$$y = \sum_i sign_i\,u_i$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/math/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/math/sum.cpp`



## 🔗 Voir aussi

[gain](../../nflow_blocks/math/gain.md), [bias](../../nflow_blocks/math/bias.md), [negate](../../nflow_blocks/math/negate.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
