#import "nelson_help.typ": *

= docroot <help_tools:docroot>

Récupère ou met à jour le répertoire racine du système d'aide de Nelson.

== Syntaxe

- #raw("r = docroot()");
- #raw("r = docroot(new_docroot)");

== Argument d'entrée

/ new\_docroot: a string: ' ', '.', or a URL.

== Description

#strong[docroot]; récupère ou met à jour le répertoire racine de l'aide de Nelson.

 Lorsqu'il est appelé sans argument, #strong[docroot]; renvoie le répertoire racine actuel de l'aide de Nelson. Par défaut, il renvoie l'URL du site d'aide utilisé par Nelson.

 Lorsque appelé avec un argument,#strong[docroot]; met à jour le répertoire racine de l'aide de Nelson.

 #strong[docroot(' ')]; réinitialise le répertoire racine de l'aide de Nelson à la valeur par défaut.

 #strong[docroot('.')]; utilise les fichiers d'aide locaux et le navigateur local (restaure le comportement avant la v1.11.0).


== Exemple

``````matlab

docroot()
doc rand
docroot('.')
doc rand
docroot('')
      
``````


== Voir aussi

#nlink(<help_tools:doc>)[doc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [version initiale],
)

// Auteur: Allan CORNET
