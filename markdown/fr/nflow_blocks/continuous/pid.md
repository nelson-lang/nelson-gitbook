# pid


<p align="center">
<img src="pid.svg" width="192"/>
</p>
Implemente un controleur PID scalaire avec limites de sortie.

## 📝 Syntaxe

- Block type: pid

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Implemente un controleur PID scalaire avec limites de sortie. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs continus | 
| Type | <code>pid</code> | 
| Libelle | PID | 

  

<b>Description</b> 

Implemente un controleur PID scalaire avec limites de sortie. 

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
| <code>kp</code> | 1 | 
| <code>ki</code> | 0 | 
| <code>kd</code> | 0 | 
| <code>min</code> | -inf | 
| <code>max</code> | inf | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>kp</code> 
- <code>ki</code> 
- <code>kd</code> 
- <code>min</code> 
- <code>max</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | pid | 
| Famille | Blocs continus | 
| Taille graphique | 80 x 80 | 
| Phases | INIT, OUTPUT, UPDATE | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | oui | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT efface l integrale, l entree precedente et la sortie. 
- OUTPUT emet la sortie controleur memorisee. UPDATE calcule les termes P, I et D depuis l entree et dt. 
- Le resultat est borne entre min et max. 

<b>Equation ou regle</b> 
$$y = \operatorname{clamp}\left(k_p u + k_i\int u\,dt + k_d\frac{du}{dt},\,min,\,max\right)$$
 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/continuous/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/continuous/pid.cpp`



## 🔗 Voir aussi

[integrator](../../nflow_blocks/continuous/integrator.md), [derivative](../../nflow_blocks/continuous/derivative.md), [gain](../../nflow_blocks/math/gain.md), [sum](../../nflow_blocks/math/sum.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
