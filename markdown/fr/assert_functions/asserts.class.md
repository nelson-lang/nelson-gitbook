# asserts.class

Verifie qu'une valeur a la classe attendue.

## 📝 Syntaxe

- asserts.class(value, expectedClass)
- [res, msg] = asserts.class(value, expectedClass)

## 📥 Argument d'entrée

- value - Valeur a tester.
- expectedClass - Nom de classe attendu sous forme de vecteur de caracteres ou scalaire string.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

L'assertion reussit lorsque class(value) correspond a expectedClass.

Utiliser asserts.type pour accepter une classe parmi plusieurs classes autorisees.

## 💡 Exemples

Expected class

```matlab
asserts.class(single(1), 'single');
```

Capture a class failure

```matlab
[res, msg] = asserts.class(int32(1), 'double');
```

## 🔗 Voir aussi

[asserts.type](../assert_functions/asserts.type.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
