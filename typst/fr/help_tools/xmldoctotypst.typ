#import "nelson_help.typ": *

= xmldoctotypst <help_tools:xmldoctotypst>

Convertit des fichiers d'aide XML Nelson en sources Typst.

== Syntaxe

- #raw("status = xmldoctotypst(source_dirs, destination_dir, main_title, overwrite)");
- #raw("[status, msg] = xmldoctotypst(source_dirs, destination_dir, main_title, overwrite)");
- #raw("[status, msg] = xmldoctotypst(source_dirs, destination_dir, main_title, overwrite, index_dirs)");

== Argument d'entrée

/ source\_dirs: une cellule de chaînes : liste des répertoires xml.
/ destination\_dir: une chaîne : répertoire de destination.
/ main\_title: une chaîne : titre du document principal.
/ overwrite: un booléen : forcer l'écrasement si le fichier de destination existe déjà.
/ index\_dirs: une cellule de chaînes : racines XML d'aide des autres modules, utilisées pour résoudre les liens inter-modules (optionnel).

== Argument de sortie

/ status: un booléen : fichiers générés ou non.
/ msg: une chaîne : message d'erreur si la génération échoue.

== Description

#strong[xmldoctotypst]; convertit des fichiers d'aide XML Nelson en sources Typst.

 Chaque page d'aide devient un fichier #raw(".typ"); dont le titre porte le label #raw("<module:page>");. Le répertoire de destination reçoit aussi #raw("main.typ"); (chapitres, liste des fonctions, et chaque page incluse un niveau de titre plus bas), #raw("toc.typ"); (table des matières) et #raw("nelson_help.typ"); (fonctions partagées importées par les pages).

 Les références croisées utilisent la fonction #raw("nlink"); : une référence devient un lien quand la page cible fait partie du document compilé, et reste du texte sinon. Les fragments LaTeX sont composés avec le paquet Typst #raw("mitex"); (fonction #raw("latex");). Un élément #raw("source_code"); avec les bornes #raw("start"); et #raw("end"); est imprimé comme un listing ; sans bornes, le fichier entier n'est cité que par son chemin (fonction #raw("source-ref");), ce qui garde le manuel compact.

 Compiler le résultat avec le compilateur typst : #raw("typst compile main.typ");.


== Exemple

``````matlab
source = [modulepath('help_tools'), '/help/fr_FR/xml'];
destination = [tempdir(), 'help_tools_typst'];
status = xmldoctotypst(source, destination, 'help_tools')
dir(destination)
``````


== Voir aussi

#nlink(<help_tools:xmldocbuild>)[xmldocbuild];, #nlink(<help_tools:buildhelptypst>)[buildhelptypst];, #nlink(<help_tools:xmldoctomd>)[xmldoctomd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
