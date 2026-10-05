# asserts.fail

Force un echec d'assertion.

## 📝 Syntaxe

- asserts.fail()
- asserts.fail(message)
- [res, msg] = asserts.fail(message)

## 📥 Argument d'entrée

- message - Message d'echec personnalise optionnel.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


Utiliser cette assertion pour marquer un chemin d'execution qui ne doit pas etre atteint. 

Avec sorties, aucune erreur n'est levee et res vaut false.

## 💡 Exemples

Capture a forced failure

```matlab
[res, msg] = asserts.fail('unreachable branch');
```
Raise a forced failure

```matlab
try; asserts.fail('unreachable branch'); catch ME; disp(ME.message); end
```


## 🔗 Voir aussi

[asserts.istrue](../assert_functions/asserts.istrue.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
