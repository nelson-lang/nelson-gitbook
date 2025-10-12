# ismissing

Vérifier les valeurs manquantes.

## Syntaxe

- tf = ismissing(M)

## Argument d'entrée

- M - une variable

## Argument de sortie

- tf - logique : résultat de 'ismissing'.

## Description

<p>
            ismissing renvoie un tableau logique qui est vrai lorsque les éléments de M sont des valeurs manquantes.</p>

<p>Les données manquantes sont définies comme :</p>

<p>
                NaN pour double ou single</p>

<p>
                    missing pour les tableaux de type string</p>

<p>
                        ' ' pour les tableaux de caractères</p>

<p>
                            '' pour une cellule de tableaux de caractères</p>

## Exemple

```matlab
A = ["Nel", NaN, "son"];
ismissing(A)
B = [1 2 NaN Inf];
ismissing(B)
C = 'Nel son'
ismissing(C)
D = {'Nel' '' 'son'}
ismissing(D)

```

## Voir aussi

[isfinite](../data_analysis/isfinite.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
