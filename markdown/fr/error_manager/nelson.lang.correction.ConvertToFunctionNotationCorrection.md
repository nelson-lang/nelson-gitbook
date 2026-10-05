# nelson.lang.correction.ConvertToFunctionNotationCorrection

Corrige une erreur en convertissant vers la notation fonction.

## 📝 Syntaxe

- correction = nelson.lang.correction.ConvertToFunctionNotationCorrection(method)

## 📥 Argument d'entrée

- method - nom de methode qui doit etre appelee avec la notation fonction.

## 📤 Argument de sortie

- correction - un objet nelson.lang.correction.ConvertToFunctionNotationCorrection.

## 📄 Description


Utilisez les objets <b>nelson.lang.correction.ConvertToFunctionNotationCorrection</b> dans les classes dont les methodes ne doivent pas etre appelees avec la notation point. 

<b>correction = nelson.lang.correction.ConvertToFunctionNotationCorrection(method)</b> cree une correction qui suggere de convertir la notation point en notation fonction pour appeler <b>method</b>. 

La propriete en lecture seule <b>Method</b> contient le nom de la methode.

## 💡 Exemple



```matlab
ME = MException('nelson:useFunctionForm', 'Use function syntax to call this method.');
correction = nelson.lang.correction.ConvertToFunctionNotationCorrection('isvalid');
ME = addCorrection(ME, correction)
ME.Correction.Method
```


## 🔗 Voir aussi

[addCorrection](../error_manager/addCorrection.md), [nelson.lang.correction.AppendArgumentsCorrection](../error_manager/nelson.lang.correction.AppendArgumentsCorrection.md), [nelson.lang.correction.ReplaceIdentifierCorrection](../error_manager/nelson.lang.correction.ReplaceIdentifierCorrection.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
