#import "nelson_help.typ": *

= deployhelp <help_tools:deployhelp>

Installer, désinstaller et gérer le système d'aide local de Nelson et les fichiers d'aide des modules.

== Syntaxe

- #raw("deployhelp('install')");
- #raw("deployhelp('install', verbose)");
- #raw("deployhelp('add', module_name, module_help_dir)");
- #raw("deployhelp('remove', module_name)");
- #raw("[status, message] = deployhelp('uninstall')");
- #raw("status = deployhelp('status')");
- #raw("[status, message] = deployhelp('refresh')");

== Argument d'entrée

/ 'install': Installer le système d'aide local (tous les modules, toutes les langues). Le deuxième argument optionnel verbose (logique) contrôle la verbosité ; la valeur par défaut est true.
/ module\_name: Nom du module à ajouter ou à supprimer de l'arborescence d'aide locale.
/ module\_help\_dir: Répertoire contenant l'(les) archive(s) d'aide du module.
/ verbose: scalaire logique (true\/false). Lorsqu'il est fourni à 'install', il contrôle si les étapes d'installation affichent une sortie détaillée.

== Description

La fonction gère un répertoire d'aide local versionné sous userdir()\/Nelson\/\<version\>\/help\/.

 Actions :

 #strong[install];: crée et installe le système d'aide local (appelle docroot('.') et installe localement). Utilisez l'option verbose pour activer ou désactiver la sortie détaillée.

 #strong[add];: extrait les archives d'aide .nhz par langue trouvées dans module\_help\_dir\/help\/ vers les répertoires versionnés help\/lang\/\<module\_name\>.

 #strong[remove];: supprime le répertoire d'aide du module pour chaque langue.

 #strong[refresh];, #strong[uninstall];,#strong[status];: respectivement rafraîchit la base de données d'aide, désinstalle le système d'aide local ou renvoie si le dossier d'aide local existe. Les actions qui peuvent échouer renvoient \[status, message\].


== Voir aussi

#nlink(<help_tools:doc>)[doc];, #nlink(<help_tools:docroot>)[docroot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
