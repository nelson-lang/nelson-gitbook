#import "nelson_help.typ": *

= MException <error_manager:MException>

Informations sur l'exception MException.

== Syntaxe

- #raw("ME = MException(identifier, message)");
- #raw("ME = MException(identifier, format, A, ...)");
- #raw("ME = addCause(ME, causeException)");
- #raw("ME = ME.addCause(causeException)");
- #raw("ME = addCorrection(ME, correction)");
- #raw("report = getReport(ME)");
- #raw("report = ME.getReport(type)");
- #raw("exception = MException.last");
- #raw("MException.last('reset')");

== Argument d'entrée

/ identifier: une chaine : identifiant d'erreur.
/ message: une chaine de caracteres.
/ format: une chaine utilisee pour formater le message d'erreur.
/ causeException: un objet MException scalaire.
/ correction: un objet nelson.lang.correction.
/ type: 'basic' ou 'extended'.

== Argument de sortie

/ ME: un objet MException.
/ report: une chaine : rapport formate de l'exception.

== Description

Tout code Nelson qui detecte une erreur et leve une exception construit un objet MException.

 L'identifiant inclut un ou plusieurs champs composants et un champ mnemonique (exemple : 'nelson:matrix:empty').

 #strong[MException]; est une classe integree. Elle possede les proprietes en lecture seule #strong[identifier];, #strong[message];, #strong[cause];, #strong[stack]; et #strong[Correction];.

 #strong[ME \= MException(identifier, format, A, ...)]; formate le message avec les memes regles que #strong[sprintf];.

 #strong[addCause]; renvoie un nouvel objet MException avec une cause supplementaire.

 #strong[addCorrection]; renvoie un nouvel objet MException avec un objet de correction. Les objets de correction Nelson sont dans le paquet #strong[nelson.lang.correction];.

 #strong[getReport]; renvoie un rapport formate de l'exception.

 #strong[MException.last]; renvoie la derniere exception non interceptee enregistree par l'evaluateur. #strong[MException.last('reset')]; l'efface.


== Exemples

``````matlab
ME = MException('nelson:identifier', 'your error message.');
throw(ME)
``````

``````matlab
ME = MException('nelson:badIndex', 'Unable to index into array %s.', 'A');
causeException = MException('nelson:badSubscript', 'Index must be positive.');
ME = ME.addCause(causeException)
getReport(ME, 'basic')
``````

``````matlab
ME = MException('nelson:missingArgument', 'Missing argument.');
correction = nelson.lang.correction.AppendArgumentsCorrection('value');
ME = addCorrection(ME, correction)
ME.Correction
``````


== Voir aussi

#nlink(<error_manager:error>)[error];, #nlink(<interpreter:try>)[try];, #nlink(<error_manager:throw>)[throw];, #nlink(<error_manager:rethrow>)[rethrow];, #nlink(<error_manager:throwAsCaller>)[throwAsCaller];, #nlink(<error_manager:addCause>)[addCause];, #nlink(<error_manager:addCorrection>)[addCorrection];, #nlink(<error_manager:getReport>)[getReport];, #nlink(<error_manager:MException.last>)[MException.last];, #nlink(<error_manager:lasterror>)[lasterror];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
