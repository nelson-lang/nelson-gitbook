#import "nelson_help.typ": *

= Elementary functions

The Elementary Functions module provides fundamental mathematical operations and matrix manipulations in Nelson.

 It includes numeric computations, array and matrix operations, complex number handling, rounding and scaling, and various utility functions for querying properties of arrays and matrices.

 The module also supports construction of special matrices, grids, and sequences, enabling robust and efficient implementation of mathematical algorithms and numerical analyses.

== Array Creation and Shape

Functions for creating, reshaping, and arranging arrays.

=== Functions

- #nlink(<elementary_functions:1_array_creation_shape.blkdiag>)[blkdiag]: Block diagonal matrix
- #nlink(<elementary_functions:1_array_creation_shape.deal>)[deal]: Distribute inputs to outputs.
- #nlink(<elementary_functions:1_array_creation_shape.linspace>)[linspace]: linearly spaced vector constructor.
- #nlink(<elementary_functions:1_array_creation_shape.logspace>)[logspace]: logarithmically spaced vector constructor.
- #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid]: Cartesian rectangular grid in 2-D or 3-D.
- #nlink(<elementary_functions:1_array_creation_shape.ndgrid>)[ndgrid]: Rectangular grid in N-D space
- #nlink(<elementary_functions:1_array_creation_shape.repelem>)[repelem]: Repeat copies of array elements.
- #nlink(<elementary_functions:1_array_creation_shape.repmat>)[repmat]: Replicate and tile an array.
- #nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape]: Reshapes a vector or a matrix to a different size matrix.
- #nlink(<elementary_functions:1_array_creation_shape.squeeze>)[squeeze]: Remove dimensions of length 1.

== Elementary Math

Elementary numerical functions, norms, rounding, powers, roots, logarithms, and remainders.

=== Functions

- #nlink(<elementary_functions:2_elementary_math.abs>)[abs]: Absolute value
- #nlink(<elementary_functions:2_elementary_math.bsxfun>)[bsxfun]: Apply element-wise function with implicit expansion.
- #nlink(<elementary_functions:2_elementary_math.ceil>)[ceil]: Round up
- #nlink(<elementary_functions:2_elementary_math.clip>)[clip]: Limit values to a range.
- #nlink(<elementary_functions:2_elementary_math.exp>)[exp]: Exponential
- #nlink(<elementary_functions:2_elementary_math.expm1>)[expm1]: Compute exp(x) - 1.
- #nlink(<elementary_functions:2_elementary_math.factorial>)[factorial]: Factorial function
- #nlink(<elementary_functions:2_elementary_math.fix>)[fix]: Round towards zero
- #nlink(<elementary_functions:2_elementary_math.floor>)[floor]: Round down
- #nlink(<elementary_functions:2_elementary_math.hypot>)[hypot]: Square root of sum of squares
- #nlink(<elementary_functions:2_elementary_math.idivide>)[idivide]: Integer division with rounding option.
- #nlink(<elementary_functions:2_elementary_math.log>)[log]: Natural logarithm.
- #nlink(<elementary_functions:2_elementary_math.log10>)[log10]: Common logarithm (base 10).
- #nlink(<elementary_functions:2_elementary_math.log1p>)[log1p]: log(1 + x) accurately for small values of x.
- #nlink(<elementary_functions:2_elementary_math.log2>)[log2]: dissect floating-point numbers into base 2 exponent and mantissa.
- #nlink(<elementary_functions:2_elementary_math.maxk>)[maxk]: k largest elements of an array
- #nlink(<elementary_functions:2_elementary_math.mink>)[mink]: k smallest elements of an array
- #nlink(<elementary_functions:2_elementary_math.mod>)[mod]: Modulus after division.
- #nlink(<elementary_functions:2_elementary_math.nchoosek>)[nchoosek]: Binomial coefficient or combinations.
- #nlink(<elementary_functions:2_elementary_math.nextpow2>)[nextpow2]: Exponent of next higher power of 2
- #nlink(<elementary_functions:2_elementary_math.norm>)[norm]: Matrix and vector norms
- #nlink(<elementary_functions:2_elementary_math.normest>)[normest]: 2-norm estimate
- #nlink(<elementary_functions:2_elementary_math.nthroot>)[nthroot]: The real 𝑛th root of real number.
- #nlink(<elementary_functions:2_elementary_math.perms>)[perms]: All possible permutations.
- #nlink(<elementary_functions:2_elementary_math.pinv>)[pinv]: Moore-Penrose pseudoinverse
- #nlink(<elementary_functions:2_elementary_math.pow2>)[pow2]: Base 2 exponentiation and scaling of floating-point numbers.
- #nlink(<elementary_functions:2_elementary_math.rat>)[rat]: Rational fraction approximation.
- #nlink(<elementary_functions:2_elementary_math.rats>)[rats]: Rational output.
- #nlink(<elementary_functions:2_elementary_math.rem>)[rem]: Remainder after division.
- #nlink(<elementary_functions:2_elementary_math.round>)[round]: Round to nearest integer
- #nlink(<elementary_functions:2_elementary_math.sign>)[sign]: Find the sign function of a number.
- #nlink(<elementary_functions:2_elementary_math.sqrt>)[sqrt]: Square root.

== Complex Numbers

Functions for complex values and real-valued variants of elementary functions.

=== Functions

- #nlink(<elementary_functions:3_complex_numbers.angle>)[angle]: Phase angle
- #nlink(<elementary_functions:3_complex_numbers.complex>)[complex]: Creates an complex number.
- #nlink(<elementary_functions:3_complex_numbers.conj>)[conj]: Complex conjugate
- #nlink(<elementary_functions:3_complex_numbers.imag>)[imag]: Imaginary part of an complex number.
- #nlink(<elementary_functions:3_complex_numbers.real>)[real]: Real part of an complex number.
- #nlink(<elementary_functions:3_complex_numbers.reallog>)[reallog]: Natural logarithm with real-only result.
- #nlink(<elementary_functions:3_complex_numbers.realpow>)[realpow]: Element-wise power with real-only result.
- #nlink(<elementary_functions:3_complex_numbers.realsqrt>)[realsqrt]: Square root with real-only result.
- #nlink(<elementary_functions:3_complex_numbers.unwrap>)[unwrap]: Shift phase angles to remove jumps.

== Base Conversions

Functions for numeric base conversion, type conversion, and byte order.

=== Functions

- #nlink(<elementary_functions:5_base_conversions.base2dec>)[base2dec]: Convert number in a base to decimal.
- #nlink(<elementary_functions:5_base_conversions.bin2dec>)[bin2dec]: Convert number in base 2 to decimal.
- #nlink(<elementary_functions:5_base_conversions.bin2num>)[bin2num]: Convert two's complement binary string to number.
- #nlink(<elementary_functions:5_base_conversions.cast>)[cast]: Converts variable to a different data type
- #nlink(<elementary_functions:5_base_conversions.dec2base>)[dec2base]: Convert decimal number to another base.
- #nlink(<elementary_functions:5_base_conversions.dec2bin>)[dec2bin]: Convert decimal number to base 2.
- #nlink(<elementary_functions:5_base_conversions.dec2hex>)[dec2hex]: Convert decimal number to base 16.
- #nlink(<elementary_functions:5_base_conversions.hex2dec>)[hex2dec]: Convert number in base 16 to decimal.
- #nlink(<elementary_functions:5_base_conversions.hex2num>)[hex2num]: Convert an IEEE hexadecimal representation to a number.
- #nlink(<elementary_functions:5_base_conversions.num2bin>)[num2bin]: Convert number to binary representation.
- #nlink(<elementary_functions:5_base_conversions.num2hex>)[num2hex]: Convert a number to its IEEE hexadecimal representation.
- #nlink(<elementary_functions:5_base_conversions.swapbytes>)[swapbytes]: Swap byte ordering.
- #nlink(<elementary_functions:5_base_conversions.typecast>)[typecast]: Convert data type without changing underlying data.

== Matrix Generation

Functions for generating special matrices.

=== Functions

- #nlink(<elementary_functions:6_matrix_generation.bernsteinMatrix>)[bernsteinMatrix]: Bernstein matrix
- #nlink(<elementary_functions:6_matrix_generation.gallery>)[gallery]: Generate commonly used test matrices and data for numerical experiments
- #nlink(<elementary_functions:6_matrix_generation.hadamard>)[hadamard]: Hadamard matrix
- #nlink(<elementary_functions:6_matrix_generation.hankel>)[hankel]: Hankel matrix
- #nlink(<elementary_functions:6_matrix_generation.hilb>)[hilb]: Hilbert matrix
- #nlink(<elementary_functions:6_matrix_generation.invhilb>)[invhilb]: Inverse of Hilbert matrix
- #nlink(<elementary_functions:6_matrix_generation.magic>)[magic]: Magic square
- #nlink(<elementary_functions:6_matrix_generation.pascal>)[pascal]: Pascal's triangle
- #nlink(<elementary_functions:6_matrix_generation.rosser>)[rosser]: Classic symmetric eigenvalue test problem.
- #nlink(<elementary_functions:6_matrix_generation.toeplitz>)[toeplitz]: Toeplitz matrix
- #nlink(<elementary_functions:6_matrix_generation.vander>)[vander]: Vandermonde matrix
- #nlink(<elementary_functions:6_matrix_generation.wilkinson>)[wilkinson]: Wilkinson's eigenvalue test matrix

== Indexing and Dimensions

Functions for indexing, dimensions, shape checks, rearrangement, and structural predicates.

=== Functions

- #nlink(<elementary_functions:7_indexing_dimensions.allfinite>)[allfinite]: Check if all array elements are finite.
- #nlink(<elementary_functions:7_indexing_dimensions.circshift>)[circshift]: Circular shift
- #nlink(<elementary_functions:7_indexing_dimensions.filter>)[filter]: 1-D digital filter
- #nlink(<elementary_functions:7_indexing_dimensions.find>)[find]: Find Non-zero Elements
- #nlink(<elementary_functions:7_indexing_dimensions.flip>)[flip]: Flip order of elements
- #nlink(<elementary_functions:7_indexing_dimensions.flipdim>)[flipdim]: Flip array along specified dimension
- #nlink(<elementary_functions:7_indexing_dimensions.fliplr>)[fliplr]: Flip order of elements left to right
- #nlink(<elementary_functions:7_indexing_dimensions.flipud>)[flipud]: Flip order of elements up to dow
- #nlink(<elementary_functions:7_indexing_dimensions.histc>)[histc]: Histogram count with explicit edges.
- #nlink(<elementary_functions:7_indexing_dimensions.histcounts>)[histcounts]: Histogram bin counts.
- #nlink(<elementary_functions:7_indexing_dimensions.histcounts2>)[histcounts2]: Bivariate histogram bin counts.
- #nlink(<elementary_functions:7_indexing_dimensions.ind2sub>)[ind2sub]: Linear index to matrix subscript values
- #nlink(<elementary_functions:7_indexing_dimensions.ipermute>)[ipermute]: Inverse permute array dimensions.
- #nlink(<elementary_functions:7_indexing_dimensions.isapprox>)[isapprox]: Return true if arguments are approximately equal, within the precision.
- #nlink(<elementary_functions:7_indexing_dimensions.iscolumn>)[iscolumn]: Determine whether input is column vector.
- #nlink(<elementary_functions:7_indexing_dimensions.isdiag>)[istriu]: Checks if matrix is diagonal.
- #nlink(<elementary_functions:7_indexing_dimensions.isequal>)[isequal]: Return true if all arguments x1, x2, ... , xn are equal (same dimensions, same values).
- #nlink(<elementary_functions:7_indexing_dimensions.isequaln>)[isequaln]: Return true if all arguments x1, x2, ... , xn are equal (same dimensions, same values or NaNs).
- #nlink(<elementary_functions:7_indexing_dimensions.isequalto>)[isequalto]: Return true if all arguments x1, x2, ... , xn are equal (same type, same dimensions, same values or NaNs).
- #nlink(<elementary_functions:7_indexing_dimensions.isequalwithequalnans>)[isequalwithequalnans]: Compare arrays while treating NaN values as equal.
- #nlink(<elementary_functions:7_indexing_dimensions.isfinite>)[isfinite]: Check for finite entries.
- #nlink(<elementary_functions:7_indexing_dimensions.isinf>)[isinf]: Check for Infinity entries.
- #nlink(<elementary_functions:7_indexing_dimensions.ismatrix>)[ismatrix]: determines whether input is matrix or not
- #nlink(<elementary_functions:7_indexing_dimensions.isnan>)[isnan]: Check for Not a Number entries.
- #nlink(<elementary_functions:7_indexing_dimensions.isrow>)[isrow]: Determine whether input is row vector.
- #nlink(<elementary_functions:7_indexing_dimensions.isscalar>)[isscalar]: Check if the input is a scalar
- #nlink(<elementary_functions:7_indexing_dimensions.istril>)[istril]: Checks if matrix is lower triangular.
- #nlink(<elementary_functions:7_indexing_dimensions.istriu>)[istriu]: Checks if matrix is upper triangular.
- #nlink(<elementary_functions:7_indexing_dimensions.isvector>)[isvector]: Checks input is vector.
- #nlink(<elementary_functions:7_indexing_dimensions.length>)[length]: Length of an object.
- #nlink(<elementary_functions:7_indexing_dimensions.ndims>)[ndims]: Number of dimensions of an array.
- #nlink(<elementary_functions:7_indexing_dimensions.numel>)[numel]: Number of elements.
- #nlink(<elementary_functions:7_indexing_dimensions.permute>)[permute]: Permute array dimensions.
- #nlink(<elementary_functions:7_indexing_dimensions.rot90>)[rot90]: Rotate array 90 degrees.
- #nlink(<elementary_functions:7_indexing_dimensions.shiftdim>)[shiftdim]: Shift array dimensions
- #nlink(<elementary_functions:7_indexing_dimensions.size>)[size]: Size of an object.
- #nlink(<elementary_functions:7_indexing_dimensions.sortrows>)[sortrows]: Sort rows of an array.
- #nlink(<elementary_functions:7_indexing_dimensions.sub2ind>)[sub2ind]: Matrix subscript values to linear index
- #nlink(<elementary_functions:7_indexing_dimensions.substruct>)[substruct]: Create structure argument for subsasgn or subsref
- #nlink(<elementary_functions:7_indexing_dimensions.tril>)[tril]: Lower triangular part of matrix
- #nlink(<elementary_functions:7_indexing_dimensions.triu>)[triu]: Upper triangular part of matrix


#nested[
#pagebreak(weak: true)
#include "1_array_creation_shape/blkdiag.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/deal.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/linspace.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/logspace.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/meshgrid.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/ndgrid.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/repelem.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/repmat.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/reshape.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/squeeze.typ"
#pagebreak(weak: true)
#include "2_elementary_math/abs.typ"
#pagebreak(weak: true)
#include "2_elementary_math/bsxfun.typ"
#pagebreak(weak: true)
#include "2_elementary_math/ceil.typ"
#pagebreak(weak: true)
#include "2_elementary_math/clip.typ"
#pagebreak(weak: true)
#include "2_elementary_math/exp.typ"
#pagebreak(weak: true)
#include "2_elementary_math/expm1.typ"
#pagebreak(weak: true)
#include "2_elementary_math/factorial.typ"
#pagebreak(weak: true)
#include "2_elementary_math/fix.typ"
#pagebreak(weak: true)
#include "2_elementary_math/floor.typ"
#pagebreak(weak: true)
#include "2_elementary_math/hypot.typ"
#pagebreak(weak: true)
#include "2_elementary_math/idivide.typ"
#pagebreak(weak: true)
#include "2_elementary_math/log.typ"
#pagebreak(weak: true)
#include "2_elementary_math/log10.typ"
#pagebreak(weak: true)
#include "2_elementary_math/log1p.typ"
#pagebreak(weak: true)
#include "2_elementary_math/log2.typ"
#pagebreak(weak: true)
#include "2_elementary_math/maxk.typ"
#pagebreak(weak: true)
#include "2_elementary_math/mink.typ"
#pagebreak(weak: true)
#include "2_elementary_math/mod.typ"
#pagebreak(weak: true)
#include "2_elementary_math/nchoosek.typ"
#pagebreak(weak: true)
#include "2_elementary_math/nextpow2.typ"
#pagebreak(weak: true)
#include "2_elementary_math/norm.typ"
#pagebreak(weak: true)
#include "2_elementary_math/normest.typ"
#pagebreak(weak: true)
#include "2_elementary_math/nthroot.typ"
#pagebreak(weak: true)
#include "2_elementary_math/perms.typ"
#pagebreak(weak: true)
#include "2_elementary_math/pinv.typ"
#pagebreak(weak: true)
#include "2_elementary_math/pow2.typ"
#pagebreak(weak: true)
#include "2_elementary_math/rat.typ"
#pagebreak(weak: true)
#include "2_elementary_math/rats.typ"
#pagebreak(weak: true)
#include "2_elementary_math/rem.typ"
#pagebreak(weak: true)
#include "2_elementary_math/round.typ"
#pagebreak(weak: true)
#include "2_elementary_math/sign.typ"
#pagebreak(weak: true)
#include "2_elementary_math/sqrt.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/angle.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/complex.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/conj.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/imag.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/real.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/reallog.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/realpow.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/realsqrt.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/unwrap.typ"
#pagebreak(weak: true)
#include "5_base_conversions/base2dec.typ"
#pagebreak(weak: true)
#include "5_base_conversions/bin2dec.typ"
#pagebreak(weak: true)
#include "5_base_conversions/bin2num.typ"
#pagebreak(weak: true)
#include "5_base_conversions/cast.typ"
#pagebreak(weak: true)
#include "5_base_conversions/dec2base.typ"
#pagebreak(weak: true)
#include "5_base_conversions/dec2bin.typ"
#pagebreak(weak: true)
#include "5_base_conversions/dec2hex.typ"
#pagebreak(weak: true)
#include "5_base_conversions/hex2dec.typ"
#pagebreak(weak: true)
#include "5_base_conversions/hex2num.typ"
#pagebreak(weak: true)
#include "5_base_conversions/num2bin.typ"
#pagebreak(weak: true)
#include "5_base_conversions/num2hex.typ"
#pagebreak(weak: true)
#include "5_base_conversions/swapbytes.typ"
#pagebreak(weak: true)
#include "5_base_conversions/typecast.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/bernsteinMatrix.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/gallery.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/hadamard.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/hankel.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/hilb.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/invhilb.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/magic.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/pascal.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/rosser.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/toeplitz.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/vander.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/wilkinson.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/allfinite.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/circshift.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/filter.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/find.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/flip.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/flipdim.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/fliplr.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/flipud.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/histc.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/histcounts.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/histcounts2.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/ind2sub.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/ipermute.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isapprox.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/iscolumn.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isdiag.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isequal.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isequaln.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isequalto.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isequalwithequalnans.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isfinite.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isinf.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/ismatrix.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isnan.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isrow.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isscalar.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/istril.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/istriu.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isvector.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/length.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/ndims.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/numel.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/permute.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/rot90.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/shiftdim.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/size.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/sortrows.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/sub2ind.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/substruct.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/tril.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/triu.typ"
]
