# addCause

Ajoute une cause a MException.

## 📝 Syntaxe

- ME = addCause(ME, causeException)
- ME = ME.addCause(causeException)

## 📥 Argument d'entrée

- ME - un objet MException scalaire.
- causeException - un objet MException scalaire a ajouter comme cause.

## 📤 Argument de sortie

- ME - un nouvel objet MException contenant la cause supplementaire.

## 📄 Description


<b>addCause</b> renvoie un nouvel objet MException avec <b>causeException</b> ajoutee a la propriete <b>cause</b>. 

L'objet MException original n'est pas modifie.

## 💡 Exemples



```matlab
errID = 'MYFUN:BadIndex';
msg = 'Unable to index into array.';
baseException = MException(errID, msg);
causeException = MException('MYFUN:BadSubscript', 'Index must be positive.');
newException = baseException.addCause(causeException)
```


```matlab
errID = 'MYFUN:BadIndex';
msg = 'Unable to index into array.';
baseException = MException(errID, msg);
newException = addCause(baseException, baseException)
newException.cause{1}
```


## 🔗 Voir aussi

[MException](../error_manager/MException.md), [addCorrection](../error_manager/addCorrection.md), [getReport](../error_manager/getReport.md), [throw](../error_manager/throw.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
