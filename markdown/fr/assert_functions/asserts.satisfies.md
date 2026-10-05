# asserts.satisfies

Verifie une valeur avec un predicat personnalise.

## 📝 Syntaxe

- asserts.satisfies(value, predicate)
- [res, msg] = asserts.satisfies(value, predicate)

## 📥 Argument d'entrée

- value - Valeur passee comme unique entree au predicat.
- predicate - Handle de fonction ou nom de fonction. Il doit retourner un scalaire logique.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque predicate(value) retourne le scalaire logique true. 

Les predicats invalides ou les resultats non logiques levent immediatement une erreur d'argument.

## 💡 Exemples

Named predicate

```matlab
asserts.satisfies(1, 'isnumeric');
```
Function handle predicate

```matlab
asserts.satisfies(1, @(x) isscalar(x));
```
Capture predicate failure

```matlab
[res, msg] = asserts.satisfies([1 2], @(x) isscalar(x));
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
