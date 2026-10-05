#import "nelson_help.typ": *

= error <error_manager:error>

Lever une erreur.

== Syntaxe

- #raw("error(id, msg)");
- #raw("error(id, msg, A, ...)");
- #raw("error(msg)");
- #raw("error(msg, A, ...)");
- #raw("error(error_structure)");
- #raw("error(correction, ...)");

== Argument d'entrée

/ id: une chaine : identifiant d'erreur.
/ msg: une chaine : message ou format.
/ A: valeurs utilisees pour formater le message.
/ error\_structure: structure scalaire avec les champs message, identifier ou stack.
/ correction: un objet nelson.lang.correction.

== Description

#strong[error]; arrete l'execution du script en cours.

 #strong[error('')]; sera ignoree et le script continuera a s'executer.

 #strong[error(msg, A, ...)]; et #strong[error(id, msg, A, ...)]; formatent le message avec les memes regles que #strong[sprintf];.

 #strong[error(error\_structure)]; accepte une structure scalaire. Les champs absents sont traites comme des valeurs vides, et les champs supplementaires sont ignores.

 Quand #strong[error\_structure.stack]; est fourni, seuls les champs #strong[file];, #strong[name]; et #strong[line]; sont utilises. Les champs supplementaires de stack sont ignores. Les valeurs non entieres de #strong[line]; utilisent leur partie reelle entiere ; les valeurs numeriques invalides utilisent #strong[0];.

 #strong[error(correction, ...)]; conserve l'objet de correction dans la MException levee.

 L'identifiant inclut un ou plusieurs champs composants et un champ mnemonique (exemple : 'nelson:matrix:empty').

 #strong[Comment construire un identifiant d'erreur.]; Un identifiant s'ecrit #strong[composant:mnemonique];, avec un ou plusieurs champs composants suivis d'un mnemonique, chaque champ commencant par une lettre et ne contenant que des lettres, des chiffres ou des tirets bas, separes par des deux-points (exemple : 'Nelson:elementary\_functions:notFinite'). Les identifiants leves par Nelson lui-meme utilisent #strong[Nelson]; comme premier composant ; dans votre propre code, utilisez un composant de votre choix (par exemple le nom de votre module ou de votre boite a outils).

 Quelques regles gardent les identifiants utiles :

 - Le composant devrait pointer vers la zone qui leve l'erreur (un module, une classe ou un nom de fonction) ; le mnemonique devrait nommer la verification precise en camelCase (exemple : 'mustBeFinite', 'tooManyInputs').

 - Pour les erreurs qui peuvent survenir partout (nombre d'arguments, indexation, forme de valeur attendue), un identifiant court a deux champs suffit (exemple : 'Nelson:tooManyInputs', 'Nelson:badsubscript').

 - Donnez a un identifiant un seul texte de message : un identifiant reutilise avec plusieurs messages differents ne peut pas etre traduit et est retire du catalogue de messages.

 - Reutilisez un identifiant existant pour la meme condition plutot que de creer un quasi-doublon, et gardez le mnemonique stable et descriptif (n'y encodez pas une valeur d'execution).


== Exemples

``````matlab
error('your error message.')
error('nelson:identifier', 'your error message.')
error('Value %d', 7)
error('')
``````

``````matlab
1 / [1 2 3]
a = lasterror()
lasterror('reset')
b = lasterror()
error(a)
c = lasterror()
``````


== Voir aussi

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:lasterror>)[lasterror];, #nlink(<error_manager:warning>)[warning];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
