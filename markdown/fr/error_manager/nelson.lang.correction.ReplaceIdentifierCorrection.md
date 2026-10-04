# nelson.lang.correction.ReplaceIdentifierCorrection

Corrige une erreur en remplacant un identifiant dans un appel de fonction.

## 📝 Syntaxe

- correction = nelson.lang.correction.ReplaceIdentifierCorrection(identifier, replacement)

## 📥 Argument d'entrée

- identifier - identifiant incorrect dans l'appel de fonction.
- replacement - identifiant de remplacement.

## 📤 Argument de sortie

- correction - un objet nelson.lang.correction.ReplaceIdentifierCorrection.

## 📄 Description

Utilisez les objets <b>nelson.lang.correction.ReplaceIdentifierCorrection</b> dans les fonctions qui levent un objet MException.

<b>correction = nelson.lang.correction.ReplaceIdentifierCorrection(identifier, replacement)</b> cree une correction qui suggere de remplacer <b>identifier</b> par <b>replacement</b> dans l'appel de fonction qui a leve l'objet MException.

Les proprietes en lecture seule <b>Identifier</b> et <b>Replacement</b> contiennent l'identifiant incorrect et l'identifiant de remplacement.

## 💡 Exemple

```matlab
ME = MException('nelson:unknownName', 'Unknown identifier.');
correction = nelson.lang.correction.ReplaceIdentifierCorrection('oldName', 'newName');
ME = addCorrection(ME, correction)
ME.Correction.Replacement
```

## 🔗 Voir aussi

[addCorrection](../error_manager/addCorrection.md), [nelson.lang.correction.AppendArgumentsCorrection](../error_manager/nelson.lang.correction.AppendArgumentsCorrection.md), [nelson.lang.correction.ConvertToFunctionNotationCorrection](../error_manager/nelson.lang.correction.ConvertToFunctionNotationCorrection.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
