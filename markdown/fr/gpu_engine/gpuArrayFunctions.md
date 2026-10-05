# gpuArrayFunctions

Liste les fonctions prenant en charge gpuArray.

## 📝 Syntaxe

- c = gpuArrayFunctions()
- gpuArrayFunctions()

## 📤 Argument de sortie

- c - un cellule colonne de vecteurs de caractères : les noms triés des fonctions surchargées pour <b>gpuArray</b>.

## 📄 Description


<b>c = gpuArrayFunctions()</b> renvoie la liste des fonctions et opérateurs qui s'exécutent sur un <b>gpuArray</b>. Appeler <b>gpuArrayFunctions()</b> sans argument de sortie affiche la liste. 

La liste est dérivée des opérations réellement enregistrées par le module <b>gpu\_engine</b> (à la fois les builtins du périphérique et les surcharges de méthode), elle reflète donc toujours la version courante. Elle regroupe, entre autres : 

<b>Opérateurs</b> : plus, minus, times, rdivide, ldivide, power, mtimes, uminus, transpose, ctranspose, eq, ne, lt, le, gt, ge, and, or, xor, not. 

<b>Mathématiques élément par élément</b> : abs, sqrt, exp, expm1, log, log1p, log2, log10, pow2, sin, cos, tan, sec, csc, cot, asin, acos, atan, asec, acsc, acot, atan2, hypot, sinh, cosh, tanh, sech, csch, coth, asinh, acosh, atanh, deg2rad, rad2deg, floor, ceil, round, fix, sign, mod, rem. 

<b>Bit à bit</b> (entier) : bitand, bitor, bitxor, bitshift. 

<b>Réductions et balayages</b> : sum, prod, mean, var, std, any, all, cumsum, cumprod, cummax, cummin, sort, find, dot, norm. 

<b>Algèbre linéaire</b> : mtimes et, sur le périphérique lorsque c'est possible, dot et les normes vectorielles ; les factorisations (mldivide, inv, lu, qr, eig, svd), les fonctions matricielles (expm, logm, sqrtm) et fft/ifft retombent sur l'hôte. 

<b>Complexe</b> : real, imag, conj, angle, isreal (floor/ceil/round/fix/sign et les prédicats NaN/Inf acceptent aussi le complexe). 

<b>Forme</b> : reshape, transpose, ctranspose, flip, fliplr, flipud, rot90, circshift, repmat, squeeze, diff, triu, tril, diag, kron, trace, cross, horzcat, vertcat, cat. 

<b>Statistiques d'ordre et fonctions ensemblistes</b> : median, mode, prctile, histcounts, unique, ismember, sortrows, issorted, nonzeros, gradient (évaluées sur l'hôte, ré-encapsulées en gpuArray). 

<b>Prédicats et dimensions</b> : isnan, isinf, isfinite, isreal, isempty, isscalar, isvector, ismatrix, isrow, iscolumn, isnumeric, isfloat, isinteger, islogical, length, nnz, underlyingType, isUnderlyingType. 

<b>Constructeurs</b> : zeros, ones, eye, nan, inf, true, false, rand, randn (via les formes <b>'gpuArray'</b> / <b>'like'</b>), et linspace / colon à partir d'une borne gpuArray. 

Les données sont transférées avec <b>gpuArray</b> et <b>gather</b> ; utilisez <b>arrayfun</b> pour exécuter une expression élément par élément fusionnée sur le périphérique.

## 💡 Exemple



```matlab
c = gpuArrayFunctions();
numel(c)
gpuArrayFunctions()
```


## 🔗 Voir aussi

[gpuArray](../gpu_engine/gpuArray.md), [gather](../gpu_engine/gather.md), [isgpuarray](../gpu_engine/isgpuarray.md), [canUseGPU](../gpu_engine/canUseGPU.md), [gpuDevice](../gpu_engine/gpuDevice.md), [plus](../operators/plus.md), [minus](../operators/minus.md), [times](../operators/times.md), [rdivide](../operators/rdivide.md), [mtimes](../operators/mtimes.md), [power](../operators/power.md), [uminus](../operators/uminus.md), [mldivide](../operators/mldivide.md), [transpose](../operators/transpose.md), [ctranspose](../operators/ctranspose.md), [horzcat](../operators/horzcat.md), [vertcat](../operators/vertcat.md), [cat](../operators/cat.md), [colon](../operators/colon.md), [eq](../operators/eq.md), [ne](../operators/ne.md), [lt](../operators/lt.md), [le](../operators/le.md), [gt](../operators/gt.md), [ge](../operators/ge.md), [and](../operators/and.md), [or](../operators/or.md), [not](../operators/not.md), [any](../operators/any.md), [all](../operators/all.md), [bitand](../operators/bitand.md), [bitor](../operators/bitor.md), [bitxor](../operators/bitxor.md), [sin](../trigonometric_functions/sin.md), [cos](../trigonometric_functions/cos.md), [tan](../trigonometric_functions/tan.md), [sinh](../trigonometric_functions/sinh.md), [cosh](../trigonometric_functions/cosh.md), [tanh](../trigonometric_functions/tanh.md), [asin](../trigonometric_functions/asin.md), [acos](../trigonometric_functions/acos.md), [atan](../trigonometric_functions/atan.md), [atan2](../trigonometric_functions/atan2.md), [sum](../data_analysis/sum.md), [prod](../data_analysis/prod.md), [max](../data_analysis/max.md), [min](../data_analysis/min.md), [cumsum](../data_analysis/cumsum.md), [cumprod](../data_analysis/cumprod.md), [cummax](../data_analysis/cummax.md), [cummin](../data_analysis/cummin.md), [sort](../data_analysis/sort.md), [dot](../special_functions/dot.md), [cross](../special_functions/cross.md), [isreal](../types/isreal.md), [xor](../logical/xor.md), [true](../logical/true.md), [false](../logical/false.md), [zeros](../constructors_functions/zeros.md), [ones](../constructors_functions/ones.md), [eye](../constructors_functions/eye.md), [rand](../random/rand.md), [randn](../random/randn.md), [fft](../fftw/fft.md), [ifft](../fftw/ifft.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
