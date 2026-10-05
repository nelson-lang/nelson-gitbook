#import "nelson_help.typ": *

= demo <webview:demo>

Parcourir les exemples des modules Nelson et des toolboxes externes charges.

== Syntaxe

- #raw("demo()");

== Description

#strong[demo]; ouvre la galerie d'exemples. Un nouvel appel actualise le catalogue et remet au premier plan la fenetre existante.

 La galerie liste les exemples de chaque module charge, les modeles et scripts NFlow (un modele NFlow s'ouvre dans l'editeur de schemas-blocs) et les exemples des toolboxes externes. Executer un exemple laisse la galerie ouverte : plusieurs demonstrations peuvent etre enchainees.

 Sur le bureau, la galerie est une fenetre separee. Dans le bureau web, #strong[demo]; l'affiche comme un panneau #strong[Exemples]; ancre a cote de la fenetre de commande (Aide \> Exemples ouvre le meme panneau) : une seule fenetre de navigateur suffit. NFlow affiche la meme galerie dans son volet Fichier \> Exemples.

 Un module charge apparait lorsque son manifeste #strong[examples\/index.json]; est valide. Chaque entree fournit un chemin relatif vers un script #strong[.m];, un titre et une description ; les etiquettes et prerequis facultatifs servent au filtrage et a la preparation.

 #strong[title]; et #strong[description]; acceptent soit une chaine, soit un objet contenant des chaines non vides #strong[en\_US]; et\/ou #strong[fr\_FR];. Si la langue courante manque, l'autre langue prise en charge sert de repli.

 

#table(
  columns: 2,
  [Prerequis], [Signification], 
  [gui], [Bureau graphique ou backend graphique.], 
  [network], [Acces reseau a la ressource utilisee par le script.], 
  [credentials], [Donnees d'authentification fournies par l'utilisateur.], 
  [compiler], [Compilateur de code natif configure.], 
  [mpi], [Environnement d'execution et lanceur MPI.], 
  [windows], [Systeme d'exploitation Windows.], 
  [python], [Installation Python compatible.], 
  [julia], [Installation Julia compatible.], 
  [audio-input], [Peripherique d'entree audio disponible.], 
  [audio-output], [Peripherique de sortie audio disponible.], 
  [external-application], [Application ou service local exterieur a Nelson.], 
)

== Exemple

Ouvrir ou actualiser la galerie d'exemples.

``````matlab
demo()
``````


== Voir aussi

#nlink(<webview:web>)[web];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
