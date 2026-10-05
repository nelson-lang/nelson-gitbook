#import "nelson_help.typ": *

= Structures de données

Le module Structures de données fournit des outils pour créer, manipuler et inspecter des tableaux, cellules et structures dans Nelson.

 Il permet la conversion entre différents formats de données, l'accès et la modification des champs, l'application de fonctions aux éléments de tableaux et l'organisation des données structurées.

 Ce module gère les données complexes au moyen d'opérations programmatiques et d'une gestion dynamique des données.

== Functions

- #nlink(<data_structures:arrayfun>)[arrayfun]: Appliquer une fonction à chaque élément d'un tableau.
- #nlink(<data_structures:cell>)[cell]: Créer un tableau cellulaire de matrices vides.
- #nlink(<data_structures:cell2mat>)[cell2mat]: Transformer un tableau cellulaire contenant des matrices en une seule matrice concaténée.
- #nlink(<data_structures:cell2struct>)[cell2struct]: Créer un struct à partir d'un tableau cellulaire.
- #nlink(<data_structures:celldisp>)[celldisp]: Afficher le contenu d'un tableau cellulaire.
- #nlink(<data_structures:cellfun>)[cellfun]: Évalue une fonction sur un tableau cellulaire.
- #nlink(<data_structures:cellstr>)[cellstr]: Convertit en tableau cellulaire de chaînes de caractères.
- #nlink(<data_structures:fieldnames>)[fieldnames]: Renvoie les noms des champs d'une structure ou les proprietes publiques classdef.
- #nlink(<data_structures:getfield>)[getfield]: Renvoie la valeur d'un champ dans un struct.
- #nlink(<data_structures:iscellstr>)[iscellstr]: Renvoie si une variable est un tableau cellulaire de chaînes.
- #nlink(<data_structures:isfield>)[isfield]: Vérifie si un nom de champ existe dans une structure.
- #nlink(<data_structures:mat2cell>)[mat2cell]: Decoupe un tableau en tableau de cellules.
- #nlink(<data_structures:namedargs2cell>)[namedargs2cell]: Convertit une structure contenant des paires nom-valeur en un tableau cellulaire.
- #nlink(<data_structures:num2cell>)[num2cell]: Convertir un tableau en tableau cellulaire avec des cellules de tailles cohérentes.
- #nlink(<data_structures:orderfields>)[orderfields]: Réorganiser les champs d'un tableau de structures.
- #nlink(<data_structures:renameStructField>)[renameStructField]: Renommer les noms de champs d'un struct ou d'un tableau de structs.
- #nlink(<data_structures:rmfield>)[rmfield]: Supprimer des champs d'une structure.
- #nlink(<data_structures:setfield>)[setfield]: Définir le contenu d'un champ de structure.
- #nlink(<data_structures:struct>)[struct]: Cree une structure ou convertit un objet en structure.
- #nlink(<data_structures:struct2cell>)[struct2cell]: Créer un tableau cellulaire à partir d'une structure.
- #nlink(<data_structures:structfun>)[structfun]: Applique une fonction a chaque champ d'une structure scalaire.


#nested[
#pagebreak(weak: true)
#include "arrayfun.typ"
#pagebreak(weak: true)
#include "cell.typ"
#pagebreak(weak: true)
#include "cell2mat.typ"
#pagebreak(weak: true)
#include "cell2struct.typ"
#pagebreak(weak: true)
#include "celldisp.typ"
#pagebreak(weak: true)
#include "cellfun.typ"
#pagebreak(weak: true)
#include "cellstr.typ"
#pagebreak(weak: true)
#include "fieldnames.typ"
#pagebreak(weak: true)
#include "getfield.typ"
#pagebreak(weak: true)
#include "iscellstr.typ"
#pagebreak(weak: true)
#include "isfield.typ"
#pagebreak(weak: true)
#include "mat2cell.typ"
#pagebreak(weak: true)
#include "namedargs2cell.typ"
#pagebreak(weak: true)
#include "num2cell.typ"
#pagebreak(weak: true)
#include "orderfields.typ"
#pagebreak(weak: true)
#include "renameStructField.typ"
#pagebreak(weak: true)
#include "rmfield.typ"
#pagebreak(weak: true)
#include "setfield.typ"
#pagebreak(weak: true)
#include "struct.typ"
#pagebreak(weak: true)
#include "struct2cell.typ"
#pagebreak(weak: true)
#include "structfun.typ"
]
