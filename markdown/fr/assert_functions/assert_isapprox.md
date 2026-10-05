# assert\_isapprox

Nom historique de asserts.isapprox.

## 📝 Syntaxe

- assert\_isapprox(computed, expected)
- assert\_isapprox(computed, expected, precision)
- assert\_isapprox(computed, expected, precision, absolute\_tolerance)
- assert\_isapprox(computed, expected, message)
- res = assert\_isapprox(computed, expected)
- [res, msg] = assert\_isapprox(computed, expected)

## 📥 Argument d'entrée

- computed - Valeur numerique calculee.
- expected - Valeur numerique attendue.
- precision - Tolerance relative optionnelle.
- absolute\_tolerance - Tolerance absolue optionnelle.
- message - Message d'echec personnalise optionnel.

## 📤 Argument de sortie

- res - true si les valeurs sont approximativement egales, false sinon.
- msg - Message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


<b>assert\_isapprox</b> est conservee pour compatibilite. 

La tolérance absolue s'applique aux tableaux numériques creux et pleins, y compris aux zéros implicites, selon les mêmes règles que asserts.isapprox. 

Pour la documentation complete, utiliser [asserts.isapprox](../assert_functions/asserts.isapprox.md).

## Fonction(s) utilisée(s)

isapprox

## 💡 Exemples

Appel historique

```matlab
assert_isapprox(1.23456, 1.23457, 1e-5);
```
Appel canonique

```matlab
asserts.isapprox(1, 1 + 1e-8, 0, 1e-7);
```


## 🔗 Voir aussi

[asserts.isapprox](../assert_functions/asserts.isapprox.md), [isapprox](../elementary_functions/7_indexing_dimensions/isapprox.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | documentee comme nom historique de asserts.isapprox |

<!--
## 👤 Auteur

Allan CORNET
-->
