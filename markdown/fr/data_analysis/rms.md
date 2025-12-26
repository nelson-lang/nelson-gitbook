# rms

Valeur quadratique moyenne (RMS) des éléments d'un tableau.

## 📝 Syntaxe

- y = rms(x)
- y = rms(x, dim)
- y = rms(x, vecdim)
- y = rms(x, 'all')
- y = rms(x, dim, type)
- y = rms(x, 'all', type)
- y = rms(x, dim, type, nanflag)
- y = rms(x, 'all', type, nanflag)

## 📥 Argument d'entrée

- x - Tableau d'entrée, spécifié comme un vecteur, une matrice ou un tableau multidimensionnel : types single, double, logique, entier
- dim - Dimension sur laquelle opérer, spécifiée comme un scalaire entier positif.
- 'all' - Opérer sur tous les éléments de x, en retournant la valeur RMS de tous les éléments.
- type - Type de données à utiliser dans le calcul : 'double', 'native'
- nanflag - Condition de valeur manquante, spécifiée comme : 'includenan', 'includemissing', 'omitnan', 'omitmissing'

## 📤 Argument de sortie

- y - Valeur(s) quadratique(s) moyenne(s), retournée(s) sous forme de scalaire, vecteur ou tableau.

## 📄 Description

<b>rms</b> renvoie la valeur quadratique moyenne (RMS) des éléments du tableau d'entrée.

- Si <b>x</b> est un vecteur, <b>y</b> est un scalaire.
- Si <b>x</b> est une matrice, <b>y</b> est un vecteur ligne contenant la valeur RMS pour chaque colonne (par défaut).
- Si <b>x</b> est un tableau multidimensionnel, <b>y</b> contient les valeurs RMS calculées le long de la première dimension du tableau dont la taille n'est pas égale à 1, sauf si une autre dimension est spécifiée.

La valeur quadratique moyenne d'un tableau x est:
$$\mathrm{RMS}(x) = \sqrt{ \frac{1}{N} \sum_{n=1}^{N} |x_n|^2 }$$
où la sommation est effectuée le long de la ou des dimensions spécifiées, et N est le nombre d'éléments le long de ces dimensions.

<b>Gestion des NaN :</b> Par défaut, les valeurs NaN sont incluses. Utilisez 'omitnan' ou 'omitmissing' pour ignorer les NaN.

<b>Gestion du type :</b> Si <b>type</b> est 'native', le calcul et la sortie utilisent la même classe que l'entrée (par exemple, une entrée entière renvoie une sortie entière).

## 💡 Exemples

Valeur RMS d'un vecteur

```matlab

t = 0:0.001:1-0.001;
x = cos(2*pi*100*t);
y = rms(x)
% y = 0.7071

```

Valeurs RMS des colonnes d'une matrice

```matlab

x = [4 -5 1; 2 3 5; -9 1 7];
y = rms(x)
% y = [5.8023 3.4157 5.0000]

```

Valeurs RMS des lignes d'une matrice

```matlab

x = [6 4 23 -3; 9 -10 4 11; 2 8 -5 1];
y = rms(x,2)
% y = [12.1450; 8.9163; 4.8477]

```

RMS en excluant les valeurs manquantes

```matlab

x = [1.77 -0.005 nan -2.95; nan 0.34 nan 0.19];
y = rms(x,"omitnan")
% y = [1.7700 0.2404 nan 2.0903]

```

RMS avec entrée entière et sortie native

```matlab

M = uint8([10:30:70;20:30:80;30:30:90]);
R = rms(M, 'native')
% R est de classe uint8

```

## 🔗 Voir aussi

[conv](../data_analysis/conv.md), [max](../data_analysis/max.md), [min](../data_analysis/min.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
