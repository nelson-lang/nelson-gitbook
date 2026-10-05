# gpuArrayFunctions

List the functions that support gpuArray.

## 📝 Syntax

- c = gpuArrayFunctions()
- gpuArrayFunctions()

## 📤 Output argument

- c - a column cell of character vectors: the sorted names of the functions overloaded for <b>gpuArray</b>.

## 📄 Description


<b>c = gpuArrayFunctions()</b> returns the list of functions and operators that run on a <b>gpuArray</b>. Calling <b>gpuArrayFunctions()</b> without an output argument displays the list. 

The list is derived from the operations actually registered by the <b>gpu\_engine</b> module (both the device builtins and the method overloads), so it always reflects the current build. It groups, among others: 

<b>Operators</b>: plus, minus, times, rdivide, ldivide, power, mtimes, uminus, transpose, ctranspose, eq, ne, lt, le, gt, ge, and, or, xor, not. 

<b>Element-wise math</b>: abs, sqrt, exp, expm1, log, log1p, log2, log10, pow2, sin, cos, tan, sec, csc, cot, asin, acos, atan, asec, acsc, acot, atan2, hypot, sinh, cosh, tanh, sech, csch, coth, asinh, acosh, atanh, deg2rad, rad2deg, floor, ceil, round, fix, sign, mod, rem. 

<b>Bitwise</b> (integer): bitand, bitor, bitxor, bitshift. 

<b>Reductions and scans</b>: sum, prod, mean, var, std, any, all, cumsum, cumprod, cummax, cummin, sort, find, dot, norm. 

<b>Linear algebra</b>: mtimes and, on the device where possible, dot and the vector norms; the factorizations (mldivide, inv, lu, qr, eig, svd), the matrix functions (expm, logm, sqrtm) and fft/ifft fall back to the host. 

<b>Complex</b>: real, imag, conj, angle, isreal (floor/ceil/round/fix/sign and the NaN/Inf predicates also accept complex). 

<b>Shape</b>: reshape, transpose, ctranspose, flip, fliplr, flipud, rot90, circshift, repmat, squeeze, diff, triu, tril, diag, kron, trace, cross, horzcat, vertcat, cat. 

<b>Order statistics and set functions</b>: median, mode, prctile, histcounts, unique, ismember, sortrows, issorted, nonzeros, gradient (evaluated on the host, re-wrapped as a gpuArray). 

<b>Predicates and sizing</b>: isnan, isinf, isfinite, isreal, isempty, isscalar, isvector, ismatrix, isrow, iscolumn, isnumeric, isfloat, isinteger, islogical, length, nnz, underlyingType, isUnderlyingType. 

<b>Constructors</b>: zeros, ones, eye, nan, inf, true, false, rand, randn (through the <b>'gpuArray'</b> / <b>'like'</b> forms), and linspace / colon from a gpuArray endpoint. 

Data is moved with <b>gpuArray</b> and <b>gather</b>; use <b>arrayfun</b> to run a fused element-wise expression on the device.

## 💡 Example



```matlab
c = gpuArrayFunctions();
numel(c)
gpuArrayFunctions()
```


## 🔗 See also

[gpuArray](../gpu_engine/gpuArray.md), [gather](../gpu_engine/gather.md), [isgpuarray](../gpu_engine/isgpuarray.md), [canUseGPU](../gpu_engine/canUseGPU.md), [gpuDevice](../gpu_engine/gpuDevice.md), [plus](../operators/plus.md), [minus](../operators/minus.md), [times](../operators/times.md), [rdivide](../operators/rdivide.md), [mtimes](../operators/mtimes.md), [power](../operators/power.md), [uminus](../operators/uminus.md), [mldivide](../operators/mldivide.md), [transpose](../operators/transpose.md), [ctranspose](../operators/ctranspose.md), [horzcat](../operators/horzcat.md), [vertcat](../operators/vertcat.md), [cat](../operators/cat.md), [colon](../operators/colon.md), [eq](../operators/eq.md), [ne](../operators/ne.md), [lt](../operators/lt.md), [le](../operators/le.md), [gt](../operators/gt.md), [ge](../operators/ge.md), [and](../operators/and.md), [or](../operators/or.md), [not](../operators/not.md), [any](../operators/any.md), [all](../operators/all.md), [bitand](../operators/bitand.md), [bitor](../operators/bitor.md), [bitxor](../operators/bitxor.md), [sin](../trigonometric_functions/sin.md), [cos](../trigonometric_functions/cos.md), [tan](../trigonometric_functions/tan.md), [sinh](../trigonometric_functions/sinh.md), [cosh](../trigonometric_functions/cosh.md), [tanh](../trigonometric_functions/tanh.md), [asin](../trigonometric_functions/asin.md), [acos](../trigonometric_functions/acos.md), [atan](../trigonometric_functions/atan.md), [atan2](../trigonometric_functions/atan2.md), [sum](../data_analysis/sum.md), [prod](../data_analysis/prod.md), [max](../data_analysis/max.md), [min](../data_analysis/min.md), [cumsum](../data_analysis/cumsum.md), [cumprod](../data_analysis/cumprod.md), [cummax](../data_analysis/cummax.md), [cummin](../data_analysis/cummin.md), [sort](../data_analysis/sort.md), [dot](../special_functions/dot.md), [cross](../special_functions/cross.md), [isreal](../types/isreal.md), [xor](../logical/xor.md), [true](../logical/true.md), [false](../logical/false.md), [zeros](../constructors_functions/zeros.md), [ones](../constructors_functions/ones.md), [eye](../constructors_functions/eye.md), [rand](../random/rand.md), [randn](../random/randn.md), [fft](../fftw/fft.md), [ifft](../fftw/ifft.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
