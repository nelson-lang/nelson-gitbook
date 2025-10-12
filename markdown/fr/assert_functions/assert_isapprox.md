# assert_isapprox

Vérifie que les valeurs calculées et attendues sont approximativement égales.

## Syntaxe

- assert_isapprox(computed, expected)
- assert_isapprox(computed, expected, precision)
- res = assert_isapprox(computed, expected)
- res = assert_isapprox(computed, expected, precision)
- [res, msg] = assert_isapprox(computed, expected)
- [res, msg] = assert_isapprox(computed, expected, precision)

## Argument d'entrée

- computed - une valeur numérique : matrice, double creux ou tableau multidimensionnel.
- expected - une valeur numérique : matrice, double creux ou tableau multidimensionnel.
- precision - une valeur double spécifiant la tolérance relative. La précision par défaut est 0.

## Argument de sortie

- res - une valeur logique : true si les valeurs sont approximativement égales, false sinon.
- msg - une chaîne contenant le message d'erreur. Si res == true, alors msg == ''. Si res == false, alors msg contient le message d'échec de l'assertion.

## Description

<p>assert_isapprox lève une erreur si la valeur calculée n'est pas approximativement égale à la valeur attendue.</p>

<p>Cette fonction compare deux nombres à virgule flottante avec une tolérance spécifiée, permettant de vérifier que deux nombres sont « approximativement » égaux lorsque l'égalité exacte n'est pas adaptée à cause des limitations de précision des flottants.</p>

<p>La comparaison utilise le calcul de l'erreur relative pour déterminer si les valeurs sont dans la tolérance de précision spécifiée.</p>

<p>Cette fonction est particulièrement utile dans les tests unitaires lors de calculs numériques pouvant comporter de petits arrondis.</p>

## Fonction(s) utilisée(s)

isapprox

## Exemples

Test d'égalité approximative avec une tolérance de précision suffisante :

```matlab
assert_isapprox(1.23456, 1.23457, 1e-5)
```

Test qui échoue lorsque la précision est trop stricte :

```matlab
try
    assert_isapprox(1.23456, 1.23457, 1e-6)
catch ME
    disp(['Error: ' ME.message])
end
```

Utilisation des valeurs de retour pour gérer les résultats d'assertion :

```matlab
[r, msg] = assert_isapprox(1.23456, 1.23457, 1e-6);
assert_isfalse(r);
assert_isequal(msg, _('Assertion failed: expected and computed values are too different.'));
```

Test avec des matrices :

```matlab
A = [1.0001, 2.0002; 3.0003, 4.0004];
B = [1.0000, 2.0000; 3.0000, 4.0000];
assert_isapprox(A, B, 1e-3)
```

## Voir aussi

[isapprox](../elementary_functions/isapprox.md), [assert_isequal](../assert_functions/assert_isequal.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
