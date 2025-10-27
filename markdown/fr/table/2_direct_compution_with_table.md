# Calcul direct avec Table

## 📄 Description

Vous pouvez effectuer des calculs directement sur les tables sans avoir besoin de les indexer.

Pour effectuer ces opérations en utilisant la même syntaxe que pour les tableaux, vos tables doivent respecter plusieurs critères :

Toutes les variables de la table doivent avoir des types de données qui prennent en charge les calculs souhaités (par exemple, types numériques ou logiques).

Lorsque vous effectuez une opération où un seul opérande est une table, l'autre opérande doit être un tableau numérique ou logique.

Pour les opérations impliquant deux tables, elles doivent avoir des tailles compatibles (c.-à-d. le même nombre de lignes et de colonnes ou que l'opération ait du sens pour les structures impliquées).

Ci-dessous un exemple montrant comment effectuer des calculs sans indexer explicitement la table.

## 💡 Exemple

Direct computation on Tables

```matlab
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
abs(sin(T)) + 1

```

## 🔗 Voir aussi

[abs](../elementary_functions/abs.md), [acos](../trigonometric_functions/acos.md), [acosh](../trigonometric_functions/acosh.md), [acot](../trigonometric/acot.md), [acotd](../trigonometric/acotd.md), [acoth](../trigonometric/acoth.md), [acsc](../trigonometric/acsc.md), [acscd](../trigonometric/acscd.md), [acsch](../trigonometric/acsch.md), [asec](../trigonometric/asec.md), [asecd](../trigonometric/asecd.md), [asech](../trigonometric/asech.md), [asin](../trigonometric_functions/asin.md), [asind](../trigonometric_functions/asind.md), [asinh](../trigonometric_functions/asinh.md), [atan](../trigonometric_functions/atan.md), [atand](../trigonometric_functions/atand.md), [atanh](../trigonometric_functions/atanh.md), [ceil](../elementary_functions/ceil.md), [cosd](../trigonometric/cosd.md), [cosh](../trigonometric/cosh.md), [cospi](../trigonometric_functions/cospi.md), [cot](../trigonometric/cot.md), [cotd](../trigonometric/cotd.md), [coth](../trigonometric/coth.md), [csc](../trigonometric/csc.md), [cscd](../trigonometric/cscd.md), [csch](../trigonometric/csch.md), [exp](../elementary_functions/exp.md), [fix](../elementary_functions/fix.md), [floor](../elementary_functions/floor.md), [log](../elementary_functions/log.md), [log10](../elementary_functions/log10.md), [log1p](../elementary_functions/log1p.md), [log2](../elementary_functions/log2.md), [nextpow2](../elementary_functions/nextpow2.md), [round](../elementary_functions/round.md), [sec](../trigonometric/sec.md), [secd](../trigonometric/secd.md), [sech](../trigonometric/sech.md), [sin](../trigonometric/sin.md), [sind](../trigonometric/sind.md), [sinh](../trigonometric/sinh.md), [sinpi](../trigonometric_functions/sinpi.md), [sqrt](../elementary_functions/sqrt.md), [tan](../trigonometric_functions/tan.md), [tand](../trigonometric_functions/tand.md), [tanh](../trigonometric_functions/tanh.md), [var](../statistics/var.md), [acosd](../trigonometric_functions/acosd.md), [not](../operators/not.md), [plus](../elementary_functions/plus.md), [minus](../elementary_functions/minus.md), [times](../elementary_functions/times.md), [eq](../elementary_functions/eq.md), [ge](../elementary_functions/ge.md), [gt](../elementary_functions/gt.md), [le](../elementary_functions/le.md), [ne](../elementary_functions/ne.md), [lt](../elementary_functions/lt.md), [mrdivide](../operators/mrdivide.md), [rem](../elementary_functions/rem.md), [power](../operators/power.md), [pow2](../elementary_functions/pow2.md), [or](../operators/or.md), [mod](../elementary_functions/rem.md), [ldivide](../operators/ldivide.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.9.0   | version initiale |

## 👤 Auteur

Allan CORNET
