# nelson.lang.correction.AppendArgumentsCorrection

Corrige une erreur en ajoutant des arguments manquants.

## 📝 Syntaxe

- correction = nelson.lang.correction.AppendArgumentsCorrection(arguments)

## 📥 Argument d'entrée

- arguments - arguments suggeres, specifies sous forme de chaine, vecteur de caracteres ou tableau cellulaire de vecteurs de caracteres.

## 📤 Argument de sortie

- correction - un objet nelson.lang.correction.AppendArgumentsCorrection.

## 📄 Description


Utilisez les objets <b>nelson.lang.correction.AppendArgumentsCorrection</b> dans les fonctions qui levent un objet MException. 

<b>correction = nelson.lang.correction.AppendArgumentsCorrection(arguments)</b> cree une correction qui suggere d'ajouter les arguments d'entree <b>arguments</b> a l'appel de fonction qui a leve l'objet MException. 

La propriete en lecture seule <b>Arguments</b> contient les arguments suggeres.

## 💡 Exemple



```matlab
ME = MException('nelson:notEnoughInputs', 'Not enough input arguments.');
correction = nelson.lang.correction.AppendArgumentsCorrection('"world"');
ME = addCorrection(ME, correction)
ME.Correction.Arguments
```


## 🔗 Voir aussi

[addCorrection](../error_manager/addCorrection.md), [nelson.lang.correction.ConvertToFunctionNotationCorrection](../error_manager/nelson.lang.correction.ConvertToFunctionNotationCorrection.md), [nelson.lang.correction.ReplaceIdentifierCorrection](../error_manager/nelson.lang.correction.ReplaceIdentifierCorrection.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
