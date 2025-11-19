# arrayfun

Appliquer une fonction à chaque élément d'un tableau.

## 📝 Syntaxe

- B = arrayfun(func, A)
- B = arrayfun(func, A1, ..., An)
- B = arrayfun(..., 'UniformOutput', false)
- [B1, ..., Bm] = arrayfun(...)

## 📥 Argument d'entrée

- func - handle de fonction à appliquer à chaque élément. Doit renvoyer un scalaire sauf si 'UniformOutput' est false.
- A, A1, ..., An - tableaux d'entrée de même taille.
- 'UniformOutput' - scalaire logique. Si false, les sorties sont renvoyées dans un tableau cellulaire.

## 📤 Argument de sortie

- B, B1, ..., Bm - sorties de la fonction appliquée élément par élément. Tableau cellulaire si 'UniformOutput' est false.

## 📄 Description

<b>arrayfun(func, A)</b> applique la fonction<b>func</b> à chaque élément du tableau<b>A</b>, et renvoie le résultat dans <b>B</b> avec la même taille que<b>A</b>.

<b>arrayfun(func, A1, ..., An)</b> applique<b>func</b> aux éléments correspondants des tableaux d'entrée. Tous les tableaux doivent avoir la même taille.

Utilisez l'option <b>'UniformOutput'</b> à<b>false</b> pour autoriser des valeurs de sortie qui ne peuvent pas être concaténées dans un seul tableau. Dans ce cas, le résultat est un tableau cellulaire.

<b>[B1, ..., Bm] = arrayfun(...)</b> capture plusieurs sorties de la fonction appliquée.

## 💡 Exemples

Apply mean to structure field

```matlab

S(1).f1 = rand(1, 5);
S(2).f1 = rand(1, 10);
S(3).f1 = rand(1, 15);
means = arrayfun(@(x) mean(x.f1), S);

```

Return multiple outputs from function

```matlab

f = @(x) deal(x, x^2);
[A, B] = arrayfun(f, 1:4);

```

Return variable-sized outputs in a cell array

```matlab

S(1).f1 = rand(3,5);
S(2).f1 = rand(2,6);
A = arrayfun(@(x) mean(x.f1), S, 'UniformOutput', false);

```

## 🔗 Voir aussi

[cellfun](../data_structures/cellfun.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.14.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
