#import "nelson_help.typ": *

= execstr <core:execstr>

Exécute une chaîne comme commande.

== Syntaxe

- #raw("execstr(str)");
- #raw("execstr(str, 'nocatch')");
- #raw("bSuccess = execstr(str, 'errcatch')");

== Argument d'entrée

/ str: chaîne : commande à exécuter

== Argument de sortie

/ bSuccess: un logique : vrai ou faux si la commande échoue

== Description

Exécute la chaîne fournie comme une commande dans l'environnement Nelson.


== Exemples

``````matlab
execstr('b = ''hello''; disp(b);')
``````

Cet exemple échouera et renverra un message d'erreur.

``````matlab
execstr('b = yyyy')
``````

Cet exemple échouera et renverra un message d'erreur.

``````matlab
execstr('b = yyyy', 'nocatch')
``````

Cet exemple ne échouera pas et renverra faux.

``````matlab
r = execstr('b = yyyy', 'errcatch')
``````


== Voir aussi

#nlink(<core:run>)[run];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
