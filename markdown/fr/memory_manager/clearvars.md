# clearvars

Supprime des variables de l'espace de travail courant.

## 📝 Syntaxe

- clearvars
- clearvars variable_name_1 ... variable_name_N
- clearvars('-except', keep_variable_1, ..., keep_variable_N)
- clearvars(variable_name_1, ..., variable_name_N, '-except', keep_variable_1, ..., keep_variable_N)
- clearvars('-regexp', expression_1, ..., expression_N)
- clearvars(..., '-except', '-regexp', keep_expression_1, ..., keep_expression_N)
- clearvars('-global', ...)

## 📥 Argument d'entrée

- variable_name - un vecteur de caracteres ou un scalaire string : nom de variable ou motif avec le joker \*.
- keep_variable - un vecteur de caracteres ou un scalaire string : nom de variable ou motif avec le joker \* a conserver.
- -regexp - selectionne les variables dont le nom correspond a l'une des expressions regulieres.
- -except - conserve les variables correspondantes et supprime les autres variables selectionnees.
- -global - supprime les variables globales correspondantes. Cette option doit etre le premier argument.

## 📄 Description

<b>clearvars</b> supprime des variables de l'espace de travail courant. Sans argument, toutes les variables de l'espace de travail courant sont supprimees.

Les variables nommees peuvent etre passees sous forme commande ou sous forme fonction. Les options sont passees sous forme fonction.

Les motifs avec joker utilisent <b>\*</b> pour correspondre a toute suite de caracteres. Les expressions regulieres sont activees avec <b>-regexp</b>.

Quand une variable est globale, <b>clearvars</b> sans <b>-global</b> la retire seulement de l'espace de travail courant. Avec <b>-global</b>, les variables globales correspondantes sont supprimees de l'espace global.

## 💡 Exemples

Supprimer des variables nommees.

```matlab
a = 1;
b = 2;
c = 3;
clearvars a c
who
```

Supprimer toutes les variables sauf celles indiquees.

```matlab
A = 1;
B = 2;
C = 3;
clearvars('-except', 'A', 'C')
who
```

Supprimer des variables avec un joker et en conserver une.

```matlab
alpha = 1;
angle = 2;
beta = 3;
clearvars('a*', '-except', 'angle')
who
```

Supprimer des variables avec des expressions regulieres.

```matlab
MonValue = 1;
TueValue = 2;
KeepValue = 3;
clearvars('-regexp', '^(Mon|Tue)')
who
```

Supprimer des variables globales sauf celles indiquees.

```matlab
global gx gy
gx = 1;
gy = 2;
clearvars('-global', '-except', 'gx')
isglobal('gx')
isglobal('gy')
clear global gx gy
```

## 🔗 Voir aussi

[clear](../memory_manager/clear.md), [who](../memory_manager/who.md), [isglobal](../memory_manager/isglobal.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
