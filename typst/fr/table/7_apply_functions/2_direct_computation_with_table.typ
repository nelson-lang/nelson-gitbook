#import "../nelson_help.typ": *

= Calcul direct avec Table <table:7_apply_functions.2_direct_computation_with_table>



== Description

Vous pouvez effectuer des calculs directement sur les tables sans avoir besoin de les indexer.

 Pour effectuer ces opérations en utilisant la même syntaxe que pour les tableaux, vos tables doivent respecter plusieurs critères :

 Toutes les variables de la table doivent avoir des types de données qui prennent en charge les calculs souhaités (par exemple, types numériques ou logiques).

 Lorsque vous effectuez une opération où un seul opérande est une table, l'autre opérande doit être un tableau numérique ou logique.

 Pour les opérations impliquant deux tables, elles doivent avoir des tailles compatibles (c.-à-d. le même nombre de lignes et de colonnes ou que l'opération ait du sens pour les structures impliquées).

 Les opérateurs matriciels #strong[\*];, #strong[\/]; et #strong[\\]; effectuent une multiplication et une division élément par élément (comme #strong[.\*];, #strong[.\/]; et #strong[.\\];) lorsqu'un opérande est une table ou une timetable et que l'autre opérande est un scalaire. Toute autre combinaison provoque une erreur : utilisez alors les opérateurs élément par élément.

 Les opérateurs unaires #strong[-]; et #strong[+]; s'appliquent à chaque variable d'une table ou d'une timetable.

 

 Ci-dessous un exemple montrant comment effectuer des calculs sans indexer explicitement la table.


== Exemple

Direct computation on Tables

``````matlab
% Create a sample table with sensor data
T = table([1.5; -2.3; 4.7], [0.5; 1.1; -0.7], [-1; 2; 3], ...
          'VariableNames', {'Voltage', 'Current', 'Resistance'});

% Apply functions directly to the table columns
abs(T)
acos(T)
acosh(T)
T > 1
T + 2
T .* T
T * 2
10 / T
-T
abs(sin(T)) + 1

``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.abs>)[abs];, #nlink(<trigonometric_functions:acos>)[acos];, #nlink(<trigonometric_functions:acosh>)[acosh];, #nlink(<trigonometric_functions:acot>)[acot];, #nlink(<trigonometric_functions:acotd>)[acotd];, #nlink(<trigonometric_functions:acoth>)[acoth];, #nlink(<trigonometric_functions:acsc>)[acsc];, #nlink(<trigonometric_functions:acscd>)[acscd];, #nlink(<trigonometric_functions:acsch>)[acsch];, #nlink(<trigonometric_functions:asec>)[asec];, #nlink(<trigonometric_functions:asecd>)[asecd];, #nlink(<trigonometric_functions:asech>)[asech];, #nlink(<trigonometric_functions:asin>)[asin];, #nlink(<trigonometric_functions:asind>)[asind];, #nlink(<trigonometric_functions:asinh>)[asinh];, #nlink(<trigonometric_functions:atan>)[atan];, #nlink(<trigonometric_functions:atand>)[atand];, #nlink(<trigonometric_functions:atanh>)[atanh];, #nlink(<elementary_functions:2_elementary_math.ceil>)[ceil];, #nlink(<trigonometric_functions:cosd>)[cosd];, #nlink(<trigonometric_functions:cosh>)[cosh];, #nlink(<trigonometric_functions:cospi>)[cospi];, #nlink(<trigonometric_functions:cot>)[cot];, #nlink(<trigonometric_functions:cotd>)[cotd];, #nlink(<trigonometric_functions:coth>)[coth];, #nlink(<trigonometric_functions:csc>)[csc];, #nlink(<trigonometric_functions:cscd>)[cscd];, #nlink(<trigonometric_functions:csch>)[csch];, #nlink(<elementary_functions:2_elementary_math.exp>)[exp];, #nlink(<elementary_functions:2_elementary_math.fix>)[fix];, #nlink(<elementary_functions:2_elementary_math.floor>)[floor];, #nlink(<elementary_functions:2_elementary_math.log>)[log];, #nlink(<elementary_functions:2_elementary_math.log10>)[log10];, #nlink(<elementary_functions:2_elementary_math.log1p>)[log1p];, #nlink(<elementary_functions:2_elementary_math.log2>)[log2];, #nlink(<elementary_functions:2_elementary_math.nextpow2>)[nextpow2];, #nlink(<elementary_functions:2_elementary_math.round>)[round];, #nlink(<trigonometric_functions:sec>)[sec];, #nlink(<trigonometric_functions:secd>)[secd];, #nlink(<trigonometric_functions:sech>)[sech];, #nlink(<trigonometric_functions:sin>)[sin];, #nlink(<trigonometric_functions:sind>)[sind];, #nlink(<trigonometric_functions:sinh>)[sinh];, #nlink(<trigonometric_functions:sinpi>)[sinpi];, #nlink(<elementary_functions:2_elementary_math.sqrt>)[sqrt];, #nlink(<trigonometric_functions:tan>)[tan];, #nlink(<trigonometric_functions:tand>)[tand];, #nlink(<trigonometric_functions:tanh>)[tanh];, #nlink(<statistics:1_descriptive_statistics_visualization.var>)[var];, #nlink(<trigonometric_functions:acosd>)[acosd];, #nlink(<operators:not>)[not];, #nlink(<operators:plus>)[plus];, #nlink(<operators:minus>)[minus];, #nlink(<operators:times>)[times];, #nlink(<operators:eq>)[eq];, #nlink(<operators:ge>)[ge];, #nlink(<operators:gt>)[gt];, #nlink(<operators:le>)[le];, #nlink(<operators:ne>)[ne];, #nlink(<operators:lt>)[lt];, #nlink(<operators:mrdivide>)[mrdivide];, #nlink(<elementary_functions:2_elementary_math.rem>)[rem];, #nlink(<operators:power>)[power];, #nlink(<elementary_functions:2_elementary_math.pow2>)[pow2];, #nlink(<operators:or>)[or];, #nlink(<elementary_functions:2_elementary_math.mod>)[mod];, #nlink(<operators:ldivide>)[ldivide];, #nlink(<operators:mtimes>)[mtimes];, #nlink(<operators:mldivide>)[mldivide];, #nlink(<operators:uminus>)[uminus];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.9.0], [version initiale],
  [2.0.0], [mtimes (\*), mrdivide (\/) et mldivide (\\) effectuent des opérations élément par élément entre une table ou une timetable et un scalaire.],
)

// Auteur: Allan CORNET
