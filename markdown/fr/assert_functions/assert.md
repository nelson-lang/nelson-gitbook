# assert

Vérifie que la condition est vraie.

## 📝 Syntaxe

- assert(x)
- r = assert(x)
- [r, msg] = assert(x)
- assert(x, err_msg)
- r = assert(x, err_msg)
- [r, msg] = assert(x, err_msg)

## 📥 Argument d'entrée

- x - une valeur logique à tester pour la véracité.
- err_msg - une chaîne contenant le message d'erreur personnalisé à afficher en cas d'échec de l'assertion (optionnel).

## 📤 Argument de sortie

- r - une valeur logique : true si l'assertion réussit, false sinon.
- msg - une chaîne contenant le message d'erreur. Si x == true, alors msg == ''. Si x == false, alors msg contient le message d'échec de l'assertion.

## 📄 Description

<b>assert</b> lève une erreur si la valeur d'entrée est fausse.

Cette fonction lève également une erreur si l'entrée n'est pas une valeur logique, garantissant la sécurité de type.

Lorsque le paramètre optionnel <b>err_msg</b> est fourni, il sera utilisé comme message d'erreur à la place du message par défaut en cas d'échec de l'assertion.

C'est la fonction d'assertion fondamentale qui sert de base pour tester des conditions dans les programmes et les tests unitaires.

## 💡 Exemples

Test d'échec d'assertion avec un message d'erreur personnalisé :

```matlab
try
    assert(4 == 3, _('error for comparison.'))
catch ME
    disp(['Error: ' ME.message])
end
```

Test d'assertion réussie :

```matlab
assert(5 > 3);
disp('Assertion passed: 5 is greater than 3')
```

Utilisation des valeurs de retour pour gérer les résultats d'assertion :

```matlab
[r, msg] = assert(false, 'This condition is false');
if ~r
    disp(['Assertion failed: ' msg])
end
```

Assertion basique sans message personnalisé :

```matlab
x = 10;
assert(x > 0)  % Will pass
assert(x < 0)  % Will fail with default message
```

## 🔗 Voir aussi

[assert_istrue](../assert_functions/assert_istrue.md), [assert_isfalse](../assert_functions/assert_isfalse.md), [assert_isequal](../assert_functions/assert_isequal.md), [assert_checkerror](../assert_functions/assert_checkerror.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
