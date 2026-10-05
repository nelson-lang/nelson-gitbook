#import "nelson_help.typ": *

= orderfields <data_structures:orderfields>

Réorganiser les champs d'un tableau de structures.

== Syntaxe

- #raw("S = orderfields(S1)");
- #raw("S = orderfields(S1, S2)");
- #raw("S = orderfields(S1, C)");
- #raw("S = orderfields(S1, P)");
- #raw("[S, Pout] = orderfields(...)");

== Argument d'entrée

/ S1: tableau de structures : structure d'entrée.
/ S2: tableau de structures : ordre des champs défini par une structure.
/ C: tableau cellulaire de vecteurs de caractères ou tableau de chaînes : ordre des champs par nom
/ P: vecteur numérique : ordre des champs par indice.

== Argument de sortie

/ S: tableau de structures : structure réordonnée.
/ Pout: vecteur numérique : ordre de champs en sortie.

== Description

#strong[S \= orderfields(S1)]; trie les champs de #strong[S1]; par ordre alphabétique selon leurs noms, en considérant les majuscules avant les minuscules; les chiffres et underscores sont également pris en compte.

 #strong[S \= orderfields(S1,S2)]; renvoie une copie de #strong[S1]; avec ses champs réorganisés pour correspondre à l'ordre des champs de #strong[S2];. Les deux structures #strong[S1]; et #strong[S2]; doivent partager les mêmes noms de champs.

 #strong[S \= orderfields(S1, C)]; correspond à l'ordre spécifié dans le tableau d'entrée #strong[C];. Chaque nom de champ de #strong[S1]; doit apparaître une fois dans #strong[C];.

 #strong[S \= orderfields(S1, P)]; réorganise les champs en fonction du vecteur de permutation #strong[P];. #strong[P]; contient des entiers de 1 à n, où n est le nombre de champs dans #strong[S1];. Cette syntaxe est utile pour maintenir un ordre cohérent entre plusieurs tableaux de structures.

 #strong[\[S, Pout\] \= orderfields(...)]; renvoie également un vecteur de permutation #strong[Pout];, indiquant les changements d'ordre des champs.#strong[Pout]; est composé d'entiers de 1 à n, reflétant les positions réordonnées des champs. Cette syntaxe est compatible avec n'importe quel des arguments précédemment mentionnés.

 #strong[orderfields]; n'organise que les champs de premier niveau et n'opère pas de manière récursive.


== Exemple

``````matlab
s = struct ("d", 4, "b", 2, "a", 1, "c", 3);
tA = orderfields (s)
t = struct ("d", {}, "c", {}, "b", {}, "a", {});
tB = orderfields (s, tA)

``````


== Voir aussi

#nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:fieldnames>)[fieldnames];, #nlink(<data_structures:isfield>)[isfield];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
