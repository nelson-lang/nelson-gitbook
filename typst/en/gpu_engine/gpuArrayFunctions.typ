#import "nelson_help.typ": *

= gpuArrayFunctions <gpu_engine:gpuArrayFunctions>

List the functions that support gpuArray.

== Syntax

- #raw("c = gpuArrayFunctions()");
- #raw("gpuArrayFunctions()");

== Output argument

/ c: a column cell of character vectors: the sorted names of the functions overloaded for #strong[gpuArray];.

== Description

#strong[c \= gpuArrayFunctions()]; returns the list of functions and operators that run on a #strong[gpuArray];. Calling #strong[gpuArrayFunctions()]; without an output argument displays the list.

 The list is derived from the operations actually registered by the #strong[gpu\_engine]; module (both the device builtins and the method overloads), so it always reflects the current build. It groups, among others:

 #strong[Operators];: plus, minus, times, rdivide, ldivide, power, mtimes, uminus, transpose, ctranspose, eq, ne, lt, le, gt, ge, and, or, xor, not.

 #strong[Element-wise math];: abs, sqrt, exp, expm1, log, log1p, log2, log10, pow2, sin, cos, tan, sec, csc, cot, asin, acos, atan, asec, acsc, acot, atan2, hypot, sinh, cosh, tanh, sech, csch, coth, asinh, acosh, atanh, deg2rad, rad2deg, floor, ceil, round, fix, sign, mod, rem.

 #strong[Bitwise]; (integer): bitand, bitor, bitxor, bitshift.

 #strong[Reductions and scans];: sum, prod, mean, var, std, any, all, cumsum, cumprod, cummax, cummin, sort, find, dot, norm.

 #strong[Linear algebra];: mtimes and, on the device where possible, dot and the vector norms; the factorizations (mldivide, inv, lu, qr, eig, svd), the matrix functions (expm, logm, sqrtm) and fft\/ifft fall back to the host.

 #strong[Complex];: real, imag, conj, angle, isreal (floor\/ceil\/round\/fix\/sign and the NaN\/Inf predicates also accept complex).

 #strong[Shape];: reshape, transpose, ctranspose, flip, fliplr, flipud, rot90, circshift, repmat, squeeze, diff, triu, tril, diag, kron, trace, cross, horzcat, vertcat, cat.

 #strong[Order statistics and set functions];: median, mode, prctile, histcounts, unique, ismember, sortrows, issorted, nonzeros, gradient (evaluated on the host, re-wrapped as a gpuArray).

 #strong[Predicates and sizing];: isnan, isinf, isfinite, isreal, isempty, isscalar, isvector, ismatrix, isrow, iscolumn, isnumeric, isfloat, isinteger, islogical, length, nnz, underlyingType, isUnderlyingType.

 #strong[Constructors];: zeros, ones, eye, nan, inf, true, false, rand, randn (through the #strong['gpuArray']; \/ #strong['like']; forms), and linspace \/ colon from a gpuArray endpoint.

 Data is moved with #strong[gpuArray]; and #strong[gather];; use #strong[arrayfun]; to run a fused element-wise expression on the device.


== Example

``````matlab
c = gpuArrayFunctions();
numel(c)
gpuArrayFunctions()
``````


== See also

#nlink(<gpu_engine:gpuArray>)[gpuArray];, #nlink(<gpu_engine:gather>)[gather];, #nlink(<gpu_engine:isgpuarray>)[isgpuarray];, #nlink(<gpu_engine:canUseGPU>)[canUseGPU];, #nlink(<gpu_engine:gpuDevice>)[gpuDevice];, #nlink(<operators:plus>)[plus];, #nlink(<operators:minus>)[minus];, #nlink(<operators:times>)[times];, #nlink(<operators:rdivide>)[rdivide];, #nlink(<operators:mtimes>)[mtimes];, #nlink(<operators:power>)[power];, #nlink(<operators:uminus>)[uminus];, #nlink(<operators:mldivide>)[mldivide];, #nlink(<operators:transpose>)[transpose];, #nlink(<operators:ctranspose>)[ctranspose];, #nlink(<operators:horzcat>)[horzcat];, #nlink(<operators:vertcat>)[vertcat];, #nlink(<operators:cat>)[cat];, #nlink(<operators:colon>)[colon];, #nlink(<operators:eq>)[eq];, #nlink(<operators:ne>)[ne];, #nlink(<operators:lt>)[lt];, #nlink(<operators:le>)[le];, #nlink(<operators:gt>)[gt];, #nlink(<operators:ge>)[ge];, #nlink(<operators:and>)[and];, #nlink(<operators:or>)[or];, #nlink(<operators:not>)[not];, #nlink(<operators:any>)[any];, #nlink(<operators:all>)[all];, #nlink(<operators:bitand>)[bitand];, #nlink(<operators:bitor>)[bitor];, #nlink(<operators:bitxor>)[bitxor];, #nlink(<trigonometric_functions:sin>)[sin];, #nlink(<trigonometric_functions:cos>)[cos];, #nlink(<trigonometric_functions:tan>)[tan];, #nlink(<trigonometric_functions:sinh>)[sinh];, #nlink(<trigonometric_functions:cosh>)[cosh];, #nlink(<trigonometric_functions:tanh>)[tanh];, #nlink(<trigonometric_functions:asin>)[asin];, #nlink(<trigonometric_functions:acos>)[acos];, #nlink(<trigonometric_functions:atan>)[atan];, #nlink(<trigonometric_functions:atan2>)[atan2];, #nlink(<data_analysis:sum>)[sum];, #nlink(<data_analysis:prod>)[prod];, #nlink(<data_analysis:max>)[max];, #nlink(<data_analysis:min>)[min];, #nlink(<data_analysis:cumsum>)[cumsum];, #nlink(<data_analysis:cumprod>)[cumprod];, #nlink(<data_analysis:cummax>)[cummax];, #nlink(<data_analysis:cummin>)[cummin];, #nlink(<data_analysis:sort>)[sort];, #nlink(<special_functions:dot>)[dot];, #nlink(<special_functions:cross>)[cross];, #nlink(<types:isreal>)[isreal];, #nlink(<logical:xor>)[xor];, #nlink(<logical:true>)[true];, #nlink(<logical:false>)[false];, #nlink(<constructors_functions:zeros>)[zeros];, #nlink(<constructors_functions:ones>)[ones];, #nlink(<constructors_functions:eye>)[eye];, #nlink(<random:rand>)[rand];, #nlink(<random:randn>)[randn];, #nlink(<fftw:fft>)[fft];, #nlink(<fftw:ifft>)[ifft];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
