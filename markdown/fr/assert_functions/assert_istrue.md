# assert_istrue

Vérifie que la condition est vraie.

## Syntaxe

- assert_istrue(x)
- r = assert_istrue(x)
- [r, msg] = assert_istrue(x)
- assert_istrue(x, err_msg)
- r = assert_istrue(x, err_msg)
- [r, msg] = assert_istrue(x, err_msg)

## Argument d'entrée

- x - une valeur logique à tester pour la véracité.
- err_msg - une chaîne contenant le message d'erreur personnalisé à afficher en cas d'échec de l'assertion (optionnel).

## Argument de sortie

- r - une valeur logique : true si l'assertion réussit, false sinon.
- msg - une chaîne contenant le message d'erreur. Si x == true, alors msg == ''. Si x == false, alors msg contient le message d'échec de l'assertion.

## Description

<p>assert_istrue lève une erreur si la valeur d'entrée est fausse.</p>

<p>Cette fonction lève également une erreur si l'entrée n'est pas une valeur logique, garantissant la sécurité de type.</p>

<p>Lorsque le paramètre optionnel err_msg est fourni, il sera utilisé comme message d'erreur à la place du message par défaut en cas d'échec de l'assertion.</p>

<p>Cette fonction est essentielle dans les tests unitaires pour vérifier que des conditions sont vraies ou que des opérations logiques retournent le résultat vrai attendu.</p>

## Exemples

Test qui réussit (3 égal 3 est vrai) :

```matlab
assert_istrue(3 == 3)
```

Test qui démontre l'échec de l'assertion (3 égal 4 est faux) :

```matlab
try
    assert_istrue(3 == 4)
catch ME
    disp(['Error: ' ME.message])
end
```

Test avec une valeur fausse explicite pour montrer l'échec :

```matlab
r = assert_istrue(false)
```

Utilisation des valeurs de retour pour gérer les résultats d'assertion :

```matlab
[r, msg] = assert_istrue(false)
```

Test avec un message d'erreur personnalisé :

```matlab
[r, msg] = assert_istrue(3 == 4, 'your error message.');
if ~r
    disp(['Custom error: ' msg])
end
```

Exemple montrant une assertion réussie avec une valeur vraie :

```matlab
assert_istrue(true);
disp('Assertion passed!')
```

## Voir aussi

[assert_isfalse](../assert_functions/assert_isfalse.md), [assert_checkerror](../assert_functions/assert_checkerror.md), [assert_isequal](../assert_functions/assert_isequal.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
