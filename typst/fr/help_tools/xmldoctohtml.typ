#import "nelson_help.typ": *

= xmldoctohtml <help_tools:xmldoctohtml>

Convertit des fichiers d'aide XML Nelson en HTML.

== Syntaxe

- #raw("status = xmldoctohtml(source_dirs, destination_dir, main_title, overwrite)");
- #raw("status = xmldoctohtml(source_dirs, destination_dir, main_title, overwrite, index_dirs)");

== Argument d'entrée

/ source\_dirs: une cellule de chaînes : liste des noms de fichiers xml.
/ destination\_dir: une chaîne : répertoire de destination.
/ main\_title: une chaîne : titre de l'index principal.
/ overwrite: un booléen : forcer l'écrasement si le fichier de destination existe déjà.
/ index\_dirs: une cellule de chaînes (optionnel) : racines XML d'aide des autres modules dont les pages peuvent être liées, utilisées pour résoudre \<link linkend\="\${module}nom"\>.
/ html\_type: une chaîne : 'web' (par défaut) ou 'html' (local).

== Argument de sortie

/ status: un booléen : fichiers générés ou non.

== Description

#strong[xmldoctohtml]; convertit des fichiers d'aide XML Nelson en HTML.

 Les éléments link de chapter\_description restent des liens dans le sommaire de chapitre généré. Une cible linkend telle que guide ou nested\/guide est relative à la racine du module ; \${module}guide et {module}guide désignent un module explicite. Les cibles sont les chemins des pages XML sans leur extension, des mots-clés ou des alias : chaque lien est résolu à partir de l'index des mots-clés de source\_dirs et index\_dirs et pointe vers la page réelle, même dans un sous-répertoire de chapitre ou si le nom de fichier diffère du mot-clé. Les liens non résolus sont signalés par des avertissements.


== Voir aussi

#nlink(<help_tools:xmldocbuild>)[xmldocbuild];, #nlink(<help_tools:buildhelp>)[buildhelp];, #nlink(<help_tools:buildhelpweb>)[buildhelpweb];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [argument index\_dirs : liens résolus à partir de l'index des mots-clés.],
  [1.15.0], [html\_type input argument],
)

// Auteur: Allan CORNET
