#import "nelson_help.typ": *

= xmldocbuild <help_tools:xmldocbuild>

Fonction interne pour convertir des fichiers XML en HTML.

== Syntaxe

- #raw("status = xmldocbuild(source_dirs, destination_dir, main_title, export_format, overwrite)");
- #raw("[status, msg, warnings] = xmldocbuild(source_dirs, destination_dir, main_title, export_format, overwrite, index_dirs)");

== Argument d'entrée

/ source\_dirs: une cellule de chaînes : liste des noms de fichiers xml.
/ destination\_dir: une chaîne : répertoire de destination.
/ main\_title: une chaîne : titre de l'index principal.
/ export\_format: une chaîne : 'html', 'md' ou 'typ'.
/ overwrite: un booléen : forcer l'écrasement si le fichier de destination existe déjà.
/ index\_dirs: une cellule de chaînes (optionnel) : racines XML d'aide des autres modules dont les pages peuvent être liées, utilisées pour résoudre \<link linkend\="\${module}nom"\>.

== Argument de sortie

/ status: un booléen : fichiers générés ou non.
/ msg: une chaîne : message d'erreur, vide en cas de succès.
/ warnings: une cellule de chaînes : liens non résolus. Sans cette sortie, chacun est émis comme avertissement.

== Description

#strong[xmldocbuild]; convertit des fichiers de documentation XML en HTML.

 fonction interne

 Les liens (\<link linkend\="..."\>) sont résolus à partir de l'index des mots-clés de source\_dirs et index\_dirs : la cible peut être un mot-clé, un alias ou le chemin d'une page relatif à la racine du module, éventuellement préfixé par \${module} ou {module}. Un lien résolu pointe vers la page réelle, même si elle se trouve dans un sous-répertoire de chapitre ou si son nom de fichier diffère de son mot-clé. Un lien non résolu conserve l'ancien chemin "\<module\>\/\<nom\>" et est signalé.


== Voir aussi

#nlink(<help_tools:buildhelp>)[buildhelp];, #nlink(<help_tools:buildhelpweb>)[buildhelpweb];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.15.0], ['qt' input parameter removed.],
  [2.0.0], [entrée index\_dirs et sortie warnings : liens résolus à partir de l'index des mots-clés.],
)

// Auteur: Allan CORNET
