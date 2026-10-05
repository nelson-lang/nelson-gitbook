# asserts.numel

Verifie le nombre d'elements d'une valeur.

## 📝 Syntaxe

- asserts.numel(value, n)
- [res, msg] = asserts.numel(value, n)

## 📥 Argument d'entrée

- value - valeur a tester.
- n - nombre d'elements attendu.

## 📤 Argument de sortie

- res - true si la valeur contient n elements.
- msg - message d'echec de l'assertion.

## 📄 Description


<b>asserts.numel</b> verifie le nombre d'elements.

## Fonction(s) utilisée(s)

numel

## 💡 Exemple

Verifier le nombre d'elements :

```matlab
asserts.numel(ones(2, 3), 6);
```


## 🔗 Voir aussi

[asserts.size](../assert_functions/asserts.size.md), [asserts.sameSize](../assert_functions/asserts.sameSize.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
