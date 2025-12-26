# orderfields

Réorganiser les champs d'un tableau de structures.

## 📝 Syntaxe

- S = orderfields(S1)
- S = orderfields(S1, S2)
- S = orderfields(S1, C)
- S = orderfields(S1, P)
- [S, Pout] = orderfields(...)

## 📥 Argument d'entrée

- S1 - tableau de structures : structure d'entrée.
- S2 - tableau de structures : ordre des champs défini par une structure.
- C - tableau cellulaire de vecteurs de caractères ou tableau de chaînes : ordre des champs par nom
- P - vecteur numérique : ordre des champs par indice.

## 📤 Argument de sortie

- S - tableau de structures : structure réordonnée.
- Pout - vecteur numérique : ordre de champs en sortie.

## 📄 Description

<b>S = orderfields(S1)</b> trie les champs de <b>S1</b> par ordre alphabétique selon leurs noms, en considérant les majuscules avant les minuscules; les chiffres et underscores sont également pris en compte.

<b>S = orderfields(S1,S2)</b> renvoie une copie de <b>S1</b> avec ses champs réorganisés pour correspondre à l'ordre des champs de <b>S2</b>. Les deux structures <b>S1</b> et <b>S2</b> doivent partager les mêmes noms de champs.

<b>S = orderfields(S1, C)</b> correspond à l'ordre spécifié dans le tableau d'entrée <b>C</b>. Chaque nom de champ de <b>S1</b> doit apparaître une fois dans <b>C</b>.

<b>S = orderfields(S1, P)</b> réorganise les champs en fonction du vecteur de permutation <b>P</b>. <b>P</b> contient des entiers de 1 à n, où n est le nombre de champs dans <b>S1</b>. Cette syntaxe est utile pour maintenir un ordre cohérent entre plusieurs tableaux de structures.

<b>[S, Pout] = orderfields(...)</b> renvoie également un vecteur de permutation <b>Pout</b>, indiquant les changements d'ordre des champs.<b>Pout</b> est composé d'entiers de 1 à n, reflétant les positions réordonnées des champs. Cette syntaxe est compatible avec n'importe quel des arguments précédemment mentionnés.

<b>orderfields</b> n'organise que les champs de premier niveau et n'opère pas de manière récursive.

## 💡 Exemple

```matlab
s = struct ("d", 4, "b", 2, "a", 1, "c", 3);
tA = orderfields (s)
t = struct ("d", {}, "c", {}, "b", {}, "a", {});
tB = orderfields (s, tA)

```

## 🔗 Voir aussi

[struct](../data_structures/struct.md), [fieldnames](../data_structures/fieldnames.md), [isfield](../data_structures/isfield.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.5.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
