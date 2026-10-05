#import "nelson_help.typ": *

= checkupdate <webtools:checkupdate>

Vérifier la mise à jour de l'application Nelson

== Syntaxe

- #raw("checkupdate()");
- #raw("checkupdate('url', http_url_to_check)");
- #raw("checkupdate('forcenogui', true_or_false)");
- #raw("checkupdate('url', http_url_to_check, 'forcenogui', true_or_false)");
- #raw("checkupdate('forcenogui', true_or_false)");
- #raw("[res, msg, url_new_version] = checkupdate(...)");

== Argument d'entrée

/ http\_url\_to\_check: chaîne : URL pour vérifier la dernière version de l'application Nelson.
/ true\_or\_false: logique : true (forcer le mode CLI), false (détecter le mode par défaut).

== Argument de sortie

/ res: logique : résultat de la vérification de mise à jour.
/ msg: chaîne : message d'information sur la vérification de la mise à jour.
/ url\_new\_version: chaîne : URL pour télécharger la nouvelle version si disponible.

== Description

#strong[checkupdate]; vérifie si une nouvelle version de Nelson est disponible et ouvre une URL pour la télécharger.

 Cette fonction est principalement utilisée via l'action de menu disponible dans la section d'aide de la fenêtre principale.


== Exemple

``````matlab
checkupdate
``````


== Voir aussi

#nlink(<webtools:webread>)[webread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.2.0], [version initiale],
)

// Auteur: Allan CORNET
