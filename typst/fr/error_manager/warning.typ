#import "nelson_help.typ": *

= warning <error_manager:warning>

Afficher un message d'avertissement.

== Syntaxe

- #raw("warning()");
- #raw("warning(msg)");
- #raw("warning(id, msg)");
- #raw("warning(state)");
- #raw("warning(state, id)");
- #raw("st = warning()");
- #raw("warning(st)");

== Argument d'entrée

/ id: une chaîne : identifiant pour l'avertissement.
/ msg: une chaîne : message d'avertissement.
/ state: une chaîne : 'on', 'off', 'aserror', 'all' ou 'query'.
/ st: une structure : définir les paramètres d'avertissement.

== Argument de sortie

/ st: une structure : paramètres d'avertissement.

== Description

#strong[warning]; affiche un message d'avertissement.

 #strong[warning(' ')]; réinitialise l'état de lastwarn.

 Lors d'un appel #strong[warning(id, msg, ...)]; ou #strong[warning(state, id)];, l'identifiant s'écrit #strong[composant:mnémonique];, avec un ou plusieurs champs composants suivis d'un mnémonique, chaque champ commençant par une lettre et ne contenant que des lettres, des chiffres ou des tirets bas, séparés par des deux-points (exemple : 'Nelson:io:fileNotFound'). Les avertissements levés par Nelson utilisent #strong[Nelson]; comme premier composant ; dans votre propre code, utilisez un composant de votre choix (par exemple le nom de votre module).

 Quelques règles gardent les identifiants utiles : le composant devrait pointer vers la zone qui lève l'avertissement et le mnémonique devrait nommer le cas précis en camelCase ; un identifiant court à deux champs suffit pour les cas qui peuvent survenir partout ; donnez à un identifiant un seul texte de message (un identifiant réutilisé avec plusieurs messages différents ne peut pas être traduit) ; et réutilisez un identifiant existant pour le même cas plutôt qu'un quasi-doublon. L'identifiant est aussi ce que #strong[warning('off', id)]; et #strong[warning('on', id)]; activent ou désactivent, donc un identifiant stable permet aux utilisateurs de contrôler l'avertissement.


== Exemples

``````matlab
warning('your warning message.')
``````

``````matlab
warning('on', 'myModule:identifier');
warning('myModule:identifier', 'my message 1 on');
warning('off', 'myModule:identifier');
warning('myModule:identifier', 'my message 2 off');
warning('aserror', 'myModule:identifier');
warning('myModule:identifier', 'my message 3 as error');


``````


== Voir aussi

#nlink(<error_manager:lasterror>)[lasterror];, #nlink(<error_manager:error>)[error];, #nlink(<error_manager:lastwarn>)[lastwarn];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
