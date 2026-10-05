# validateattributes

Verifie les classes et attributs demandes pour un tableau.

## 📝 Syntaxe

- validateattributes(A, classes, attributes)
- validateattributes(A, classes, attributes, argIndex)
- validateattributes(A, classes, attributes, funcName)
- validateattributes(A, classes, attributes, funcName, varName)
- validateattributes(A, classes, attributes, funcName, varName, argIndex)

## 📥 Argument d'entrée

- A - tableau ou objet a verifier.
- classes - noms de classes acceptes, sous forme de vecteur de caracteres, tableau de chaines ou cellule de vecteurs de caracteres.
- attributes - attributs requis, sous forme de cellule ou tableau de chaines. Les attributs qui demandent une valeur doivent etre suivis immediatement par cette valeur.
- argIndex - entier positif utilise dans les messages d'erreur pour indiquer la position de l'argument.
- funcName - nom de fonction utilise dans les identifiants d'erreur generes.
- varName - nom de variable utilise dans les messages d'erreur generes.

## 📄 Description


<b>validateattributes</b> emet une erreur si <b>A</b> n'appartient pas a au moins une classe demandee ou ne satisfait pas tous les attributs demandes. La fonction ne renvoie aucune sortie lorsque la verification reussit. 

<b>classes</b> accepte les noms de classes concretes et les noms de classes personnalisees testes avec <b>isa</b>. Les alias <b>numeric</b>, <b>integer</b> et <b>float</b> sont aussi pris en charge. 

Les attributs de forme pris en charge sont <b>2d</b>, <b>3d</b>, <b>column</b>, <b>row</b>, <b>scalar</b>, <b>scalartext</b>, <b>vector</b>, <b>square</b>, <b>diag</b>, <b>nonempty</b> et <b>nonsparse</b>. 

Les attributs de taille avec valeur sont <b>size</b>, <b>numel</b>, <b>ncols</b>, <b>nrows</b> et <b>ndims</b>. Pour <b>size</b>, utilisez <b>NaN</b> dans une dimension attendue pour ignorer cette dimension. 

Les attributs de valeur pris en charge sont <b>finite</b>, <b>nonnan</b>, <b>binary</b>, <b>even</b>, <b>odd</b>, <b>integer</b>, <b>real</b>, <b>nonnegative</b>, <b>nonpositive</b>, <b>negative</b>, <b>nonzero</b> et <b>positive</b>. 

Les attributs de plage sont <b>></b>, <b>>=</b>, <b><</b> et <b><=</b>. La valeur de comparaison doit suivre le nom de l'attribut. 

Les attributs de monotonie sont <b>decreasing</b>, <b>increasing</b>, <b>nondecreasing</b> et <b>nonincreasing</b>. La monotonie est verifiee colonne par colonne.

## 💡 Exemples

Verifier une classe, une forme et des valeurs.

```matlab
validateattributes([1 2 3], {'numeric'}, {'row', 'vector', 'positive'})
```
Verifier une taille partiellement specifiee.

```matlab
A = ones(2, 3, 4);
validateattributes(A, {'numeric'}, {'3d', 'size', [2 NaN 4], 'ndims', 3})
```
Verifier la monotonie colonne par colonne.

```matlab
A = [1 4; 2 4; 3 5];
validateattributes(A, {'numeric'}, {'nondecreasing'})
```
Utiliser la verification dans un analyseur d'entrees.

```matlab
p = inputParser();
addRequired(p, 'name', @(x) validateattributes(x, {'char'}, {'nonempty'}));
addOptional(p, 'id', 1, @(x) validateattributes(x, {'numeric'}, {'scalar', 'positive'}));
parse(p, 'item', 3);
p.Results
```


## 🔗 Voir aussi

[validatestring](../validators/validatestring.md), [inputParser](../validators/inputParser.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
