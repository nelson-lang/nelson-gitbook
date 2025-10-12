# assert_checkerror

Vérifie qu'une commande lève l'erreur attendue.

## Syntaxe

- assert_checkerror(command, expected_error_message)
- r = assert_checkerror(command, expected_error_message)
- [r, msg] = assert_checkerror(command, expected_error_message)
- assert_checkerror(command, expected_error_message, expected_error_identifier)
- r = assert_checkerror(command, expected_error_message, expected_error_identifier)
- [r, msg] = assert_checkerror(command, expected_error_message, expected_error_identifier)

## Argument d'entrée

- command - une chaîne contenant la commande à exécuter et tester pour les erreurs.
- expected_error_message - une chaîne contenant le message d'erreur attendu qui devrait être levé.
- expected_error_identifier - une chaîne contenant l'identifiant d'erreur attendu (optionnel).

## Argument de sortie

- r - une valeur logique : true si le test réussit, false sinon.
- msg - une chaîne contenant le message d'erreur. Si r == true, alors msg == ''. Si r == false, alors msg contient le message d'échec de l'assertion.

## Description

<p>assert_checkerror vérifie que l'exécution d'une commande lève le message d'erreur attendu.</p>

<p>Si la commande ne lève aucune erreur, ou si elle lève une erreur avec un message différent de celui attendu, l'assertion échoue.</p>

<p>Lorsque le paramètre optionnel expected_error_identifier est fourni, la fonction vérifie également que l'identifiant d'erreur correspond à celui attendu.</p>

<p>Cette fonction est particulièrement utile pour les tests unitaires afin de s'assurer que les entrées ou opérations non valides génèrent correctement les conditions d'erreur attendues.</p>

## Exemples

Teste que la fonction cos sans arguments lève l'erreur attendue :

```matlab
assert_checkerror('cos', _('Wrong number of input arguments.'));
```

Exemple qui démontre l'échec d'assertion avec un mauvais message attendu :

```matlab
try
    assert_checkerror('cos', _('Wrong error message.'));
catch ME
    disp(['Error: ' ME.message])
end
```

Test avec à la fois le message d'erreur et l'identifiant d'erreur :

```matlab
assert_checkerror('mustBeFinite(NaN)', _('Value must be finite.'), 'Nelson:validators:mustBeFinite')
```

Utilisation des valeurs de retour pour gérer les résultats d'assertion :

```matlab
[r, msg] = assert_checkerror('cos', _('Wrong number of input arguments.'));
if r
    disp('Test passed: cos function properly raises expected error')
else
    disp(['Test failed: ' msg])
end
```

## Voir aussi

[assert_istrue](../assert_functions/assert_istrue.md), [assert_isfalse](../assert_functions/assert_isfalse.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
