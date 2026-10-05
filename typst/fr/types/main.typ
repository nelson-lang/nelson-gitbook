#import "nelson_help.typ": *

= Types module

Le module Types fournit des outils pour gérer et inspecter les types de données dans Nelson.

 Il permet aux utilisateurs d'interroger la nature des variables, de distinguer les types numériques, logiques, de chaîne et d'objet, et de travailler avec des types spécialisés tels que les tableaux creux (sparse) ou entiers.

 Le module prend également en charge la création d'objets et la validation des noms de variables, contribuant à garantir la sécurité des types et la cohérence des scripts et fonctions.

 Pour le code C++ d'extension et d'intégration, voir #nlink(<types:cpp_api>)[API C++ des valeurs];.

== Functions

- #nlink(<types:class>)[class]: Renvoie le nom de classe d'une variable ou cree un objet nomme ancien style.
- #nlink(<types:cpp_api>)[cpp\_api]: Conventions de l'API C++ des valeurs pour les types noyau de Nelson.
- #nlink(<types:isa>)[isa]: Renvoie true si une variable a la classe ou le type demande.
- #nlink(<types:iscell>)[iscell]: Renvoie vrai si la variable var est un tableau de cellules.
- #nlink(<types:ischar>)[ischar]: Renvoie vrai si la variable var est un tableau de caractères (char).
- #nlink(<types:isclass>)[isclass]: Renvoie vrai si la variable var est un objet de classe.
- #nlink(<types:isdouble>)[isdouble]: Renvoie vrai si la variable var est une matrice de type double.
- #nlink(<types:isempty>)[isempty]: Renvoie vrai si la variable var est une matrice vide.
- #nlink(<types:isenum>)[isenum]: Détermine si l'entrée est une énumération
- #nlink(<types:isfloat>)[isfloat]: Renvoie vrai si la variable var est une matrice de type single ou double.
- #nlink(<types:ishandle>)[ishandle]: Renvoie vrai si la variable var est un objet handle.
- #nlink(<types:isint16>)[isint16]: Renvoie vrai si la variable var est un tableau d'entiers signés 16 bits.
- #nlink(<types:isint32>)[isint32]: Renvoie vrai si la variable var est un tableau d'entiers signés 32 bits.
- #nlink(<types:isint64>)[isint64]: Renvoie vrai si la variable var est un tableau d'entiers signés 64 bits.
- #nlink(<types:isint8>)[isint8]: Renvoie vrai si la variable var est un tableau d'entiers signés 8 bits.
- #nlink(<types:isinteger>)[isinteger]: Renvoie vrai si la variable var est un tableau de type entier.
- #nlink(<types:islogical>)[islogical]: Renvoie vrai si la variable var est de type logique (logical).
- #nlink(<types:isnumeric>)[isnumeric]: Renvoie vrai si la variable var est un tableau numérique.
- #nlink(<types:isobject>)[isobject]: Renvoie true si une variable est un objet.
- #nlink(<types:isreal>)[isreal]: Renvoie vrai si toute la partie imaginaire est un tableau de zéros.
- #nlink(<types:issingle>)[issingle]: Renvoie vrai si la variable var est une matrice de type single.
- #nlink(<types:issparse>)[issparse]: Renvoie vrai si la variable var est un tableau creux (sparse).
- #nlink(<types:isstring>)[isstring]: Renvoie vrai si la variable var est un tableau de chaînes (string).
- #nlink(<types:isstruct>)[isstruct]: Renvoie vrai si la variable var est une structure.
- #nlink(<types:isuint16>)[isuint16]: Renvoie vrai si la variable var est un tableau d'entiers non signés 16 bits.
- #nlink(<types:isuint32>)[isuint32]: Renvoie vrai si la variable var est un tableau d'entiers non signés 32 bits.
- #nlink(<types:isuint64>)[isuint64]: Renvoie vrai si la variable var est un tableau d'entiers non signés 64 bits.
- #nlink(<types:isuint8>)[isuint8]: Renvoie vrai si la variable var est un tableau d'entiers non signés 8 bits.
- #nlink(<types:isvarname>)[isvarname]: Renvoie vrai si l'entrée est un nom de variable valide.
- #nlink(<types:memoize>)[memoize]: Ajoute la mémoïsation à une fonction
- #nlink(<types:missing>)[missing]: Renvoie une valeur manquante.
- #nlink(<types:nelson.indexing.IndexingOperation>)[nelson.indexing.IndexingOperation]: Décrit un élément d'une expression d'indexation.
- #nlink(<types:nelson.indexing.IndexingOperationType>)[nelson.indexing.IndexingOperationType]: Type d'une opération d'indexation.
- #nlink(<types:nelson.lang.makeUniqueStrings>)[nelson.lang.makeUniqueStrings]: Rend des chaînes uniques en ajoutant des suffixes numériques.
- #nlink(<types:nelson.lang.makeValidName>)[nelson.lang.makeValidName]: Convertit du texte en noms de variables Nelson valides.
- #nlink(<types:nelson.mixin.indexing.RedefinesBrace>)[nelson.mixin.indexing.RedefinesBrace]: Personnaliser l'indexation par accolades d'une classe.
- #nlink(<types:nelson.mixin.indexing.RedefinesDot>)[nelson.mixin.indexing.RedefinesDot]: Personnaliser l'indexation par point d'une classe.
- #nlink(<types:nelson.mixin.indexing.RedefinesParen>)[nelson.mixin.indexing.RedefinesParen]: Personnaliser l'indexation par parenthèses d'une classe.
- #nlink(<types:nelson.mixin.util.PropertyGroup>)[nelson.mixin.util.PropertyGroup]: Un groupe titré de propriétés pour l'affichage personnalisé d'objets.
- #nlink(<types:underlyingType>)[underlyingType]: Type sous-jacent d'un tableau


#nested[
#pagebreak(weak: true)
#include "class.typ"
#pagebreak(weak: true)
#include "cpp_api.typ"
#pagebreak(weak: true)
#include "isa.typ"
#pagebreak(weak: true)
#include "iscell.typ"
#pagebreak(weak: true)
#include "ischar.typ"
#pagebreak(weak: true)
#include "isclass.typ"
#pagebreak(weak: true)
#include "isdouble.typ"
#pagebreak(weak: true)
#include "isempty.typ"
#pagebreak(weak: true)
#include "isenum.typ"
#pagebreak(weak: true)
#include "isfloat.typ"
#pagebreak(weak: true)
#include "ishandle.typ"
#pagebreak(weak: true)
#include "isint16.typ"
#pagebreak(weak: true)
#include "isint32.typ"
#pagebreak(weak: true)
#include "isint64.typ"
#pagebreak(weak: true)
#include "isint8.typ"
#pagebreak(weak: true)
#include "isinteger.typ"
#pagebreak(weak: true)
#include "islogical.typ"
#pagebreak(weak: true)
#include "isnumeric.typ"
#pagebreak(weak: true)
#include "isobject.typ"
#pagebreak(weak: true)
#include "isreal.typ"
#pagebreak(weak: true)
#include "issingle.typ"
#pagebreak(weak: true)
#include "issparse.typ"
#pagebreak(weak: true)
#include "isstring.typ"
#pagebreak(weak: true)
#include "isstruct.typ"
#pagebreak(weak: true)
#include "isuint16.typ"
#pagebreak(weak: true)
#include "isuint32.typ"
#pagebreak(weak: true)
#include "isuint64.typ"
#pagebreak(weak: true)
#include "isuint8.typ"
#pagebreak(weak: true)
#include "isvarname.typ"
#pagebreak(weak: true)
#include "memoize.typ"
#pagebreak(weak: true)
#include "missing.typ"
#pagebreak(weak: true)
#include "nelson.indexing.IndexingOperation.typ"
#pagebreak(weak: true)
#include "nelson.indexing.IndexingOperationType.typ"
#pagebreak(weak: true)
#include "nelson.lang.makeUniqueStrings.typ"
#pagebreak(weak: true)
#include "nelson.lang.makeValidName.typ"
#pagebreak(weak: true)
#include "nelson.mixin.indexing.RedefinesBrace.typ"
#pagebreak(weak: true)
#include "nelson.mixin.indexing.RedefinesDot.typ"
#pagebreak(weak: true)
#include "nelson.mixin.indexing.RedefinesParen.typ"
#pagebreak(weak: true)
#include "nelson.mixin.util.PropertyGroup.typ"
#pagebreak(weak: true)
#include "underlyingType.typ"
]
