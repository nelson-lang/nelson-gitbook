# demo

Parcourir les exemples des modules Nelson et des toolboxes externes charges.

## 📝 Syntaxe

- demo()

## 📄 Description


<b>demo</b> ouvre la galerie d'exemples. Un nouvel appel actualise le catalogue et remet au premier plan la fenetre existante. 

La galerie liste les exemples de chaque module charge, les modeles et scripts NFlow (un modele NFlow s'ouvre dans l'editeur de schemas-blocs) et les exemples des toolboxes externes. Executer un exemple laisse la galerie ouverte : plusieurs demonstrations peuvent etre enchainees. 

Sur le bureau, la galerie est une fenetre separee. Dans le bureau web, <b>demo</b> l'affiche comme un panneau <b>Exemples</b> ancre a cote de la fenetre de commande (Aide > Exemples ouvre le meme panneau) : une seule fenetre de navigateur suffit. NFlow affiche la meme galerie dans son volet Fichier > Exemples. 

Un module charge apparait lorsque son manifeste <b>examples/index.json</b> est valide. Chaque entree fournit un chemin relatif vers un script <b>.m</b>, un titre et une description ; les etiquettes et prerequis facultatifs servent au filtrage et a la preparation. 

<b>title</b> et <b>description</b> acceptent soit une chaine, soit un objet contenant des chaines non vides <b>en\_US</b> et/ou <b>fr\_FR</b>. Si la langue courante manque, l'autre langue prise en charge sert de repli. 

| Prerequis | Signification | 
| --- | --- | 
| gui | Bureau graphique ou backend graphique. | 
| network | Acces reseau a la ressource utilisee par le script. | 
| credentials | Donnees d'authentification fournies par l'utilisateur. | 
| compiler | Compilateur de code natif configure. | 
| mpi | Environnement d'execution et lanceur MPI. | 
| windows | Systeme d'exploitation Windows. | 
| python | Installation Python compatible. | 
| julia | Installation Julia compatible. | 
| audio-input | Peripherique d'entree audio disponible. | 
| audio-output | Peripherique de sortie audio disponible. | 
| external-application | Application ou service local exterieur a Nelson. | 



## 💡 Exemple

Ouvrir ou actualiser la galerie d'exemples.

```matlab
demo()
```


## 🔗 Voir aussi

[web](../webview/web.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
