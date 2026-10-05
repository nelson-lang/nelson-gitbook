# arrayfun

Appliquer une fonction à chaque élément d'un tableau.

## 📝 Syntaxe

- B = arrayfun(func, A)
- B = arrayfun(func, A1, ..., An)
- B = arrayfun(..., 'UniformOutput', false)
- B = arrayfun(..., 'ErrorHandler', errfunc)
- [B1, ..., Bm] = arrayfun(...)

## 📥 Argument d'entrée

- func - handle de fonction (ou chaîne de caractères contenant le nom de la fonction) à appliquer à chaque élément. Avec l'option 'UniformOutput' à true (valeur par défaut), func doit renvoyer à chaque appel un scalaire de même classe, afin que les résultats puissent être concaténés dans un tableau.
- A, A1, ..., An - tableaux d'entrée, tous de même taille. func est appelée sur les éléments correspondants A1(i), ..., An(i).
- 'UniformOutput' - scalaire logique (true par défaut). Si false, les sorties sont renvoyées dans un tableau cellulaire et func peut renvoyer des valeurs de taille et de classe quelconques.
- 'ErrorHandler' - handle de fonction appelé lorsque func déclenche une erreur. Il reçoit une structure décrivant l'erreur (champs 'message', 'identifier' et 'stack') suivie des éléments passés à func, et renvoie la ou les sorties de remplacement. Sans gestionnaire d'erreur, l'erreur est propagée.

## 📤 Argument de sortie

- B, B1, ..., Bm - sorties de la fonction appliquée élément par élément. Tableau cellulaire si 'UniformOutput' est false.

## 📄 Description


<b>arrayfun(func, A)</b> applique la fonction<b>func</b> à chaque élément du tableau<b>A</b>, et renvoie le résultat dans <b>B</b> avec la même taille que <b>A</b>. 

<b>arrayfun(func, A1, ..., An)</b> applique <b>func</b> aux éléments correspondants des tableaux d'entrée. Tous les tableaux doivent avoir la même taille. 

Utilisez l'option <b>
        'UniformOutput'
      </b> à<b>false</b> pour autoriser des valeurs de sortie qui ne peuvent pas être concaténées dans un seul tableau. Dans ce cas, le résultat est un tableau cellulaire. 

Avec <b>'UniformOutput'</b> à <b>true</b> (valeur par défaut), <b>func</b> doit renvoyer sur chaque élément un scalaire de même classe pour que les résultats puissent être assemblés en un tableau ; sinon, utilisez <b>'UniformOutput'</b>, <b>false</b>. 

Utilisez l'option <b>'ErrorHandler'</b> pour fournir une fonction invoquée lorsque <b>func</b> échoue sur un élément, par exemple pour substituer une valeur par défaut. 

<b>[B1, ..., Bm] = arrayfun(...)</b> capture plusieurs sorties de la fonction appliquée. 

De nombreuses fonctions et opérateurs intégrés sont déjà vectorisés et se propagent sur les tableaux ; lorsque le corps de <b>func</b> est une simple expression élément par élément, appliquer l'expression équivalente directement au tableau entier (par exemple <b>A.^2 + B.^2</b>) est généralement le choix le plus efficace.

## 💡 Exemples

Appliquer mean à un champ de structure

```matlab

S(1).f1 = rand(1, 5);
S(2).f1 = rand(1, 10);
S(3).f1 = rand(1, 15);
means = arrayfun(@(x) mean(x.f1), S);

```
Expression élément par élément sur plusieurs tableaux

```matlab

A = reshape(1:12, 3, 4);
B = reshape(12:-1:1, 3, 4);
R = arrayfun(@(x, y) sqrt(x.^2 + y.^2), A, B)

```
Renvoyer plusieurs sorties d'une fonction

```matlab

f = @(x) deal(x, x^2);
[A, B] = arrayfun(f, 1:4);

```
Renvoyer des sorties de tailles variables dans un tableau cellulaire

```matlab

C = arrayfun(@(x) 1:x, [2 3 4], 'UniformOutput', false)

```
Traiter les erreurs avec un gestionnaire d'erreur

```matlab

errfun = @(S, x) NaN;
R = arrayfun(@(x) x(2), [1 2 3], 'ErrorHandler', errfun)

```


## 🔗 Voir aussi

[cellfun](../data_structures/cellfun.md), [bsxfun](../elementary_functions/2_elementary_math/bsxfun.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.14.0   | version initiale |
| 2.0.0   | option 'ErrorHandler' et notes d'utilisation documentées |

<!--
## 👤 Auteur

Allan CORNET
-->
