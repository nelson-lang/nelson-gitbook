# assert\_isequal

Nom historique de asserts.isequal.

## 📝 Syntaxe

- assert\_isequal(computed, expected)
- assert\_isequal(computed, expected, message)
- res = assert\_isequal(computed, expected)
- [res, msg] = assert\_isequal(computed, expected)

## 📥 Argument d'entrée

- computed - Valeur calculee.
- expected - Valeur attendue.
- message - Message d'echec personnalise optionnel.

## 📤 Argument de sortie

- res - true si les valeurs sont egales, false sinon.
- msg - Message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


<b>assert\_isequal</b> est conservee pour compatibilite. 

Pour la documentation complete, utiliser [asserts.isequal](../assert_functions/asserts.isequal.md).

## Fonction(s) utilisée(s)

isequaln

## 💡 Exemples

Appel historique

```matlab
assert_isequal([1 2], [1 2]);
```
Appel canonique

```matlab
asserts.isequal([1 2], [1 2]);
```


## 🔗 Voir aussi

[asserts.isequal](../assert_functions/asserts.isequal.md), [isequaln](../elementary_functions/7_indexing_dimensions/isequaln.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | documentee comme nom historique de asserts.isequal |

<!--
## 👤 Auteur

Allan CORNET
-->
