# Types module

Le module Types fournit des outils pour gérer et inspecter les types de données dans Nelson.

Il permet aux utilisateurs d'interroger la nature des variables, de distinguer les types numériques, logiques, de chaîne et d'objet, et de travailler avec des types spécialisés tels que les tableaux creux (sparse) ou entiers.

Le module prend également en charge la création d'objets et la validation des noms de variables, contribuant à garantir la sécurité des types et la cohérence des scripts et fonctions.

## Functions

- [class](class.md) - Retourne le nom de classe d'un objet ou crée un objet nommé.
- [isa](isa.md) - Renvoie vrai si var est un objet de la classe str.
- [iscell](iscell.md) - Renvoie vrai si la variable var est un tableau de cellules.
- [ischar](ischar.md) - Renvoie vrai si la variable var est un tableau de caractères (char).
- [isclass](isclass.md) - Renvoie vrai si la variable var est un objet de classe.
- [isdouble](isdouble.md) - Renvoie vrai si la variable var est une matrice de type double.
- [isempty](isempty.md) - Renvoie vrai si la variable var est une matrice vide.
- [isfloat](isfloat.md) - Renvoie vrai si la variable var est une matrice de type single ou double.
- [ishandle](ishandle.md) - Renvoie vrai si la variable var est un objet handle.
- [isint16](isint16.md) - Renvoie vrai si la variable var est un tableau d'entiers signés 16 bits.
- [isint32](isint32.md) - Renvoie vrai si la variable var est un tableau d'entiers signés 32 bits.
- [isint64](isint64.md) - Renvoie vrai si la variable var est un tableau d'entiers signés 64 bits.
- [isint8](isint8.md) - Renvoie vrai si la variable var est un tableau d'entiers signés 8 bits.
- [isinteger](isinteger.md) - Renvoie vrai si la variable var est un tableau de type entier.
- [islogical](islogical.md) - Renvoie vrai si la variable var est de type logique (logical).
- [isnumeric](isnumeric.md) - Renvoie vrai si la variable var est un tableau numérique.
- [isobject](isobject.md) - Renvoie vrai si la variable var est un objet.
- [isreal](isreal.md) - Return true if all imaginary part is a zero array.
- [issingle](issingle.md) - Renvoie vrai si la variable var est une matrice de type single.
- [issparse](issparse.md) - Renvoie vrai si la variable var est un tableau creux (sparse).
- [isstring](isstring.md) - Renvoie vrai si la variable var est un tableau de chaînes (string).
- [isstruct](isstruct.md) - Renvoie vrai si la variable var est une structure.
- [isuint16](isuint16.md) - Renvoie vrai si la variable var est un tableau d'entiers non signés 16 bits.
- [isuint32](isuint32.md) - Renvoie vrai si la variable var est un tableau d'entiers non signés 32 bits.
- [isuint64](isuint64.md) - Renvoie vrai si la variable var est un tableau d'entiers non signés 64 bits.
- [isuint8](isuint8.md) - Renvoie vrai si la variable var est un tableau d'entiers non signés 8 bits.
- [isvarname](isvarname.md) - Renvoie vrai si l'entrée est un nom de variable valide.
- [missing](missing.md) - Return a missing value.
