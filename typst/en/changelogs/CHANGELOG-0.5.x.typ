#import "../nelson_help.typ": *

= 0.5.12 (2021-12-31) <main:CHANGELOG-0.5.x>


== Added


- #raw("hankel"); function: Hankel matrix.
- #raw("factor"); function: Prime factors.
- #raw("primes"); function: Prime numbers less than or equal to input value.
- #raw("isrow"); function: Determine whether input is row vector.
- #raw("iscolumn"); function: Determine whether input is column vector.

== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/544")[\#544];: add #raw("folder"); fieldname to #raw("dir"); output.

- #link("https://github.com/nelson-lang/nelson/issues/541")[\#541];: common class between two elements for operators, horzcat and vertcat.

== Compilation


- Boost 1.78 support (default on Windows).

- CMake 3.22.1 (on Windows).

== 0.5.11 (2021-11-26)


== Added


- #raw("hilb"); function: Hilbert matrix.
- #raw("invhilb"); function: Inverse of Hilbert matrix.
- #raw("cond"); function: Condition number for inversion.
- #raw("rank"); function: Rank of matrix.
- #raw("ismatrix"); function: Determines whether input is matrix.
- #raw("squeeze"); function: Removes dimensions of length 1.
- #raw("speye"); function: Sparse identity matrix.
- #raw("randperm"); function: Random permutation.
- #raw("cat"); function: Concatenate arrays.
- #raw("SECURITY.md"); file as recommended by Github.

== Fixed


- #raw("vercat");, #raw("horzcat"); returns an empty array whose size is equal to the output size as when the inputs are nonempty.
- #link("https://github.com/nelson-lang/nelson/issues/533")[\#533];: #raw("find"); with one lhs did not return expected result with complex.
- #link("https://github.com/nelson-lang/nelson/issues/536")[\#536];: #raw("test_websave_3"); failed randomly due to distant server.

== 0.5.10 (2021-10-30)


- Polynomial functions:

  - #raw("poly");: Polynomial with specified roots or characteristic polynomial.
  - #raw("roots");: Polynomial roots.
  - #raw("polyval");: Polynomial evaluation.
  - #raw("polyvalm");: Matrix polynomial evaluation.
  - #raw("polyint");: Polynomial integration.
  - #raw("polyfit");: Polynomial curve fitting.
  - #raw("polyder");: Polynomial differentiation.

- #raw("pinv");: Moore-Penrose pseudoinverse.

- #link("https://github.com/nelson-lang/nelson/issues/520")[\#520];: #raw("inputname"); get variable name of function input.

- #link("https://github.com/nelson-lang/nelson/issues/525")[\#525];: use #link("https://github.com/fastfloat/fast_float")[#raw("fast_float");]; library to parse numbers .

- #link("https://github.com/nelson-lang/nelson/issues/528")[\#528];: Assignment in cell did not work in this case #raw("[c{:}] = ind2sub (dv, i)");

- #link("https://github.com/nelson-lang/nelson/issues/534")[\#534];: #raw("diag(ones(0, 1), -1)"); did not return zero as result.

== 0.5.9 (2021-09-29)


- #raw("leapyear"); function: determine leap year.

- #raw("meshgrid"); function: Cartesian rectangular grid in 2-D or 3-D.

- #raw("sub2ind"); function: linear index to matrix subscript values.

- #raw("ind2sub"); function: matrix subscript values to linear index.

- #link("https://github.com/nelson-lang/nelson/issues/518")[\#518];: #raw("isStringScalar"); checks if input is string array with one element.

- #link("https://github.com/nelson-lang/nelson/issues/516")[\#516];: #raw("ind = 2; ind(false)"); logical extraction on scalar should return empty matrix.

- #link("https://github.com/nelson-lang/nelson/issues/514")[\#514];: #raw("C{3} = 4"); should create a cell with good dimensions.

- #link("https://github.com/nelson-lang/nelson/issues/512")[\#512];: Assign must not change left assign type when it is possible.

- #link("https://github.com/nelson-lang/nelson/issues/509")[\#509];: horzcat vertcat generic support for class object.

- #link("https://github.com/nelson-lang/nelson/issues/508")[\#508];: Change default seed for 'rand' with Mersenne Twister algo.

- #link("https://github.com/nelson-lang/nelson/issues/506")[\#506];: Modernize windows installer style.

== Compilation:


- #link("https://github.com/nelson-lang/nelson/issues/496")[\#496];: Eigen 3.4 used.

- #link("https://github.com/nelson-lang/nelson/issues/503")[\#503];: Boost 1.77 support (default on Windows).

== 0.5.8 (2021-08-25)


== Features:


- #raw("test_run"); displays errors with file and line number.

- CTRL-C throws an error.

- some warnings detected by LGTM or VS fixed.

- allows .m file empty to be called.

- #link("https://github.com/nelson-lang/nelson/issues/477")[\#477];: update files watcher algo.

- #link("https://github.com/nelson-lang/nelson/issues/489")[\#489];: display builtin and associated overload.

- #link("https://github.com/nelson-lang/nelson/issues/490")[\#490];: update default prompt.

== Bug Fixes:


- #link("https://github.com/nelson-lang/nelson/issues/480")[\#480];: publisher name updated for windows installer.

- #link("https://github.com/nelson-lang/nelson/issues/483")[\#483];: extern modules no more build if boost not available.

- #link("https://github.com/nelson-lang/nelson/issues/486")[\#486];: #raw("inmem"); help was missing.

- #link("https://github.com/nelson-lang/nelson/issues/464")[\#464];: simplify macos build (catalina & BigSur support only).

- #link("https://github.com/nelson-lang/nelson/issues/499")[\#499];: rename #raw("getContentAsUnsignedInt64Scalar"); to #raw("getContentAsUnsignedInteger64Scalar");.

- #link("https://github.com/nelson-lang/nelson/issues/495")[\#495];: some mtimes call failed.

== 0.5.7 (2021-07-24)


== Features:


- macros in memory reworked to support also MEX.

- C MEX compatibility, load and build fully compatible with other software.

- #raw("inmem"); builtin returns names of functions, MEX-files in memory.

- #raw("mexext"); builtin returns binary MEX file-name extension.

- main function in .m no more require to be the first in file.

- checks in the .m function that other local function names are not duplicated.

- .m timestamp checked if #raw("addpath(...,'-frozen')"); is not enabled.

- function\_handle reworked to have an compatible behavior.

- #raw("struct"); behavior with #raw("function_handle");.

- #raw("clear"); reworked to support mex in memory.

- #raw("nargin");, #raw("nargout"); behavior with mex updated.

- #link("https://github.com/nelson-lang/nelson/issues/474")[\#474];: #raw("exist");: extended to manage mex function.

- #link("https://github.com/nelson-lang/nelson/issues/449")[\#449];: #raw("conv2");: 2-D convolution and #raw("conv");: Convolution and polynomial multiplication.

== Bug Fixes:


- #link("https://github.com/nelson-lang/nelson/issues/468")[\#468];: A(':') \= \[\] was not managed.

== 0.5.6 (2021-06-27)


BREAKING CHANGE:

== Features:


- #raw("function ... endfunction"); and #raw("function ... end"); are equivalent (increase compatibility ;).

- file extension #raw(".m"); is managed by Nelson.

  - About compatibility: scripts and functions developed with Nelson should work with other tools managing .m files. The reciprocal is not necessarily true.

  - #raw(".m"); is default and alone file extension.

- module skeleton updated to use to #raw(".m"); extension (Please update your code)

- #raw("run"); builtin can also evaluate a macro function.

- macro functions also searched in current directory.

- parser cleaned and generated with Bison 3.7.4

- #raw("narginchk"); builtin: checks number of input arguments.

- #raw("nargoutchk"); builtin: checks number of outnput arguments.

- #link("https://github.com/nelson-lang/nelson/issues/448")[\#448];: data analysis module (Code refactoring).

== Bug Fixes:


- #raw("nmm('install', existing_module_directory)"); did not work as expected.

- #link("https://github.com/nelson-lang/nelson/issues/451")[\#451];: var() returns an unexpected error.

== Compilation:


- #link("https://github.com/nelson-lang/nelson/issues/455")[\#455];: M1 macOS apple native support. It works but some gui features can crash due to young Qt support on M1.

- Update fmt library to 8.0.

== 0.5.5 (2021-05-24)


== Features:


- Validators functions available from Nelson and C++ API (part 2):

  - #raw("mustBeFile");,
  - #raw("mustBeNonempty");, #raw("mustBeNonNan");, #raw("mustBeNonZero");, #raw("mustBeNonSparse");,
  - #raw("mustBeA");, #raw("mustBeReal");, #raw("mustBeInteger");, #raw("mustBeNonmissing");,
  - #raw("mustBePositive");, #raw("mustBeNonpositive");, #raw("mustBeNonnegative");, #raw("mustBeNegative");,
  - #raw("mustBeGreaterThan");, #raw("mustBeGreaterThanOrEqual");, #raw("mustBeLessThan");,
  - #raw("mustBeNumericOrLogical");, #raw("mustBeText");, #raw("mustBeNonzeroLengthText");,
  - #raw("mustBeMember");, #raw("mustBeInRange");.

- #raw("test_run"); manages #raw("SEQUENTIAL TEST REQUIRED"); and #raw("NATIVE_ARCHITECTURE TEST REQUIRED"); tags.

- benches are executed sequentially (better bench results).

- #raw("all");, #raw("any"); behavior with empty matrix updated.

- extends #raw("all"); to manage over all elements.

- #raw("ismember"); builtin: Array elements that are members of another array.

- #link("https://github.com/nelson-lang/nelson/issues/439")[\#439];: split elementary\_functions module and creates operators modules.

== Changed:


- comment symbol is '%'. others previous supported comment symbol removed.

== Bug Fixes:


- #link("https://github.com/nelson-lang/nelson/issues/435")[\#435];: #raw("maxNumCompThreads"); did not return number of threads but number of cores.

== Compilation:


- Move Windows build to GitHub CI. Appveyor is no more the principal build CI for Windows.

- #link("https://github.com/nelson-lang/nelson/issues/441")[\#441];: Circle CI (ArchLinux build) fixed.

- #link("https://github.com/nelson-lang/nelson/issues/357")[\#357];: Curl 7.76.1 on Windows.

== 0.5.4 (2021-04-24)


== Features:


- Validators functions available from Nelson and C++ API (part 1):

  - #raw("mustBeLogicalScalar");, #raw("mustBeLogical");, #raw("mustBeFloat");,
  - #raw("mustBeFinite");, #raw("mustBeScalarOrEmpty");, #raw("mustBeVector");,
  - #raw("mustBeValidVariableName");,
  - #raw("mustBeTextScalar");, #raw("mustBeFolder");,
  - #raw("mustBeNumeric");.

- Functions using SIMD extensions:

  - #raw("ceil");, #raw("round");, #raw("fix");, #raw("floor");, #raw("abs");, #raw("conj");,
  - #raw("exp");, #raw("sqrt");, #raw("log1p");, #raw("log10");, #raw("log");
  - #raw("cos");, #raw("sin");, #raw("tan");
  - #raw("atan2");, #raw("acos");, #raw("asin");
  - addition, subtraction, multiplication, division vectors.

- #raw("system"); allows to run shell command execution in parallel.

- #raw("test_run"); executes on parallel process.

- extends #raw("assert_checkerror"); to check also error identifier.

- #raw("isvector");, #raw("isscalar"); support overload.

- #raw("isvarname"); builtin: check if input is valid variable name.

- #raw("isdir"); manages string array.

- #raw("time"); returns current time as the number of seconds or nanoseconds since the epoch.

== Bug Fixes:


- #link("https://github.com/nelson-lang/nelson/issues/352")[\#352];: number of input arguments checked in macro.

- #link("https://github.com/nelson-lang/nelson/issues/382")[\#382];: optimize #raw("corrcoef");.

== 0.5.3 (2021-03-24)


== Features:


- #link("https://github.com/nelson-lang/nelson/issues/373")[\#373];: #raw("sign"); builtin.

- #link("https://github.com/nelson-lang/nelson/issues/313")[\#313];: #raw("atanh"); builtin: inverse hyperbolic tangent.

- #raw("MException"); comes default exception in Nelson.

- #raw("try, catch"); extended to manage #raw("MException");.

- #raw("throw");, #raw("throwAsCaller");, #raw("rethrow"); functions added.

- #raw("error"); extended to manage identifier.

- callstack reworks, available with #raw("MException");.

- for loop faster \> x2.

- assignment does not copy matrix.

- reworks ArrayOfVector (internal).

- C++ API nargincheck, nargoutcheck helpers added.

- rename #raw("mexception"); to #raw("MException");

== Bug Fixes:


- #link("https://github.com/nelson-lang/nelson/issues/413")[\#413];: circle CI Arch docker did not work.

- #link("https://github.com/nelson-lang/nelson/issues/412")[\#412]; docker fedora 35 support.

== 0.5.2 (2021-02-27)


== Features:


- #raw("triu"); builtin: Upper triangular part of matrix.

- #raw("tril"); builtin: Lower triangular part of matrix.

- #raw("istriu"); checks if matrix is upper triangular part of matrix.

- #raw("istril");: checks if matrix is lower triangular part of matrix.

- #raw("isdiag");: checks if matrix is diagonal.

== Compilation:


- MacOS build uses openBLAS. lapacke included in openBLAS. No more thirdparty repository required for MacOS build.

- rename ArrayOf::getLength to ArrayOf::getElementCount method.

- rework simple assignment.

- add benches about loop to identify existing bottleneck for next iteration.

- rework loop to prepare next iteration.

== 0.5.1 (2021-01-30)


== Features:


- #raw("qt_version"); builtin: returns the version number of Qt at run-time.

- #raw("qt_constant"); builtin: returns value of an Qt constant.

- #link("https://github.com/nelson-lang/nelson/issues/374")[\#374];: #raw("num2str"); builtin: converts numbers to character array.

== Bug Fixes:


- #link("https://github.com/nelson-lang/nelson/issues/388")[\#388];: Windows x64 build failed (elementary\_functions module was too big).

- #link("https://github.com/nelson-lang/nelson/issues/385")[\#385];: #raw("corrcoef");, #raw("mean");, #raw("var");, #raw("cov"); moved in statistics module.

== Compilation:


- 0.5 family (CHANGELOG)

- Eigen 3.3.9 used.

- libsndfile 1.0.31 on Windows.

- libboost 1.75 on Windows.

- fix circle CI build.

- #link("https://github.com/nelson-lang/nelson/issues/394")[\#394];: Upgrade socket.IO dependency to v3.0.

- #link("https://github.com/nelson-lang/nelson/issues/367")[\#367];: add fftw\_init\_threads and fftw\_plan\_with\_nthreads to MKL wrapper for FFTW.

- #link("https://github.com/nelson-lang/nelson/issues/356")[\#356];: MKL OneAPI v2021 support.

- #link("https://github.com/nelson-lang/nelson/issues/355")[\#355];: Qt6 support.

- #link("https://github.com/nelson-lang/nelson/issues/317")[\#317];: uses fmtlib.

== Previous changelog:


#nlink(<main:CHANGELOG-0.4.x>)[Changelog v0.4.x];

#nlink(<main:CHANGELOG-0.3.x>)[Changelog v0.3.x];

#nlink(<main:CHANGELOG-0.2.x>)[Changelog v0.2.x];

#nlink(<main:CHANGELOG-0.1.x>)[Changelog v0.1.x];
