#import "nelson_help.typ": *

= open\_system <nflow_gui:open_system>

Ouvre l'éditeur nflow sur un modèle, un fichier modèle ou une archive SSP.

== Syntaxe

- #raw("open_system(name)");
- #raw("open_system(handle)");
- #raw("open_system(file)");

== Argument d'entrée

/ name: un vecteur de caractères : le nom d'un modèle déjà chargé en mémoire.
/ handle: un handle numérique vers un modèle créé par l'API programmatique.
/ file: un vecteur de caractères : le chemin d'un fichier modèle #strong[.nflow];, ou d'une archive #strong[.ssp]; (System Structure and Parameterization).

== Description

#strong[open\_system]; ouvre l'éditeur nflow sur un modèle. Un modèle déjà chargé en mémoire (par nom ou par handle) est capturé dans un fichier puis ouvert ; un fichier #strong[.nflow]; est ouvert directement.

 Lorsque l'argument est une archive #strong[.ssp];, ce n'est pas un diagramme : elle est d'abord importée avec #strong[NFlow.sspImport]; (ses FMU de composants sont extraits, câblés par nom de connecteur et écrits dans un modèle #strong[.nflow]; exécutable) et le modèle obtenu est ouvert. Une composition SSP peut ainsi être ouverte dans l'éditeur en une seule étape.

 L'éditeur travaille sur la capture avec laquelle il a été ouvert ; les modifications faites côté script pendant que la fenêtre est ouverte ne lui sont pas transmises en direct.


== Exemple

Ouvrir une composition SSP dans l'éditeur

``````matlab
ssp = [modulepath('nflow_fmi', 'root'), '/examples/ControlledDrivetrain.ssp'];
open_system(ssp);
``````


== Voir aussi

#nlink(<nflow_engine:ssp>)[NFlow.sspInfo];, #nlink(<nflow_engine:sim>)[sim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [open\_system accepte une archive .ssp (importée puis ouverte)],
)

// Auteur: Allan CORNET
