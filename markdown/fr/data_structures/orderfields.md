# orderfields

Réorganiser les champs d'un tableau de structures.

## Syntaxe

- S = orderfields(S1)
- S = orderfields(S1, S2)
- S = orderfields(S1, C)
- S = orderfields(S1, P)
- [S, Pout] = orderfields(...)

## Argument d'entrée

- S1 - tableau de structures : structure d'entrée.
- S2 - tableau de structures : ordre des champs défini par une structure.
- C - tableau cellulaire de vecteurs de caractères ou tableau de chaînes : ordre des champs par nom
- P - vecteur numérique : ordre des champs par indice.

## Argument de sortie

- S - tableau de structures : structure réordonnée.
- Pout - vecteur numérique : ordre de champs en sortie.

## Description

<p>
            S = orderfields(S1) trie les champs de S1 par ordre alphabétique selon leurs noms, en considérant les majuscules avant les minuscules; les chiffres et underscores sont également pris en compte.</p>

<p>
                S = orderfields(S1,S2) renvoie une copie de S1 avec ses champs réorganisés pour correspondre à l'ordre des champs de S2. Les deux structures S1 et S2 doivent partager les mêmes noms de champs.</p>

<p>
                    S = orderfields(S1, C) correspond à l'ordre spécifié dans le tableau d'entrée C. Chaque nom de champ de S1 doit apparaître une fois dans C.</p>

<p>
                        S = orderfields(S1, P) réorganise les champs en fonction du vecteur de permutation P. P contient des entiers de 1 à n, où n est le nombre de champs dans S1. Cette syntaxe est utile pour maintenir un ordre cohérent entre plusieurs tableaux de structures.</p>

<p>
                            [S, Pout] = orderfields(...) renvoie également un vecteur de permutation Pout, indiquant les changements d'ordre des champs. Pout est composé d'entiers de 1 à n, reflétant les positions réordonnées des champs. Cette syntaxe est compatible avec n'importe quel des arguments précédemment mentionnés.</p>

<p>
                                orderfields n'organise que les champs de premier niveau et n'opère pas de manière récursive.</p>

## Exemple

```matlab
s = struct ("d", 4, "b", 2, "a", 1, "c", 3);
tA = orderfields (s)
t = struct ("d", {}, "c", {}, "b", {}, "a", {});
tB = orderfields (s, tA)

```

## Voir aussi

[struct](../data_structures/struct.md), [fieldnames](../data_structures/fieldnames.md), [isfield](../data_structures/isfield.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
