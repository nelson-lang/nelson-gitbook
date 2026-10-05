# comment


<p align="center">
<img src="comment.svg" width="72"/>
</p>
Ajoute un texte d annotation non execute au diagramme.

## 📝 Syntaxe

- Block type: comment

## 📄 Description


Ajoute un texte d annotation non execute au diagramme. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Blocs utilitaires | 
| Type | <code>comment</code> | 
| Libelle | Comment | 

  

<b>Description</b> 

Ajoute un texte d annotation non execute au diagramme. 

<b>Ports</b> 

<b>Entree(s)</b> 

Ce bloc ne declare aucune entree. 

<b>Sortie(s)</b> 

Ce bloc ne declare aucune sortie. 

<b>Parametres</b> 

| Parametre | Valeur par defaut | 
| --- | --- | 
| <code>commentText</code> |  | 
| <code>showBorder</code> | true | 

 

<b>Cles de l inspecteur</b> 

Ces cles serialisees sont exposees par l inspecteur du bloc. 

- <code>commentText</code> 
- <code>showBorder</code> 

<b>Caracteristiques du bloc</b> 

| Champ | Valeur |
| --- | --- |
| Type de bloc | comment | 
| Famille | Blocs utilitaires | 
| Taille graphique | 220 x 120 | 
| Phases | none | 
| Traversee directe | voir Algorithmes | 
| Etat ou historique interne | non observe dans le code documente | 
| Type de donnees signaux | valeurs numeriques double | 

 

<b>Algorithmes</b> 

- Aucun handler numerique natif et aucun port de signal. 
- Utilise par l editeur et le rendu pour le texte de commentaire et l affichage de bordure. 

<b>Capacites et limites</b> 

La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc. 

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

Runtime: registre de famille, chemin UI ou codegen; aucun fichier runtime natif dedie trouve.


## 🔗 Voir aussi

[subsystem](../../nflow_blocks/utility/subsystem.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
