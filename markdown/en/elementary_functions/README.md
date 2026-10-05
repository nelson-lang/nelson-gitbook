# Elementary functions


    
The Elementary Functions module provides fundamental mathematical operations and matrix manipulations in Nelson.

    
It includes numeric computations, array and matrix operations, complex number handling, rounding and scaling, and various utility functions for querying properties of arrays and matrices.

    
The module also supports construction of special matrices, grids, and sequences, enabling robust and efficient implementation of mathematical algorithms and numerical analyses.

  

## Array Creation and Shape


    
Functions for creating, reshaping, and arranging arrays.

  

### Functions

- [blkdiag](1_array_creation_shape/blkdiag.md) - Block diagonal matrix
- [deal](1_array_creation_shape/deal.md) - Distribute inputs to outputs.
- [linspace](1_array_creation_shape/linspace.md) - linearly spaced vector constructor.
- [logspace](1_array_creation_shape/logspace.md) - logarithmically spaced vector constructor.
- [meshgrid](1_array_creation_shape/meshgrid.md) - Cartesian rectangular grid in 2-D or 3-D.
- [ndgrid](1_array_creation_shape/ndgrid.md) - Rectangular grid in N-D space
- [repelem](1_array_creation_shape/repelem.md) - Repeat copies of array elements.
- [repmat](1_array_creation_shape/repmat.md) - Replicate and tile an array.
- [reshape](1_array_creation_shape/reshape.md) - Reshapes a vector or a matrix to a different size matrix.
- [squeeze](1_array_creation_shape/squeeze.md) - Remove dimensions of length 1.

## Elementary Math


    
Elementary numerical functions, norms, rounding, powers, roots, logarithms, and remainders.

  

### Functions

- [abs](2_elementary_math/abs.md) - Absolute value
- [bsxfun](2_elementary_math/bsxfun.md) - Apply element-wise function with implicit expansion.
- [ceil](2_elementary_math/ceil.md) - Round up
- [clip](2_elementary_math/clip.md) - Limit values to a range.
- [exp](2_elementary_math/exp.md) - Exponential
- [expm1](2_elementary_math/expm1.md) - Compute exp(x) - 1.
- [factorial](2_elementary_math/factorial.md) - Factorial function
- [fix](2_elementary_math/fix.md) - Round towards zero
- [floor](2_elementary_math/floor.md) - Round down
- [hypot](2_elementary_math/hypot.md) - Square root of sum of squares
- [idivide](2_elementary_math/idivide.md) - Integer division with rounding option.
- [log](2_elementary_math/log.md) - Natural logarithm.
- [log10](2_elementary_math/log10.md) - Common logarithm (base 10).
- [log1p](2_elementary_math/log1p.md) - log(1 + x) accurately for small values of x.
- [log2](2_elementary_math/log2.md) - dissect floating-point numbers into base 2 exponent and mantissa.
- [maxk](2_elementary_math/maxk.md) - k largest elements of an array
- [mink](2_elementary_math/mink.md) - k smallest elements of an array
- [mod](2_elementary_math/mod.md) - Modulus after division.
- [nchoosek](2_elementary_math/nchoosek.md) - Binomial coefficient or combinations.
- [nextpow2](2_elementary_math/nextpow2.md) - Exponent of next higher power of 2
- [norm](2_elementary_math/norm.md) - Matrix and vector norms
- [normest](2_elementary_math/normest.md) - 2-norm estimate
- [nthroot](2_elementary_math/nthroot.md) - The real 𝑛th root of real number.
- [perms](2_elementary_math/perms.md) - All possible permutations.
- [pinv](2_elementary_math/pinv.md) - Moore-Penrose pseudoinverse
- [pow2](2_elementary_math/pow2.md) - Base 2 exponentiation and scaling of floating-point numbers.
- [rat](2_elementary_math/rat.md) - Rational fraction approximation.
- [rats](2_elementary_math/rats.md) - Rational output.
- [rem](2_elementary_math/rem.md) - Remainder after division.
- [round](2_elementary_math/round.md) - Round to nearest integer
- [sign](2_elementary_math/sign.md) - Find the sign function of a number.
- [sqrt](2_elementary_math/sqrt.md) - Square root.

## Complex Numbers


    
Functions for complex values and real-valued variants of elementary functions.

  

### Functions

- [angle](3_complex_numbers/angle.md) - Phase angle
- [complex](3_complex_numbers/complex.md) - Creates an complex number.
- [conj](3_complex_numbers/conj.md) - Complex conjugate
- [imag](3_complex_numbers/imag.md) - Imaginary part of an complex number.
- [real](3_complex_numbers/real.md) - Real part of an complex number.
- [reallog](3_complex_numbers/reallog.md) - Natural logarithm with real-only result.
- [realpow](3_complex_numbers/realpow.md) - Element-wise power with real-only result.
- [realsqrt](3_complex_numbers/realsqrt.md) - Square root with real-only result.
- [unwrap](3_complex_numbers/unwrap.md) - Shift phase angles to remove jumps.

## Base Conversions


    
Functions for numeric base conversion, type conversion, and byte order.

  

### Functions

- [base2dec](5_base_conversions/base2dec.md) - Convert number in a base to decimal.
- [bin2dec](5_base_conversions/bin2dec.md) - Convert number in base 2 to decimal.
- [bin2num](5_base_conversions/bin2num.md) - Convert two's complement binary string to number.
- [cast](5_base_conversions/cast.md) - Converts variable to a different data type
- [dec2base](5_base_conversions/dec2base.md) - Convert decimal number to another base.
- [dec2bin](5_base_conversions/dec2bin.md) - Convert decimal number to base 2.
- [dec2hex](5_base_conversions/dec2hex.md) - Convert decimal number to base 16.
- [hex2dec](5_base_conversions/hex2dec.md) - Convert number in base 16 to decimal.
- [hex2num](5_base_conversions/hex2num.md) - Convert an IEEE hexadecimal representation to a number.
- [num2bin](5_base_conversions/num2bin.md) - Convert number to binary representation.
- [num2hex](5_base_conversions/num2hex.md) - Convert a number to its IEEE hexadecimal representation.
- [swapbytes](5_base_conversions/swapbytes.md) - Swap byte ordering.
- [typecast](5_base_conversions/typecast.md) - Convert data type without changing underlying data.

## Matrix Generation


    
Functions for generating special matrices.

  

### Functions

- [bernsteinMatrix](6_matrix_generation/bernsteinMatrix.md) - Bernstein matrix
- [gallery](6_matrix_generation/gallery.md) - Generate commonly used test matrices and data for numerical experiments
- [hadamard](6_matrix_generation/hadamard.md) - Hadamard matrix
- [hankel](6_matrix_generation/hankel.md) - Hankel matrix
- [hilb](6_matrix_generation/hilb.md) - Hilbert matrix
- [invhilb](6_matrix_generation/invhilb.md) - Inverse of Hilbert matrix
- [magic](6_matrix_generation/magic.md) - Magic square
- [pascal](6_matrix_generation/pascal.md) - Pascal's triangle
- [rosser](6_matrix_generation/rosser.md) - Classic symmetric eigenvalue test problem.
- [toeplitz](6_matrix_generation/toeplitz.md) - Toeplitz matrix
- [vander](6_matrix_generation/vander.md) - Vandermonde matrix
- [wilkinson](6_matrix_generation/wilkinson.md) - Wilkinson's eigenvalue test matrix

## Indexing and Dimensions


    
Functions for indexing, dimensions, shape checks, rearrangement, and structural predicates.

  

### Functions

- [allfinite](7_indexing_dimensions/allfinite.md) - Check if all array elements are finite.
- [circshift](7_indexing_dimensions/circshift.md) - Circular shift
- [filter](7_indexing_dimensions/filter.md) - 1-D digital filter
- [find](7_indexing_dimensions/find.md) - Find Non-zero Elements
- [flip](7_indexing_dimensions/flip.md) - Flip order of elements
- [flipdim](7_indexing_dimensions/flipdim.md) - Flip array along specified dimension
- [fliplr](7_indexing_dimensions/fliplr.md) - Flip order of elements left to right
- [flipud](7_indexing_dimensions/flipud.md) - Flip order of elements up to dow
- [histc](7_indexing_dimensions/histc.md) - Histogram count with explicit edges.
- [histcounts](7_indexing_dimensions/histcounts.md) - Histogram bin counts.
- [histcounts2](7_indexing_dimensions/histcounts2.md) - Bivariate histogram bin counts.
- [ind2sub](7_indexing_dimensions/ind2sub.md) - Linear index to matrix subscript values
- [ipermute](7_indexing_dimensions/ipermute.md) - Inverse permute array dimensions.
- [isapprox](7_indexing_dimensions/isapprox.md) - Return true if arguments are approximately equal, within the precision.
- [iscolumn](7_indexing_dimensions/iscolumn.md) - Determine whether input is column vector.
- [istriu](7_indexing_dimensions/isdiag.md) - Checks if matrix is diagonal.
- [isequal](7_indexing_dimensions/isequal.md) - Return true if all arguments x1, x2, ... , xn are equal (same dimensions, same values).
- [isequaln](7_indexing_dimensions/isequaln.md) - Return true if all arguments x1, x2, ... , xn are equal (same dimensions, same values or NaNs).
- [isequalto](7_indexing_dimensions/isequalto.md) - Return true if all arguments x1, x2, ... , xn are equal (same type, same dimensions, same values or NaNs).
- [isequalwithequalnans](7_indexing_dimensions/isequalwithequalnans.md) - Compare arrays while treating NaN values as equal.
- [isfinite](7_indexing_dimensions/isfinite.md) - Check for finite entries.
- [isinf](7_indexing_dimensions/isinf.md) - Check for Infinity entries.
- [ismatrix](7_indexing_dimensions/ismatrix.md) - determines whether input is matrix or not
- [isnan](7_indexing_dimensions/isnan.md) - Check for Not a Number entries.
- [isrow](7_indexing_dimensions/isrow.md) - Determine whether input is row vector.
- [isscalar](7_indexing_dimensions/isscalar.md) - Check if the input is a scalar
- [istril](7_indexing_dimensions/istril.md) - Checks if matrix is lower triangular.
- [istriu](7_indexing_dimensions/istriu.md) - Checks if matrix is upper triangular.
- [isvector](7_indexing_dimensions/isvector.md) - Checks input is vector.
- [length](7_indexing_dimensions/length.md) - Length of an object.
- [ndims](7_indexing_dimensions/ndims.md) - Number of dimensions of an array.
- [numel](7_indexing_dimensions/numel.md) - Number of elements.
- [permute](7_indexing_dimensions/permute.md) - Permute array dimensions.
- [rot90](7_indexing_dimensions/rot90.md) - Rotate array 90 degrees.
- [shiftdim](7_indexing_dimensions/shiftdim.md) - Shift array dimensions
- [size](7_indexing_dimensions/size.md) - Size of an object.
- [sortrows](7_indexing_dimensions/sortrows.md) - Sort rows of an array.
- [sub2ind](7_indexing_dimensions/sub2ind.md) - Matrix subscript values to linear index
- [substruct](7_indexing_dimensions/substruct.md) - Create structure argument for subsasgn or subsref
- [tril](7_indexing_dimensions/tril.md) - Lower triangular part of matrix
- [triu](7_indexing_dimensions/triu.md) - Upper triangular part of matrix

