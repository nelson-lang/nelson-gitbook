# Types module


    
Le module Types fournit des outils pour gérer et inspecter les types de données dans Nelson.

    
Il permet aux utilisateurs d'interroger la nature des variables, de distinguer les types numériques, logiques, de chaîne et d'objet, et de travailler avec des types spécialisés tels que les tableaux creux (sparse) ou entiers.

    
Le module prend également en charge la création d'objets et la validation des noms de variables, contribuant à garantir la sécurité des types et la cohérence des scripts et fonctions.

    
Pour le code C++ d'extension et d'intégration, voir [API C++ des valeurs](../types/cpp_api.md).

  

## Functions

- [class](class.md) - Renvoie le nom de classe d'une variable ou cree un objet nomme ancien style.
- [cpp_api](cpp_api.md) - Conventions de l'API C++ des valeurs pour les types noyau de Nelson.
- [isa](isa.md) - Renvoie true si une variable a la classe ou le type demande.
- [iscell](iscell.md) - Renvoie vrai si la variable var est un tableau de cellules.
- [ischar](ischar.md) - Renvoie vrai si la variable var est un tableau de caractères (char).
- [isclass](isclass.md) - Renvoie vrai si la variable var est un objet de classe.
- [isdouble](isdouble.md) - Renvoie vrai si la variable var est une matrice de type double.
- [isempty](isempty.md) - Renvoie vrai si la variable var est une matrice vide.
- [isenum](isenum.md) - Détermine si l'entrée est une énumération
- [isfloat](isfloat.md) - Renvoie vrai si la variable var est une matrice de type single ou double.
- [ishandle](ishandle.md) - Renvoie vrai si la variable var est un objet handle.
- [isint16](isint16.md) - Renvoie vrai si la variable var est un tableau d'entiers signés 16 bits.
- [isint32](isint32.md) - Renvoie vrai si la variable var est un tableau d'entiers signés 32 bits.
- [isint64](isint64.md) - Renvoie vrai si la variable var est un tableau d'entiers signés 64 bits.
- [isint8](isint8.md) - Renvoie vrai si la variable var est un tableau d'entiers signés 8 bits.
- [isinteger](isinteger.md) - Renvoie vrai si la variable var est un tableau de type entier.
- [islogical](islogical.md) - Renvoie vrai si la variable var est de type logique (logical).
- [isnumeric](isnumeric.md) - Renvoie vrai si la variable var est un tableau numérique.
- [isobject](isobject.md) - Renvoie true si une variable est un objet.
- [isreal](isreal.md) - Renvoie vrai si toute la partie imaginaire est un tableau de zéros.
- [issingle](issingle.md) - Renvoie vrai si la variable var est une matrice de type single.
- [issparse](issparse.md) - Renvoie vrai si la variable var est un tableau creux (sparse).
- [isstring](isstring.md) - Renvoie vrai si la variable var est un tableau de chaînes (string).
- [isstruct](isstruct.md) - Renvoie vrai si la variable var est une structure.
- [isuint16](isuint16.md) - Renvoie vrai si la variable var est un tableau d'entiers non signés 16 bits.
- [isuint32](isuint32.md) - Renvoie vrai si la variable var est un tableau d'entiers non signés 32 bits.
- [isuint64](isuint64.md) - Renvoie vrai si la variable var est un tableau d'entiers non signés 64 bits.
- [isuint8](isuint8.md) - Renvoie vrai si la variable var est un tableau d'entiers non signés 8 bits.
- [isvarname](isvarname.md) - Renvoie vrai si l'entrée est un nom de variable valide.
- [memoize](memoize.md) - Ajoute la mémoïsation à une fonction
- [missing](missing.md) - Renvoie une valeur manquante.
- [nelson.indexing.IndexingOperation](nelson.indexing.IndexingOperation.md) - Décrit un élément d'une expression d'indexation.
- [nelson.indexing.IndexingOperationType](nelson.indexing.IndexingOperationType.md) - Type d'une opération d'indexation.
- [nelson.lang.makeUniqueStrings](nelson.lang.makeUniqueStrings.md) - Rend des chaînes uniques en ajoutant des suffixes numériques.
- [nelson.lang.makeValidName](nelson.lang.makeValidName.md) - Convertit du texte en noms de variables Nelson valides.
- [nelson.mixin.indexing.RedefinesBrace](nelson.mixin.indexing.RedefinesBrace.md) - Personnaliser l'indexation par accolades d'une classe.
- [nelson.mixin.indexing.RedefinesDot](nelson.mixin.indexing.RedefinesDot.md) - Personnaliser l'indexation par point d'une classe.
- [nelson.mixin.indexing.RedefinesParen](nelson.mixin.indexing.RedefinesParen.md) - Personnaliser l'indexation par parenthèses d'une classe.
- [nelson.mixin.util.PropertyGroup](nelson.mixin.util.PropertyGroup.md) - Un groupe titré de propriétés pour l'affichage personnalisé d'objets.
- [underlyingType](underlyingType.md) - Type sous-jacent d'un tableau

