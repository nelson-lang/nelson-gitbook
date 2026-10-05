#import "nelson_help.typ": *

= inputname <core:inputname>

Renvoie le nom d'une variable d'entrée d'une fonction.

== Syntaxe

- #raw("s = inputname(argNumber)");

== Argument d'entrée

/ argNumber: une valeur entière scalaire, réelle et positive : Numéro de l'argument d'entrée de la fonction

== Argument de sortie

/ s: vecteur de caractères : nom de la variable

== Description

Renvoie le nom symbolique d'une variable d'entrée donné l'index de l'argument dans la signature d'une fonction.


== Exemple

``````matlab
function R = getinputname(varargin)
    R = string([]);
    for i = 1:nargin
        R = [R, string(inputname(i))];
    end
end
``````


== Voir aussi

#nlink(<core:nargin>)[nargin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
