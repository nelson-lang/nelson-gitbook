# Anonymous Functions

Fonctions anonymes.

## 📄 Description

Les fonctions anonymes offrent un moyen pratique de créer rapidement des fonctions simples sans avoir à créer un fichier M séparé à chaque fois.

Ces fonctions anonymes peuvent être définies directement dans la ligne de commande ou à l'intérieur d'une fonction ou d'un script M-file.

Pour créer une fonction anonyme à partir d'une expression, utilisez la syntaxe suivante :

function_handle = @(argument_list) expression

Dans cette syntaxe,<b>expression</b> représente le corps de la fonction, contenant le code qui réalise l'opération principale.

Cette partie doit être une expression valide. Ensuite, <b>argument_list</b> est la liste d'arguments d'entrée séparés par des virgules passés à la fonction.

Ces composants correspondent au corps et à la liste d'arguments d'une fonction classique.

Au début de cette déclaration, on trouve le signe <b>@</b>.

Le signe <b>@</b> est l'opérateur qui construit un handle de fonction (function handle).

La création d'un function handle pour une fonction anonyme permet d'appeler la fonction et est utile pour transmettre la fonction anonyme en argument à une autre fonction.

Le signe<b>@</b> est requis dans la définition d'une fonction anonyme.

Les function handles s'appliquent non seulement aux fonctions anonymes mais aussi à n'importe quelle fonction.

La syntaxe pour créer un handle vers une fonction régulière est différente :

function_handle = @function_name

Par exemple : <b>f = @cos</b>

Vous pouvez enregistrer des function handles et leurs valeurs associées dans un fichier MAT.

Plus tard, dans une autre session, vous pouvez les restaurer avec <b>save</b> et <b>load</b>.

Par exemple : <b>a = 1; b = 2; f = @(x) a + b + x; save('test.nH5', f);</b>

Seuls les fichiers .nh5 permettent de sauvegarder et recharger correctement le type function_handle.

Vous pouvez créer une fonction anonyme avec plusieurs arguments d'entrée, par exemple x et y.

Si les variables A et B sont définies, vous pouvez définir :

<b>A = 10; B = 100; r = @(x, y) (A\*y + B\*x);</b>

## 💡 Exemples

```matlab
A = 10;
f1 = @() sqr(A);
clear A
f1
f1()

```

```matlab
f2 = @cos;
f2
f2(0.6)

```

```matlab
f3 = @(x)cos(x) + 1;
f2
f3(0.6)

```

Multiple input arguments

```matlab
A = 10;
B = 100;
f4 = @(x, y) (A*y + B*x);
f4
f4(0.6, 0.2)

```

Save/Load function handle

```matlab
a = 1;
b = 2;
f5 = @(x) a + b + x;
save([tempdir(), 'test.nh5'], 'f5');
clear all
load([tempdir(), 'test.nh5'])
f5
f5(10)

```

Multiple output arguments

```matlab
P = pi * 3;
mymeshgrid = @(X, Y) meshgrid((-X:X/P:X),(-Y:Y/P:Y));
[x, y] = mymeshgrid(pi, 2 * pi);
z = cos(x) + sin(y);
mesh(x, y, z)

```

## 🔗 Voir aussi

[func2str](../function_handle/func2str.md), [str2func](../function_handle/str2func.md), [isfunction_handle](../function_handle/isfunction_handle.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
