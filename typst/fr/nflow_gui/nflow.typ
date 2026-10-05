#import "nelson_help.typ": *

= nflow <nflow_gui:nflow>

Lance l'editeur nflow, eventuellement sur un fichier modele.

== Syntaxe

- #raw("nflow()");
- #raw("nflow(file)");
- #raw("h = nflow(file)");

== Argument d'entrée

/ file: un vecteur de caracteres : le chemin d'un fichier modele #strong[.nflow]; a ouvrir dans l'editeur. Omis, l'editeur s'ouvre sur un modele vide.

== Argument de sortie

/ h: un handle vers la fenetre d'editeur ouverte.

== Description

#strong[nflow]; ouvre l'editeur nflow, un editeur de diagrammes base navigateur pour construire et simuler des modeles. Appele sans argument, il s'ouvre sur un modele vide ; appele avec un fichier #strong[.nflow];, il ouvre ce modele.

 #strong[nflow]; est le lanceur bas niveau. Pour ouvrir un modele deja charge en memoire (par nom ou par handle), ou une archive #strong[.ssp];, utilisez #strong[open\_system];, qui resout ces entrees puis ouvre l'editeur.

 L'editeur travaille sur le modele avec lequel il a ete ouvert ; les modifications faites cote script pendant que la fenetre est ouverte ne lui sont pas transmises en direct.


== Exemple

Ouvrir un editeur vide, puis un fichier modele

``````matlab
nflow();
model = [modulepath('nflow_blocks', 'root'), '/examples/acausal/Acausal_EMF_DC_Motor_Demo.nflow'];
nflow(model);
``````


== Voir aussi

#nlink(<nflow_gui:open_system>)[open\_system];, #nlink(<nflow_engine:new_system>)[new\_system];, #nlink(<nflow_engine:sim>)[sim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
