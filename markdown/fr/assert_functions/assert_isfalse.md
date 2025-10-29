# assert_isfalse

Vérifie que la condition est fausse.

## 📝 Syntaxe

- assert_isfalse(x)
- r = assert_isfalse(x)
- [r, msg] = assert_isfalse(x)
- assert_isfalse(x, err_msg)
- r = assert_isfalse(x, err_msg)
- [r, msg] = assert_isfalse(x, err_msg)

## 📥 Argument d'entrée

- x - une valeur logique à tester pour la fausseté.
- err_msg - une chaîne contenant le message d'erreur personnalisé à afficher en cas d'échec de l'assertion (optionnel).

## 📤 Argument de sortie

- r - une valeur logique : true si l'assertion réussit, false sinon.
- msg - une chaîne contenant le message d'erreur. Si x == false, alors msg == ''. Si x == true, alors msg contient le message d'échec de l'assertion.

## 📄 Description

<b>assert_isfalse</b> lève une erreur si la valeur d'entrée est vraie.

Cette fonction lève également une erreur si l'entrée n'est pas une valeur logique, garantissant la sécurité de type.

Lorsque le paramètre optionnel <b>err_msg</b> est fourni, il sera utilisé comme message d'erreur à la place du message par défaut en cas d'échec de l'assertion.

Cette fonction est utile dans les tests unitaires pour vérifier que des conditions sont fausses ou que des opérations logiques retournent le résultat faux attendu.

## 💡 Exemples

Test qui démontre l'échec de l'assertion (3 n'est pas égal à 4) :

```matlab
assert_isfalse(3 ~= 4)
```

Test qui réussit (3 égal 4 est faux) :

```matlab
assert_isfalse(3 == 4)
```

Test avec une valeur fausse explicite :

```matlab
r = assert_isfalse(false)
```

Utilisation des valeurs de retour pour gérer les résultats d'assertion :

```matlab
[r, msg] = assert_isfalse(false)
```

Test avec un message d'erreur personnalisé :

```matlab
[r, msg] = assert_isfalse(3 == 3, 'your error message.');
if ~r
    disp(['Custom error: ' msg])
end
```

Exemple montrant la gestion d'erreur lors de l'échec de l'assertion :

```matlab
try
    assert_isfalse(true, 'This should be false!');
catch ME
    disp(['Error caught: ' ME.message])
end
```

## 🔗 Voir aussi

[assert_istrue](../assert_functions/assert_istrue.md), [assert_checkerror](../assert_functions/assert_checkerror.md), [assert_isequal](../assert_functions/assert_isequal.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
