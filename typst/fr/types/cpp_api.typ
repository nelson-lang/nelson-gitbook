#import "nelson_help.typ": *

= cpp\_api <types:cpp_api>

Conventions de l'API C++ des valeurs pour les types noyau de Nelson.

== Syntaxe

- #raw("ArrayOf::doubleScalar(value)");
- #raw("value.asDoubleScalar()");
- #raw("value.rows()");

== Description

L'API C++ des valeurs est utilisée par les modules natifs, le code d'extension et les intégrations embarquées pour créer, inspecter et extraire des valeurs Nelson. Le point d'entrée principal est le header public #strong[ArrayOf.hpp];, qui expose les macros #strong[NELSON\_ARRAYOF\_API\_VERSION]; pour les vérifications de version.

 Les fonctions de fabrique de #strong[ArrayOf]; décrivent directement la valeur créée. Les exemples courants incluent #strong[doubleScalar];, #strong[singleScalar];, #strong[logicalScalar];, #strong[int32Scalar];, #strong[doubleRowVector];, #strong[doubleMatrix2d];, #strong[cellArray];, #strong[structArray];, #strong[stringArray];, #strong[table]; et #strong[handle];.

 Les accesseurs de propriétés simples utilisent des noms courts comme #strong[rows];, #strong[columns];, #strong[elementCount];, #strong[dimensions];, #strong[dataClass];, #strong[fieldNames]; et #strong[referenceCount];. Ces fonctions doivent rester peu coûteuses et ne doivent pas masquer d'allocation.

 Les noms commençant par #strong[as]; extraient une valeur C++ existante depuis une valeur Nelson, par exemple #strong[asDoubleScalar];, #strong[asUtf8String];, #strong[asWideString];, #strong[asIndexVector]; et #strong[asFunctionHandle];.

 Les noms commençant par #strong[to]; créent une nouvelle représentation. Les noms commençant par #strong[toAllocated];, comme #strong[toAllocatedUtf8CString];, rendent l'allocation et la propriété explicites.

 Les mutations et les tests d'état suivent les préfixes verbaux habituels : #strong[setX]; modifie une propriété, #strong[isX]; teste un état et #strong[makeX]; transforme la valeur en place.

 L'API conserve les chemins rapides : stockage scalaire inline, dimensions mises en cache dans #strong[Data];, propriété par copy-on-write et accès pointeur sans allocation cachée. Les pointeurs retournés par les valeurs restent valides uniquement tant que la valeur propriétaire et l'état de son stockage restent valides.


== Exemples

Créer et inspecter une valeur scalaire.

``````matlab
ArrayOf value = ArrayOf::doubleScalar(3.0);
double scalar = value.asDoubleScalar();
indexType rows = value.rows();
indexType cols = value.columns();
``````

Créer un tableau de cellules et lire des propriétés simples.

``````matlab
ArrayOfVector items;
items << ArrayOf::doubleScalar(1.0);
items << ArrayOf::stringArray("name");
ArrayOf cells = ArrayOf::cellArray(items);
indexType count = cells.elementCount();
``````


== Voir aussi

#nlink(<types:class>)[class];, #nlink(<types:isa>)[isa];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
