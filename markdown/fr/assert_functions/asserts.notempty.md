# asserts.notempty

Verifie qu'une valeur n'est pas vide.

## 📝 Syntaxe

- asserts.notempty(value)
- [res, msg] = asserts.notempty(value)

## 📥 Argument d'entrée

- value - Valeur a tester.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

L'assertion reussit lorsque value a au moins un element.

Utiliser asserts.empty pour l'assertion inverse.

## 💡 Exemples

Non-empty value

```matlab
asserts.notempty(1);
```

Capture an empty value

```matlab
[res, msg] = asserts.notempty([]);
```

## 🔗 Voir aussi

[asserts.empty](../assert_functions/asserts.empty.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
