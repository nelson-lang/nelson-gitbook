#import "nelson_help.typ": *

= gpuArrayFunctions <gpu_engine:gpuArrayFunctions>

Liste les fonctions prenant en charge gpuArray.

== Syntaxe

- #raw("c = gpuArrayFunctions()");
- #raw("gpuArrayFunctions()");

== Argument de sortie

/ c: un cellule colonne de vecteurs de caractères : les noms triés des fonctions surchargées pour #strong[gpuArray];.

== Description

#strong[c \= gpuArrayFunctions()]; renvoie la liste des fonctions et opérateurs qui s'exécutent sur un #strong[gpuArray];. Appeler #strong[gpuArrayFunctions()]; sans argument de sortie affiche la liste.

 La liste est dérivée des opérations réellement enregistrées par le module #strong[gpu\_engine]; (à la fois les builtins du périphérique et les surcharges de méthode), elle reflète donc toujours la version courante. Elle regroupe, entre autres :

 #strong[Opérateurs]; : plus, minus, times, rdivide, ldivide, power, mtimes, uminus, transpose, ctranspose, eq, ne, lt, le, gt, ge, and, or, xor, not.

 #strong[Mathématiques élément par élément]; : abs, sqrt, exp, expm1, log, log1p, log2, log10, pow2, sin, cos, tan, sec, csc, cot, asin, acos, atan, asec, acsc, acot, atan2, hypot, sinh, cosh, tanh, sech, csch, coth, asinh, acosh, atanh, deg2rad, rad2deg, floor, ceil, round, fix, sign, mod, rem.

 #strong[Bit à bit]; (entier) : bitand, bitor, bitxor, bitshift.

 #strong[Réductions et balayages]; : sum, prod, mean, var, std, any, all, cumsum, cumprod, cummax, cummin, sort, find, dot, norm.

 #strong[Algèbre linéaire]; : mtimes et, sur le périphérique lorsque c'est possible, dot et les normes vectorielles ; les factorisations (mldivide, inv, lu, qr, eig, svd), les fonctions matricielles (expm, logm, sqrtm) et fft\/ifft retombent sur l'hôte.

 #strong[Complexe]; : real, imag, conj, angle, isreal (floor\/ceil\/round\/fix\/sign et les prédicats NaN\/Inf acceptent aussi le complexe).

 #strong[Forme]; : reshape, transpose, ctranspose, flip, fliplr, flipud, rot90, circshift, repmat, squeeze, diff, triu, tril, diag, kron, trace, cross, horzcat, vertcat, cat.

 #strong[Statistiques d'ordre et fonctions ensemblistes]; : median, mode, prctile, histcounts, unique, ismember, sortrows, issorted, nonzeros, gradient (évaluées sur l'hôte, ré-encapsulées en gpuArray).

 #strong[Prédicats et dimensions]; : isnan, isinf, isfinite, isreal, isempty, isscalar, isvector, ismatrix, isrow, iscolumn, isnumeric, isfloat, isinteger, islogical, length, nnz, underlyingType, isUnderlyingType.

 #strong[Constructeurs]; : zeros, ones, eye, nan, inf, true, false, rand, randn (via les formes #strong['gpuArray']; \/ #strong['like'];), et linspace \/ colon à partir d'une borne gpuArray.

 Les données sont transférées avec #strong[gpuArray]; et #strong[gather]; ; utilisez #strong[arrayfun]; pour exécuter une expression élément par élément fusionnée sur le périphérique.


== Exemple

``````matlab
c = gpuArrayFunctions();
numel(c)
gpuArrayFunctions()
``````


== Voir aussi

#nlink(<gpu_engine:gpuArray>)[gpuArray];, #nlink(<gpu_engine:gather>)[gather];, #nlink(<gpu_engine:isgpuarray>)[isgpuarray];, #nlink(<gpu_engine:canUseGPU>)[canUseGPU];, #nlink(<gpu_engine:gpuDevice>)[gpuDevice];, #nlink(<operators:plus>)[plus];, #nlink(<operators:minus>)[minus];, #nlink(<operators:times>)[times];, #nlink(<operators:rdivide>)[rdivide];, #nlink(<operators:mtimes>)[mtimes];, #nlink(<operators:power>)[power];, #nlink(<operators:uminus>)[uminus];, #nlink(<operators:mldivide>)[mldivide];, #nlink(<operators:transpose>)[transpose];, #nlink(<operators:ctranspose>)[ctranspose];, #nlink(<operators:horzcat>)[horzcat];, #nlink(<operators:vertcat>)[vertcat];, #nlink(<operators:cat>)[cat];, #nlink(<operators:colon>)[colon];, #nlink(<operators:eq>)[eq];, #nlink(<operators:ne>)[ne];, #nlink(<operators:lt>)[lt];, #nlink(<operators:le>)[le];, #nlink(<operators:gt>)[gt];, #nlink(<operators:ge>)[ge];, #nlink(<operators:and>)[and];, #nlink(<operators:or>)[or];, #nlink(<operators:not>)[not];, #nlink(<operators:any>)[any];, #nlink(<operators:all>)[all];, #nlink(<operators:bitand>)[bitand];, #nlink(<operators:bitor>)[bitor];, #nlink(<operators:bitxor>)[bitxor];, #nlink(<trigonometric_functions:sin>)[sin];, #nlink(<trigonometric_functions:cos>)[cos];, #nlink(<trigonometric_functions:tan>)[tan];, #nlink(<trigonometric_functions:sinh>)[sinh];, #nlink(<trigonometric_functions:cosh>)[cosh];, #nlink(<trigonometric_functions:tanh>)[tanh];, #nlink(<trigonometric_functions:asin>)[asin];, #nlink(<trigonometric_functions:acos>)[acos];, #nlink(<trigonometric_functions:atan>)[atan];, #nlink(<trigonometric_functions:atan2>)[atan2];, #nlink(<data_analysis:sum>)[sum];, #nlink(<data_analysis:prod>)[prod];, #nlink(<data_analysis:max>)[max];, #nlink(<data_analysis:min>)[min];, #nlink(<data_analysis:cumsum>)[cumsum];, #nlink(<data_analysis:cumprod>)[cumprod];, #nlink(<data_analysis:cummax>)[cummax];, #nlink(<data_analysis:cummin>)[cummin];, #nlink(<data_analysis:sort>)[sort];, #nlink(<special_functions:dot>)[dot];, #nlink(<special_functions:cross>)[cross];, #nlink(<types:isreal>)[isreal];, #nlink(<logical:xor>)[xor];, #nlink(<logical:true>)[true];, #nlink(<logical:false>)[false];, #nlink(<constructors_functions:zeros>)[zeros];, #nlink(<constructors_functions:ones>)[ones];, #nlink(<constructors_functions:eye>)[eye];, #nlink(<random:rand>)[rand];, #nlink(<random:randn>)[randn];, #nlink(<fftw:fft>)[fft];, #nlink(<fftw:ifft>)[ifft];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
