# cpp\_api

Conventions de l'API C++ des valeurs pour les types noyau de Nelson.

## 📝 Syntaxe

- ArrayOf::doubleScalar(value)
- value.asDoubleScalar()
- value.rows()

## 📄 Description


L'API C++ des valeurs est utilisée par les modules natifs, le code d'extension et les intégrations embarquées pour créer, inspecter et extraire des valeurs Nelson. Le point d'entrée principal est le header public <b>ArrayOf.hpp</b>, qui expose les macros <b>NELSON\_ARRAYOF\_API\_VERSION</b> pour les vérifications de version. 

Les fonctions de fabrique de <b>ArrayOf</b> décrivent directement la valeur créée. Les exemples courants incluent <b>doubleScalar</b>, <b>singleScalar</b>, <b>logicalScalar</b>, <b>int32Scalar</b>, <b>doubleRowVector</b>, <b>doubleMatrix2d</b>, <b>cellArray</b>, <b>structArray</b>, <b>stringArray</b>, <b>table</b> et <b>handle</b>. 

Les accesseurs de propriétés simples utilisent des noms courts comme <b>rows</b>, <b>columns</b>, <b>elementCount</b>, <b>dimensions</b>, <b>dataClass</b>, <b>fieldNames</b> et <b>referenceCount</b>. Ces fonctions doivent rester peu coûteuses et ne doivent pas masquer d'allocation. 

Les noms commençant par <b>as</b> extraient une valeur C++ existante depuis une valeur Nelson, par exemple <b>asDoubleScalar</b>, <b>asUtf8String</b>, <b>asWideString</b>, <b>asIndexVector</b> et <b>asFunctionHandle</b>. 

Les noms commençant par <b>to</b> créent une nouvelle représentation. Les noms commençant par <b>toAllocated</b>, comme <b>toAllocatedUtf8CString</b>, rendent l'allocation et la propriété explicites. 

Les mutations et les tests d'état suivent les préfixes verbaux habituels : <b>setX</b> modifie une propriété, <b>isX</b> teste un état et <b>makeX</b> transforme la valeur en place. 

L'API conserve les chemins rapides : stockage scalaire inline, dimensions mises en cache dans <b>Data</b>, propriété par copy-on-write et accès pointeur sans allocation cachée. Les pointeurs retournés par les valeurs restent valides uniquement tant que la valeur propriétaire et l'état de son stockage restent valides.

## 💡 Exemples

Créer et inspecter une valeur scalaire.

```matlab
ArrayOf value = ArrayOf::doubleScalar(3.0);
double scalar = value.asDoubleScalar();
indexType rows = value.rows();
indexType cols = value.columns();
```
Créer un tableau de cellules et lire des propriétés simples.

```matlab
ArrayOfVector items;
items << ArrayOf::doubleScalar(1.0);
items << ArrayOf::stringArray("name");
ArrayOf cells = ArrayOf::cellArray(items);
indexType count = cells.elementCount();
```


## 🔗 Voir aussi

[class](../types/class.md), [isa](../types/isa.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
