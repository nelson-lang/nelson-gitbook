#import "nelson_help.typ": *

= clearvars <memory_manager:clearvars>

Supprime des variables de l'espace de travail courant.

== Syntaxe

- #raw("clearvars");
- #raw("clearvars variable_name_1 ... variable_name_N");
- #raw("clearvars('-except', keep_variable_1, ..., keep_variable_N)");
- #raw("clearvars(variable_name_1, ..., variable_name_N, '-except', keep_variable_1, ..., keep_variable_N)");
- #raw("clearvars('-regexp', expression_1, ..., expression_N)");
- #raw("clearvars(..., '-except', '-regexp', keep_expression_1, ..., keep_expression_N)");
- #raw("clearvars('-global', ...)");

== Argument d'entrée

/ variable\_name: un vecteur de caracteres ou un scalaire string : nom de variable ou motif avec le joker \*.
/ keep\_variable: un vecteur de caracteres ou un scalaire string : nom de variable ou motif avec le joker \* a conserver.
/ -regexp: selectionne les variables dont le nom correspond a l'une des expressions regulieres.
/ -except: conserve les variables correspondantes et supprime les autres variables selectionnees.
/ -global: supprime les variables globales correspondantes. Cette option doit etre le premier argument.

== Description

#strong[clearvars]; supprime des variables de l'espace de travail courant. Sans argument, toutes les variables de l'espace de travail courant sont supprimees.

 Les variables nommees peuvent etre passees sous forme commande ou sous forme fonction. Les options sont passees sous forme fonction.

 Les motifs avec joker utilisent #strong[\*]; pour correspondre a toute suite de caracteres. Les expressions regulieres sont activees avec #strong[-regexp];.

 Quand une variable est globale, #strong[clearvars]; sans #strong[-global]; la retire seulement de l'espace de travail courant. Avec #strong[-global];, les variables globales correspondantes sont supprimees de l'espace global.


== Exemples

Supprimer des variables nommees.

``````matlab
a = 1;
b = 2;
c = 3;
clearvars a c
who
``````

Supprimer toutes les variables sauf celles indiquees.

``````matlab
A = 1;
B = 2;
C = 3;
clearvars('-except', 'A', 'C')
who
``````

Supprimer des variables avec un joker et en conserver une.

``````matlab
alpha = 1;
angle = 2;
beta = 3;
clearvars('a*', '-except', 'angle')
who
``````

Supprimer des variables avec des expressions regulieres.

``````matlab
MonValue = 1;
TueValue = 2;
KeepValue = 3;
clearvars('-regexp', '^(Mon|Tue)')
who
``````

Supprimer des variables globales sauf celles indiquees.

``````matlab
global gx gy
gx = 1;
gy = 2;
clearvars('-global', '-except', 'gx')
isglobal('gx')
isglobal('gy')
clear global gx gy
``````


== Voir aussi

#nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:who>)[who];, #nlink(<memory_manager:isglobal>)[isglobal];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
