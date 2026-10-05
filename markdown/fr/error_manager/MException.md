# MException

Informations sur l'exception MException.

## 📝 Syntaxe

- ME = MException(identifier, message)
- ME = MException(identifier, format, A, ...)
- ME = addCause(ME, causeException)
- ME = ME.addCause(causeException)
- ME = addCorrection(ME, correction)
- report = getReport(ME)
- report = ME.getReport(type)
- exception = MException.last
- MException.last('reset')

## 📥 Argument d'entrée

- identifier - une chaine : identifiant d'erreur.
- message - une chaine de caracteres.
- format - une chaine utilisee pour formater le message d'erreur.
- causeException - un objet MException scalaire.
- correction - un objet nelson.lang.correction.
- type - 'basic' ou 'extended'.

## 📤 Argument de sortie

- ME - un objet MException.
- report - une chaine : rapport formate de l'exception.

## 📄 Description


Tout code Nelson qui detecte une erreur et leve une exception construit un objet MException. 

L'identifiant inclut un ou plusieurs champs composants et un champ mnemonique (exemple : 'nelson:matrix:empty'). 

<b>MException</b> est une classe integree. Elle possede les proprietes en lecture seule <b>identifier</b>, <b>message</b>, <b>cause</b>, <b>stack</b> et <b>Correction</b>. 

<b>ME = MException(identifier, format, A, ...)</b> formate le message avec les memes regles que <b>sprintf</b>. 

<b>addCause</b> renvoie un nouvel objet MException avec une cause supplementaire. 

<b>addCorrection</b> renvoie un nouvel objet MException avec un objet de correction. Les objets de correction Nelson sont dans le paquet <b>nelson.lang.correction</b>. 

<b>getReport</b> renvoie un rapport formate de l'exception. 

<b>MException.last</b> renvoie la derniere exception non interceptee enregistree par l'evaluateur. <b>MException.last('reset')</b> l'efface.

## 💡 Exemples



```matlab
ME = MException('nelson:identifier', 'your error message.');
throw(ME)
```


```matlab
ME = MException('nelson:badIndex', 'Unable to index into array %s.', 'A');
causeException = MException('nelson:badSubscript', 'Index must be positive.');
ME = ME.addCause(causeException)
getReport(ME, 'basic')
```


```matlab
ME = MException('nelson:missingArgument', 'Missing argument.');
correction = nelson.lang.correction.AppendArgumentsCorrection('value');
ME = addCorrection(ME, correction)
ME.Correction
```


## 🔗 Voir aussi

[error](../error_manager/error.md), [try](../interpreter/try.md), [throw](../error_manager/throw.md), [rethrow](../error_manager/rethrow.md), [throwAsCaller](../error_manager/throwAsCaller.md), [addCause](../error_manager/addCause.md), [addCorrection](../error_manager/addCorrection.md), [getReport](../error_manager/getReport.md), [MException.last](../error_manager/MException.last.md), [lasterror](../error_manager/lasterror.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
