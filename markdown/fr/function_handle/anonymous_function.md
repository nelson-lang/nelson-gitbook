# Anonymous Functions

Fonctions anonymes.

## Description

<p>Les fonctions anonymes offrent un moyen pratique de créer rapidement des fonctions simples sans avoir à créer un fichier M séparé à chaque fois.</p>

<p>Ces fonctions anonymes peuvent être définies directement dans la ligne de commande ou à l'intérieur d'une fonction ou d'un script M-file.</p>

<p>Pour créer une fonction anonyme à partir d'une expression, utilisez la syntaxe suivante :</p>

<p>function_handle = @(argument_list) expression</p>

<p>Dans cette syntaxe, expression représente le corps de la fonction, contenant le code qui réalise l'opération principale.</p>

<p>Cette partie doit être une expression valide. Ensuite, argument_list est la liste d'arguments d'entrée séparés par des virgules passés à la fonction.</p>

<p>Ces composants correspondent au corps et à la liste d'arguments d'une fonction classique.</p>

<p>Au début de cette déclaration, on trouve le signe @.</p>

<p>Le signe @ est l'opérateur qui construit un handle de fonction (function handle).</p>

<p>La création d'un function handle pour une fonction anonyme permet d'appeler la fonction et est utile pour transmettre la fonction anonyme en argument à une autre fonction.</p>

<p>Le signe @ est requis dans la définition d'une fonction anonyme.</p>

<p>Les function handles s'appliquent non seulement aux fonctions anonymes mais aussi à n'importe quelle fonction.</p>

<p>La syntaxe pour créer un handle vers une fonction régulière est différente :</p>

<p>function_handle = @function_name</p>

<p>Par exemple : f = @cos</p>

<p>Vous pouvez enregistrer des function handles et leurs valeurs associées dans un fichier MAT.</p>

<p>Plus tard, dans une autre session, vous pouvez les restaurer avec save et load.</p>

<p>Par exemple : a = 1; b = 2; f = @(x) a + b + x; save('test.nH5', f);</p>

<p>Seuls les fichiers .nh5 permettent de sauvegarder et recharger correctement le type function_handle.</p>

<p>Vous pouvez créer une fonction anonyme avec plusieurs arguments d'entrée, par exemple x et y.</p>

<p>Si les variables A et B sont définies, vous pouvez définir :</p>

<p>A = 10; B = 100; r = @(x, y) (A*y + B*x);</p>

## Exemples

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

## Voir aussi

[func2str](../function_handle/func2str.md), [str2func](../function_handle/str2func.md), [isfunction_handle](../function_handle/isfunction_handle.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
