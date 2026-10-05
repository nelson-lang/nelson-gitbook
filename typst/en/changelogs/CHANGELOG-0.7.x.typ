#import "../nelson_help.typ": *

= Changelog <main:CHANGELOG-0.7.x>


All notable changes to this project will be documented in this file.

The format is based on #link("https://keepachangelog.com/en/1.0.0/")[Keep a Changelog];.

== 0.7.12 (2023-12-23)


=== Changed


- #link("https://github.com/nelson-lang/nelson/issues/674")[\#674]; Migrate sources to nelson-lang github organization.
- #link("https://github.com/nelson-lang/nelson/issues/775")[\#775]; #raw("quit");, #raw("exit");, #raw("startup.m");, #raw("finish.m"); behavior reworked for compatibility.
- JSON for Modern C++ version 3.11.3 used on all platforms.
- {fmt} 10.1.1 (6f95000) used.
- Fedora 39 CI support.

=== Fixed


- #raw("cellfun"); did not check type of second input argument.

=== Added


- #raw("filter"); 1-D digital filter.

- control system module (part 2):
  - #raw("freqresp"); Evaluate system response over a grid of frequencies.
  - #raw("step"); Simulate continuous time model of a state space model or transfer function.
  - #raw("lsim"); Plot simulated time response of dynamic system to arbitrary inputs.
  - #raw("dc2"); Convert model from discrete to continuous time.
  - #raw("c2d"); Convert model from continuous to discrete time.
  - #raw("augstate"); Append state vector to output vector.
  - #raw("kalman"); Design Kalman filter for state estimation.
  - #raw("evalfr"); Evaluate system response at specific frequency.
  - #raw("nyquist"); Nyquist plot of frequency response.
  - #raw("ord2"); Generate continuous second-order systems.
  - #raw("append"); Group models by appending their inputs and outputs.
  - #raw("feedback"); Feedback connection of multiple models.
  - #raw("parallel"); Parallel connection of two models.
  - #raw("series"); Series connection of two models.
  - #raw("ssdelete"); Remove inputs, outputs and states from state-space system.
  - #raw("ssselect"); Extract subsystem from larger system.
  - #raw("tzero"); Invariant zeros of linear system.
  - #raw("tf2ss"); Convert transfer function filter parameters to state-space form.
  - #raw("ss2tf"); Convert state-space representation to transfer function.
  - #raw("minreal"); Minimal realization or pole-zero cancellation.
  - #raw("ssdata"); Access state-space model data.
  - #raw("tfdata"); Access transfer function data.
  - #raw("gram"); Controllability and observability Gramians.
  - #raw("hsvd"); Hankel singular values of a state-space or transfer function model.
  - #raw("damp"); Natural frequency and damping ratio.
  - #raw("balreal"); Gramian-based balancing of state-space realizations.
  - #raw("lqry"); Form linear-quadratic (LQ) state-feedback regulator with output weighting.
  - #link("https://github.com/nelson-lang/nelson/issues/957")[\#957]; #raw("dlqr"); Linear-quadratic (LQ) state-feedback regulator for discrete-time state-space system.
  - #link("https://github.com/nelson-lang/nelson/issues/961")[\#961]; #raw("lqed"); Discrete Kalman estimator design from continuous cost function.
  - #link("https://github.com/nelson-lang/nelson/issues/960")[\#960]; #raw("lqe"); Kalman estimator design for continuous-time systems.
  - #link("https://github.com/nelson-lang/nelson/issues/955")[\#955]; #raw("lqr"); Linear-Quadratic Regulator (LQR) design.
  - #link("https://github.com/nelson-lang/nelson/issues/943")[\#943]; #raw("dare"); Solve discrete-time algebraic Riccati equations.
  - #link("https://github.com/nelson-lang/nelson/issues/951")[\#951]; #raw("care"); Continuous-time algebraic Riccati equation solution.
  - #link("https://github.com/nelson-lang/nelson/issues/945")[\#945]; #raw("ctrbf"); Compute controllability staircase form.
  - #link("https://github.com/nelson-lang/nelson/issues/946")[\#946]; #raw("ctrb"); Controllability of state-space model.
  - #link("https://github.com/nelson-lang/nelson/issues/963")[\#963]; #raw("obsv"); Observability matrix.
  - #link("https://github.com/nelson-lang/nelson/issues/964")[\#964]; #raw("obsvf"); Compute observability staircase form.
  - #link("https://github.com/nelson-lang/nelson/issues/949")[\#949]; #raw("acker"); Pole placement gain selection using Ackermann's formula.
  - #link("https://github.com/nelson-lang/nelson/issues/950")[\#950]; #raw("bdschur"); Block-diagonal Schur factorization.
  - #link("https://github.com/nelson-lang/nelson/issues/952")[\#952]; #raw("cloop"); Close unity feedback loops.
  - #link("https://github.com/nelson-lang/nelson/issues/953")[\#953]; #raw("compreal"); Companion realization of transfer functions.
  - #link("https://github.com/nelson-lang/nelson/issues/959")[\#959]; #raw("gensig"); Create periodic signals for simulating system response.

== 0.7.11 (2023-11-29)


=== Added


- #raw("hist"); Histogram plot.
- #raw("bar"); Bar graph.
- #raw("scatter"); Scatter plot.
- #raw("stem"); Plot discrete sequence data.
- #raw("stairs"); Stairstep graph.
- #raw("fill"); 2-D patch.
- #raw("pie"); legacy pie chart.
- #raw("subsref"); Subscripted reference.
- #raw("subsasgn"); Redefine subscripted assignment.
- #raw("substruct"); Create structure argument for subsasgn or subsref.
- #raw("deal"); Distribute inputs to outputs.
- Intel compiler support.

=== Changed


- axis limits recalculate with #raw("hggroup");.
- #raw("axes"); forces focus on current axe.
- function\_handle parentheses precedence.
- #raw("patch"); and #raw("fill"); manages #raw("FaceAlpha");.
- visibility title and labels.
- object constructor must be in '\@' directory and no more in parent directory (compatibility).
- #raw("subsref");, #raw("subsasgn"); compatibility with #raw("substruct");.
- To display a percent sign, you need to use a double percent sign (%%) in the format string (compatibility).
- French translation updated (100%, Thanks to weblate contributors)
- #link("https://github.com/nelson-lang/nelson/issues/997")[\#997]; Macos BigSur Github CI support removed.
- Qt 6.6.1 on win64 CI build.

=== Fixed


- #raw("A = []; A(false) = zeros(3, 0)"); did not return an empty matrix but an error.

== 0.7.10 (2023-10-27)


=== Added


- private functions/folders support (to limit the scope of a function).
- syntax extended to facilitate the creation of literal integers without loss of precision:
  - example: #raw("18446744073709551615u64");, #raw("18446744073709551615i64"); (similar to rust syntax)
- #raw("flintmax('like', p)"); syntax added.
- #raw("int64");, #raw("uint64"); warning about double-precision.
- #link("https://github.com/nelson-lang/nelson/issues/570")[\#570]; balance: Diagonal scaling to improve eigenvalue accuracy.
- #raw("isobject"); Check whether the input is an object.
- #raw("cell2mat"); Convert cell array of matrices to single matrix.
- #link("https://github.com/nelson-lang/nelson/issues/948")[\#948]; #raw("blkdiag"); Create a block diagonal matrix from 2D matrices of different sizes.
- #raw("kron"); Kronecker tensor product.
- #raw("strjust"); Justify strings.

- control system module (part 1):

  - #link("https://github.com/nelson-lang/nelson/issues/967")[\#967]; control system module template.
  - #link("https://github.com/nelson-lang/nelson/issues/944")[\#944]; #raw("mag2db");, #raw("db2mag");, #raw("pow2db");, #raw("db2pow"); functions.
  - #link("https://github.com/nelson-lang/nelson/issues/968")[\#968]; #raw("zp2tf");: Zero-pole to transfer function conversion.
  - #link("https://github.com/nelson-lang/nelson/issues/954")[\#954]; #raw("dcgain");: Low-frequency (DC) gain of LTI system.
  - #link("https://github.com/nelson-lang/nelson/issues/965")[\#965]; #raw("padecoef");: Padé approximation of time delays.
  - #link("https://github.com/nelson-lang/nelson/issues/958")[\#958]; #raw("esort");: Sort continuous-time poles by real part.
  - #raw("dsort");: Sort discrete-time poles by magnitude.
  - #link("https://github.com/nelson-lang/nelson/issues/962")[\#962]; #raw("lyap");: Continuous Lyapunov equation solution.
  - #raw("dlyap");: Discret Lyapunov equation solution.
  - #raw("abcdchk"); Verifies the dimensional compatibility of matrices A, B, C, and D.
  - #raw("ss");: State-space model.
  - #raw("tf");: Transfer function model (display, horzcat, vertcat, size).
  - #raw("isct");: checks if dynamic system model is in continuous time.
  - #raw("isdt");: checks if dynamic system model is in discret time.
  - #raw("isstatic");: checks if model is static or dynamic.
  - #raw("islti");: checks if variable is an linear model tf, ss or zpk.
  - #raw("issiso");: checks if dynamic system model is a single input and single output.
  - #raw("zero");: Zeros and gain of SISO dynamic system.
  - #raw("pole");: Poles of dynamic system.
  - #raw("bode");: Bode plot of frequency response, magnitude and phase data.

=== Changed


- some modules (nig, modules\_manager, help\_browser) reworked to use private functions.
- Windows 64 bit CI and release use Qt 6.6.0

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/940")[\#940]; title bar on dark theme on Windows.
- help viewer using dark theme.
- adjust position #raw("xlabel"); on #raw("figure");.
- #link("https://github.com/nelson-lang/nelson/issues/976")[\#976]; wrong output when reading a file with fscanf with size argument.
- #link("https://github.com/nelson-lang/nelson/issues/975")[\#975]; Legend color (and width) is not matching that of curve in figure.
- #link("https://github.com/nelson-lang/nelson/issues/988")[\#988]; anonymous function serialization '.^' and '^' are inversed.

== 0.7.9 (2023-09-18)


=== Changed


- #link("https://github.com/nelson-lang/nelson/issues/488")[\#488]; overloading functions:

  - all types including basic types can be overloaded.
  - overload is now fully compatible using '\@' syntax and precedence.
  - all operators were reworked to support compatible overload.

- #raw(".*"); operator optimized.
- #raw("conv2"); optimized.
- Boost 1.82 used on Windows.

- Internals:

  - #raw("class");, #raw("function_handle"); types reworked.
  - types order updated.
  - rework validator module.
  - functions finder reworked.
  - file watcher reworked.
  - operators reworked.
  - #raw("repmat");, #raw("ones");, #raw("NaN");, #raw("Inf"); reworked.

- #raw("function_handle"); display is more compatible.

=== Added


- #link("https://github.com/nelson-lang/nelson/issues/491")[\#491]; Anonymous functions
- #raw("--withoutfilewatcher"); executable argument. disable file watcher for current session.
- #raw("<--FILE WATCHER REQUIRED -->"); test\_run option.
- #link("https://github.com/nelson-lang/nelson/issues/853")[\#853]; MacOs 13 ventura CI

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/916")[\#916]; openblas micromamba on macos required to link libgfortran

== 0.7.5 (2023-05-27)


=== Changed


- #raw("BS::thread_pool"); v3.5.0
- #raw("simdutf"); to 3.2.9.
- #raw("{fmt}"); to 10.0.0.
- #raw("fast_float"); to 4.0.0.
- #raw("cast"); reworked to be more compatible.
- #raw("colon"); reworked to be more compatible (operator uses unary overload).
- CMake 3.26.3 on Windows

== 0.7.4 (2023-04-27)


=== Added


- Qt 6.5 support.
- #link("https://github.com/nelson-lang/nelson/issues/802")[\#802];: #raw("bitand");, #raw("bitor");, #raw("bitxor"); functions.
- #raw("issorted"); Determine if array is sorted.
- #raw("num2cell"); Convert array to cell array with consistently sized cells.
- #raw("hggroup"); Create group object.
- #raw("colorbar('off')"); deletes colorbar associated with the current axes.
- #raw("waterfall"); Waterfall plot.
- #raw("ribbon"); ribbon plot.
- figure property: #raw("GraphicsSmoothing"); Axes graphics smoothing.
- text property: #raw("FontSmoothing");.
- surf property: #raw("MeshStyle");.
- chatGPT example.
- graphics examples about 3D polygons:
  - utah teapot example.
  - nefertiti mask example.
  - stanford bunny example.

=== Changed


- Windows installer: allow to install for current user (no administrator rights required).
- #raw("figure"); without axes has a color.
- #raw("figure"); can be created not visible.
- #raw("grid minor"); toggles the visibility of the minor grid lines.
- #raw("mesh"); reworked.
- extraction on empty matrix for compatibility.
- #raw("ones");, #raw("eye");, #raw("inf");, #raw("nan"); allow negative index (replaced by 0) for compatibility.
- Windows 64 bits version embeds Qt 6.5.
- allows #raw("if"); with empty statements

=== Fixed


- #raw("weboptions"); did not manage HeaderFields as expected.
- update #raw("cacert.pem");.
- #link("https://github.com/nelson-lang/nelson/issues/895")[\#895];: Micromamba linux build fails after packages updates.

== 0.7.3 (2023-03-28)


=== Added


- #raw("patch"); Create patches of colored polygons.
- #raw("ancestor"); Ancestor of graphics object.
- hexadecimal color code managed example: '\#DDFF00'.
- #raw("validatecolor"); Validate color values.
- #link("https://github.com/nelson-lang/nelson/issues/851")[\#851];: Build with micromamba environment (linux and macOS)

=== Changed


- Figure property #raw("Position"); uses position based on bottom left position for compatibility.
- internal: boost no more used to read/write json files.
- internal: taglib library is optional.
- version date updated with each build.

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/866")[\#866];: Close menu on figure can crash on linux.
- graphic hierarchy was not fully destroyed after #raw("close"); or #raw("delete");.
- labels were not displayed correctly when the logarithmic scale was enabled.
- #link("https://github.com/nelson-lang/nelson/issues/869")[\#869];: missing help files in linux package.

== 0.7.2 (2023-02-27)


=== Changed


- cmake project reworked. It should be easier to package Nelson on linux platforms (Thanks to \@JohanMabille)
- Debian package generated (beta - feedback welcome).
- #raw("modulepath"); reworked and extended.
- C++ API: #raw("IsCellOfStrings(ArrayOf)"); replaced by #raw("ArrayOf::isCellArrayOfCharacterVectors()");
- C++ API: header #raw("CheckHelpers.hpp"); replaced by #raw("InputOutputArgumentsCheckers.hpp");
- C++ API: #raw("ToCellStringAsColumn"); replaced by #raw("ArrayOf::toCellArrayOfCharacterColumnVectors");
- #raw("api_nelson"); methods moved to type modules
- Remove internal circular dependency about error and warning.
- Exports minimum headers in package.

=== Fixed


- #raw("disp");, #raw("display"); did no more support overloading.
- #raw("image"); did not save all values for #raw("XData"); and #raw("YData");.
- Github CI Monterey and Ubuntu 22.04 (dependencies install) fixed.
- some warnings.

== 0.7.1 (2023-01-29)


=== Added


- #raw("drawnow");: Update figures and process callbacks.
- #raw("DrawLater"); property added to #raw("figure"); graphics object.
- #raw("interp1"); linear interpolation 1D.
- #link("https://github.com/nelson-lang/nelson/issues/736")[\#736];: #raw("bone");, #raw("cool");, #raw("copper");, #raw("hot");, #raw("jet");, #raw("pink");, #raw("turbo");, #raw("viridis");, #raw("white"); colormaps.
- #raw("Visible"); property to #raw("figure"); graphics object.
- #link("https://github.com/nelson-lang/nelson/issues/809")[\#809];: #raw("NumberTitle"); property to #raw("figure"); graphics object.
- #raw("AlphaMap"); and #raw("Colormap"); properties added to #raw("Axes"); graphics object.
- #raw("LineStyleOrder"); property of 'axes' used for #raw("plot"); and #raw("plot3");.
- #raw("ColorOrderIndex"); and #raw("LineStyleOrderIndex"); properties added to #raw("axes"); graphics object.
- #raw("Interpreter"); property added to #raw("text"); graphics object.
- tex special characters support for #raw("text"); and #raw("ticks"); graphics object.
- #raw("delete"); for graphics objects.
- #raw("imread"); Read image from graphics file.
- #raw("imwrite"); Write image to graphics file.
- #raw("imshow"); Display image.
- #raw("surface"); Primitive surface plot.
- #link("https://github.com/nelson-lang/nelson/issues/808")[\#808];: #raw("pcolor"); Pseudocolor plot.
- #raw("mesh"); Mesh surface plot.
- #raw("meshz"); Mesh surface plot with curtain.
- #link("https://github.com/nelson-lang/nelson/issues/807")[\#807];: #raw("loglog"); Log-log scale plot.
- #raw("CHANGELOG"); 0.7.x family.

=== Changed


- Graphics objects property names check is strict (compatibility).
- Some speed optimization with graphics objects.
- #raw("surf"); reworked to use #raw("surface");.

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/823")[\#823];: default LineStyle for a line was wrong with marker.
- #raw("CTRL+C"); was not caught on advanced cli for linux and macos.
- colors in #raw("colorbar"); were not in the good order.
- warnings detected by CodeQL.
- #link("https://github.com/nelson-lang/nelson/issues/824")[\#824];: VariableCompleter was not filtered by prefix.

== Previous changelog


#nlink(<main:CHANGELOG-0.6.x>)[Changelog v0.6.x];

#nlink(<main:CHANGELOG-0.5.x>)[Changelog v0.5.x];

#nlink(<main:CHANGELOG-0.4.x>)[Changelog v0.4.x];

#nlink(<main:CHANGELOG-0.3.x>)[Changelog v0.3.x];

#nlink(<main:CHANGELOG-0.2.x>)[Changelog v0.2.x];

#nlink(<main:CHANGELOG-0.1.x>)[Changelog v0.1.x];
