# getReport

Obtient le rapport MException.

## 📝 Syntaxe

- report = getReport(ME)
- report = getReport(ME, type)
- report = ME.getReport(type)

## 📥 Argument d'entrée

- ME - un objet MException scalaire.
- type - 'basic' ou 'extended'.

## 📤 Argument de sortie

- report - une chaine : rapport formate de l'exception.

## 📄 Description


<b>getReport</b> renvoie un rapport formate pour un objet MException. 

Le rapport <b>basic</b> contient le message de l'exception. Le rapport <b>extended</b> inclut des informations de diagnostic supplementaires lorsqu'elles sont disponibles.

## 💡 Exemple



```matlab
ME = MException('nelson:badIndex', 'Unable to index into array.');
getReport(ME, 'basic')
```


## 🔗 Voir aussi

[MException](../error_manager/MException.md), [addCause](../error_manager/addCause.md), [throw](../error_manager/throw.md), [getLastReport](../error_manager/getLastReport.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
