#import "nelson_help.typ": *

= help <help_tools:help>

Aide pour les fonctions dans la fenêtre de commande.

== Syntaxe

- #raw("help function_name");
- #raw("help('function_name')");
- #raw("txt = help('function_name')");

== Argument d'entrée

/ function\_name: une chaîne de caractères : nom de fonction, mot-clé, alias ou nom de page XML externe

== Argument de sortie

/ txt: une chaîne de caractères : texte d'aide

== Description

#strong[help('function\_name')]; affiche le texte d'aide pour la fonctionnalité spécifiée.

 L'index JSON fourni avec Nelson est interrogé en premier. Si le mot-clé est absent, help recherche les pages XML des modules externes actuellement chargés dans help\/langue\/xml, y compris ses sous-dossiers. Une page est accessible par keyword, keyword\_alias ou son nom de fichier XML sans extension. Une API dans un namespace et un guide autonome ne nécessitent pas de macro portant le nom du mot-clé.

 Pour chaque module externe, la langue courante est recherchée, puis la langue par défaut si cette page est absente. Les modules chargés le plus récemment sont parcourus en premier. Les pages doivent avoir une racine xmldoc et ne pas contenir de DOCTYPE. Les pages illisibles ou mal formées sont ignorées ; le repli existant sur les commentaires de macro reste disponible en l'absence de page.

 Une page externe affiche sa description complète, ses syntaxes, descriptions des entrées\/sorties et exemples sous forme de texte. Les exemples ne sont jamais exécutés. Aucun index global n'est généré ou modifié ; un module déchargé n'est plus recherché. Les fichiers XML doivent rester présents : la seule archive d'aide HTML ne suffit pas pour cette commande. Le lecteur graphique de documentation reste une commande distincte.


== Exemple

``````matlab
help sin
``````


== Voir aussi

#nlink(<help_tools:doc>)[doc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Lecture des pages XML des modules externes chargés, y compris guides autonomes et API dans un namespace.],
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
