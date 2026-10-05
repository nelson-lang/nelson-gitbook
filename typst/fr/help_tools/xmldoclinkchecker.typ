#import "nelson_help.typ": *

= xmldoclinkchecker <help_tools:xmldoclinkchecker>

Vérifie les références croisées non résolues dans les fichiers d'aide XML de Nelson.

== Syntaxe

- #raw("xmldoclinkchecker()");
- #raw("xmldoclinkchecker(xmldocfilename)");
- #raw("xmldoclinkchecker(xmldocdirectory)");
- #raw("[state, errors_detected, warnings_detected] = xmldoclinkchecker(target)");

== Argument d'entrée

/ target: une chaîne : fichier XML ou répertoire à vérifier.

== Argument de sortie

/ state: un booléen : vrai si toutes les références sont résolues, faux sinon.
/ errors\_detected: un tableau (cell) de chaînes : références de liens non résolues et erreurs associées.
/ warnings\_detected: un tableau (cell) de chaînes : avertissements détectés pendant la validation.

== Description

#strong[xmldoclinkchecker]; valide les références #raw("\n        <link linkend=\"...\"/>\n      "); utilisées dans les pages d'aide XML de Nelson.

 Il vérifie les références dans un seul fichier XML, un arbre de répertoires, ou dans tous les fichiers XML d'aide des modules installés lorsqu'il est appelé sans argument.

 Cette fonction est utile pour détecter les références croisées cassées avant de générer l'aide HTML\/Markdown.

 La cible du lien utilise le nom du fichier XML sans l'extension #raw(".xml");, éventuellement préfixé par un nom de module comme #raw("${dynamic_link}havecompiler");.


== Exemples

Vérifier les liens dans un fichier XML d'aide.

``````matlab
[state, errors_detected] = xmldoclinkchecker([modulepath('help_tools'), '/help/fr_FR/xml/xmldocchecker.xml'])
``````

Vérifier tous les liens dans le répertoire XML d'aide d'un module.

``````matlab
xmldoclinkchecker([modulepath('help_tools'), '/help/fr_FR/xml'])
``````


== Voir aussi

#nlink(<help_tools:xmldocchecker>)[xmldocchecker];, #nlink(<help_tools:xmldocbuild>)[xmldocbuild];, #nlink(<help_tools:buildhelp>)[buildhelp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
