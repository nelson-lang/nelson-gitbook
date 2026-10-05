# subsystem


<p align="center">
<img src="subsystem.svg" width="72"/>
</p>
Execute un diagramme imbrique comme un seul bloc.

## 📝 Syntaxe

- Block type: subsystem

## 📥 Argument d'entrée

- input ports - 1 port(s) d entree declare(s).

## 📤 Argument de sortie

- output ports - 1 port(s) de sortie declare(s).

## 📄 Description


Execute un diagramme imbrique comme un seul bloc. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs utilitaires | 
| Type | <code>subsystem</code> | 
| Libelle | Subsystem | 

  

<b>Description</b> 

Execute un diagramme imbrique comme un seul bloc. 

<b>For-each</b> 

Avec un parametre <code>forEach</code> <code>{"numIterations": N, "partition": [ports]}</code> le sous-systeme execute son corps <code>N</code> fois par pas : une entree partitionnee de largeur <code>N * w</code> fournit a l'iteration <code>i</code> sa tranche de largeur <code>w</code> d'indice <code>i</code>, une entree non partitionnee est diffusee a chaque iteration, et chaque sortie interne de largeur <code>w_out</code> est concatenee en une sortie externe de largeur <code>N * w_out</code>. Cela applique un meme sous-diagramme reutilisable element par element sur un vecteur ou un banc de canaux. Le corps peut porter un etat par iteration, discret (un retard unitaire ou un filtre discret) ou continu (un integrateur ou une fonction de transfert integre par le solveur) : chaque iteration garde un historique independant / integre son propre canal. 

<b>Ports</b> 

<b>Entree(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique lu par le bloc. | left | x=0, y=40 | 

 

<b>Sortie(s)</b> 

| Port | Role | Cote | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Signal numerique produit par le bloc. | right | x=120, y=40 | 

 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>name</code> | Subsystem | 
| <code>externalInputs</code> | [] | 
| <code>externalOutputs</code> | [] | 
| <code>subsystem</code> |  | 
| <code>forEach</code> | [] (pas d iteration) | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>name</code> 
- <code>externalInputs</code> 
- <code>externalOutputs</code> 
- <code>subsystem</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | subsystem | 
| Famille | Blocs utilitaires | 
| Taille graphique | 120 x 80 | 
| Phases | INIT, OUTPUT, ALGEBRAIC, UPDATE | 
| Traversee directe | oui | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- INIT construit l etat interne depuis la specification subsystem et ordonnance les blocs internes par phase. 
- OUTPUT route les entrees externes, execute les sorties internes et recopie les sorties externes. 
- ALGEBRAIC evalue les blocs algebriques internes; UPDATE avance les blocs internes de mise a jour. 

<b>Equation ou regle</b> 

nested model execution 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

Generation de code : prise en charge pour C et Rust. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

Runtime: registre de famille, chemin UI ou codegen; aucun fichier runtime natif dedie trouve.


## 🔗 Voir aussi

[mux](../../nflow_blocks/utility/mux.md), [demux](../../nflow_blocks/utility/demux.md), [comment](../../nflow_blocks/utility/comment.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
