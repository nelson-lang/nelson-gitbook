# addCorrection

Ajoute une correction a MException.

## 📝 Syntaxe

- ME = addCorrection(ME, correction)
- ME = ME.addCorrection(correction)

## 📥 Argument d'entrée

- ME - un objet MException scalaire.
- correction - un objet nelson.lang.correction.AppendArgumentsCorrection, nelson.lang.correction.ConvertToFunctionNotationCorrection ou nelson.lang.correction.ReplaceIdentifierCorrection.

## 📤 Argument de sortie

- ME - un nouvel objet MException contenant la correction.

## 📄 Description


<b>addCorrection</b> renvoie un nouvel objet MException avec la propriete <b>Correction</b> definie a <b>correction</b>. 

Les objets de correction Nelson sont <b>nelson.lang.correction.AppendArgumentsCorrection</b>, <b>nelson.lang.correction.ConvertToFunctionNotationCorrection</b> et <b>nelson.lang.correction.ReplaceIdentifierCorrection</b>.

## 💡 Exemple



```matlab
ME = MException('nelson:missingArgument', 'Missing argument.');
correction = nelson.lang.correction.AppendArgumentsCorrection('value');
ME = addCorrection(ME, correction)
ME.Correction
```


## 🔗 Voir aussi

[MException](../error_manager/MException.md), [addCause](../error_manager/addCause.md), [getReport](../error_manager/getReport.md), [nelson.lang.correction.AppendArgumentsCorrection](../error_manager/nelson.lang.correction.AppendArgumentsCorrection.md), [nelson.lang.correction.ConvertToFunctionNotationCorrection](../error_manager/nelson.lang.correction.ConvertToFunctionNotationCorrection.md), [nelson.lang.correction.ReplaceIdentifierCorrection](../error_manager/nelson.lang.correction.ReplaceIdentifierCorrection.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
