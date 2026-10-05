# mldivide

Division matricielle gauche, opérateur \\

## 📝 Syntaxe

- C = mldivide(A, B)
- C = A \\ B

## 📥 Argument d'entrée

- A - une variable, une table ou une timetable. Lorsque l'autre opérande est une table ou une timetable, cet argument doit être un scalaire.
- B - une variable, une table ou une timetable. Lorsque l'autre opérande est une table ou une timetable, cet argument doit être un scalaire.

## 📤 Argument de sortie

- C - résultat de A \\ B

## 📄 Description


<b>C = mldivide(A, B)</b> retourne la division matricielle gauche de A et B. 

Pour les matrices sparse flottantes, Nelson utilise les solveurs sparse Eigen disponibles. Les systemes symetriques definis positifs utilisent des chemins de Cholesky sparse, les systemes hermitiens ou symetriques indefinis peuvent utiliser LDLT sparse, les systemes carres generaux utilisent LU sparse, et les systemes rectangulaires utilisent QR sparse ou un repli iteratif de moindres carres. 

Les matrices sparse double, single, double complexes et single complexes sont prises en charge. Les entrees reelles et complexes compatibles sont promues vers la classe complexe correspondante. Les seconds membres sparse conservent le stockage sparse lorsque le resultat peut etre represente de cette maniere. 

Les systemes sparse rectangulaires retournent une solution de moindres carres pour les systemes surdetermines et une solution sparse compatible pour les systemes sous-determines lorsque le systeme est exactement satisfiable. 

Les diagonales singulieres et les systemes sparse structurellement nuls emettent des avertissements clairs et retournent des valeurs <b>Inf</b> ou <b>NaN</b> lorsque les divisions scalaires les imposent. 

Lorsqu'un opérande est une table ou une timetable et que l'autre est un scalaire, <b>A \\ B</b> est une opération élément par élément appliquée à chaque variable, identique à <b>A .\\ B</b> : les noms de variables, les unités et les temps de ligne sont conservés. Toute autre combinaison avec une table ou une timetable (deux tables, ou une table et un tableau non scalaire) provoque une erreur : utilisez <b>.\\</b> à la place.

## 💡 Exemples



```matlab
B = ones(3, 4)
A = B *2
A \ B
```
Resolution sparse single.

```matlab
A = sparse(single([4 1; 2 3]));
b = single([1; 2]);
x = A \ b
```
Resolution sparse single complexe avec second membre sparse.

```matlab
A = sparse(single([3 + 1i 1; 0 2 - 1i]));
B = sparse(single([4 + 2i 0; 3 - 1i 1]));
X = A \ B
full(A * X)
```
Resolution sparse single complexe hermitienne indefinie.

```matlab
A = sparse(single([0 1 + 2i; 1 - 2i 3]));
B = sparse(single([1 + 1i 0; 2 - 1i 1]));
X = A \ B
full(A * X)
```
Resolution sparse rectangulaire au sens des moindres carres.

```matlab
A = sparse([1 0; 0 1; 1 1; 2 -1]);
b = [1; 2; 4; 1];
x = A \ b
norm(A * x - b)
```
Systeme sparse sous-determine avec solution sparse exacte.

```matlab
A = sparse([1 2 0; 0 4 3]);
b = sparse([8; 18]);
x = A \ b
full(A * x)
```
Opération élément par élément entre une table et un scalaire.

```matlab
T = table([1; 2], [4; 8]);
2 \ T
```


## 🔗 Voir aussi

[ldivide](../operators/ldivide.md), [mrdivide](../operators/mrdivide.md), [table](../table/1_create_convert_tables/table.md), [timetable](../table/1_create_convert_tables/timetable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | documentation des resolutions sparse Eigen pour les cas single, single complexes, carres, rectangulaires, sous-determines et avec second membre sparse. |
| 2.0.0   | opérandes table et timetable combinés avec un scalaire (opération élément par élément). |

<!--
## 👤 Auteur

Allan CORNET
-->
