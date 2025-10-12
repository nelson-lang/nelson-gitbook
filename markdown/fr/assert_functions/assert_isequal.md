# assert_isequal

Vérifie que les valeurs calculées et attendues sont égales.

## Syntaxe

- assert_isequal(computed, expected)
- res = assert_isequal(computed, expected)
- [res, msg] = assert_isequal(computed, expected)

## Argument d'entrée

- computed - une valeur de n'importe quel type à tester pour l'égalité.
- expected - une valeur de n'importe quel type représentant le résultat attendu.

## Argument de sortie

- res - une valeur logique : true si les valeurs sont égales, false sinon.
- msg - une chaîne contenant le message d'erreur. Si res == true, alors msg == ''. Si res == false, alors msg contient le message d'échec de l'assertion.

## Description

<p>assert_isequal lève une erreur si la valeur calculée n'est pas égale à la valeur attendue.</p>

<p>Cette fonction effectue un test d'égalité stricte qui vérifie le même type, les mêmes dimensions et les mêmes valeurs. Elle utilise la même logique que la fonction isequaln.</p>

<p>Contrairement aux opérateurs d'égalité standards, cette fonction gère correctement les valeurs NaN, en les considérant égales lorsque les deux valeurs contiennent NaN aux mêmes positions.</p>

<p>Cette fonction est essentielle pour les tests unitaires afin de vérifier que les résultats calculés correspondent exactement aux résultats attendus.</p>

## Bibliographie

"Automated Software Testing for Matlab", Steven Eddins, 2009

## Fonction(s) utilisée(s)

isequaln

## Exemples

Test d'égalité de matrices identiques :

```matlab
A = eye(3, 3);
assert_isequal(A, A)
```

Test qui démontre la détection de différence de type :

```matlab
A = eye(3, 3);
B = single(A);
try
    assert_isequal(A, B)
catch ME
    disp(['Error: ' ME.message])
end
```

Test de gestion de l'égalité avec NaN :

```matlab
A = NaN;
B = A;
assert_isequal(A, B)
```

Utilisation des valeurs de retour pour gérer les résultats d'assertion :

```matlab
[res, msg] = assert_isequal([1, 2, 3], [1, 2, 4]);
if res
    disp('Values are equal')
else
    disp(['Values are not equal: ' msg])
end
```

## Voir aussi

[isequaln](../elementary_functions/isequaln.md), [assert_isapprox](../assert_functions/assert_isapprox.md), [assert_istrue](../assert_functions/assert_istrue.md), [assert_isfalse](../assert_functions/assert_isfalse.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
