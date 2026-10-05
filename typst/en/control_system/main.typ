#import "nelson_help.typ": *

= Control System functions

The Control System module provides algorithms and tools for designing, analyzing, and tuning linear control systems in Nelson.

 It supports state-space and transfer function models, system transformations between continuous and discrete time, and computation of poles, zeros, and frequency responses.

 The module also includes system balancing, controllability and observability analysis, regulator and estimator design, and simulation of dynamic responses.

 These tools are used to model, analyze, and control linear dynamic systems in engineering and research code.

== Dynamic System Models

Functions for creating, inspecting, and reducing dynamic system models.

=== Functions

- #nlink(<control_system:1_dynamic_system_models.balreal>)[balreal]: Gramian-based balancing of state-space realizations.
- #nlink(<control_system:1_dynamic_system_models.isct>)[isct]: Checks if dynamic system model is in continuous time.
- #nlink(<control_system:1_dynamic_system_models.isdt>)[isdt]: Checks if dynamic system model is in discrete time.
- #nlink(<control_system:1_dynamic_system_models.islti>)[islti]: Checks if variable is an linear model tf, ss or zpk.
- #nlink(<control_system:1_dynamic_system_models.issiso>)[issiso]: Checks if dynamic system model is single input and single output.
- #nlink(<control_system:1_dynamic_system_models.isstatic>)[isstatic]: Checks if model is static or dynamic.
- #nlink(<control_system:1_dynamic_system_models.minreal>)[minreal]: Minimal realization or pole-zero cancellation.
- #nlink(<control_system:1_dynamic_system_models.pole>)[pole]: Poles of dynamic system.
- #nlink(<control_system:1_dynamic_system_models.ss>)[ss]: State-space model.
- #nlink(<control_system:1_dynamic_system_models.ssdata>)[ssdata]: Access state-space model data.
- #nlink(<control_system:1_dynamic_system_models.tf>)[tf]: Constructs a transfer function model.
- #nlink(<control_system:1_dynamic_system_models.tfdata>)[tfdata]: Access transfer function model data.
- #nlink(<control_system:1_dynamic_system_models.tzero>)[tzero]: Invariant zeros of linear system.
- #nlink(<control_system:1_dynamic_system_models.zero>)[zero]: Zeros and gain of SISO dynamic system.

== Model Conversion and Interconnection

Functions for model conversion, composition, selection, and interconnection.

=== Functions

- #nlink(<control_system:2_model_conversion_interconnection.abcdchk>)[abcdchk]: Verifies the dimensional compatibility of matrices A, B, C, and D.
- #nlink(<control_system:2_model_conversion_interconnection.append>)[append]: Appends the inputs and outputs of the two models.
- #nlink(<control_system:2_model_conversion_interconnection.augstate>)[augstate]: Append state vector to output vector.
- #nlink(<control_system:2_model_conversion_interconnection.c2d>)[c2d]: Convert model from continuous to discrete time.
- #nlink(<control_system:2_model_conversion_interconnection.d2c>)[d2c]: Convert model from discrete to continuous time.
- #nlink(<control_system:2_model_conversion_interconnection.feedback>)[feedback]: Feedback connection of multiple models.
- #nlink(<control_system:2_model_conversion_interconnection.gensign>)[gensig]: Create periodic signals for simulating system response.
- #nlink(<control_system:2_model_conversion_interconnection.padecoef>)[padecoef]: Computes the Pade approximation of time delays.
- #nlink(<control_system:2_model_conversion_interconnection.parallel>)[parallel]: Parallel connection of two models.
- #nlink(<control_system:2_model_conversion_interconnection.series>)[series]: Series connection of two models.
- #nlink(<control_system:2_model_conversion_interconnection.ss2tf>)[ss2tf]: Convert state-space representation to transfer function.
- #nlink(<control_system:2_model_conversion_interconnection.ssdelete>)[ssdelete]: Remove inputs, outputs and states from state-space system.
- #nlink(<control_system:2_model_conversion_interconnection.ssselect>)[ssselect]: Extract subsystem from larger system.
- #nlink(<control_system:2_model_conversion_interconnection.tf2ss>)[tf2ss]: Convert transfer function filter parameters to state-space form.

== Linear Analysis

Functions for time-domain, frequency-domain, and model-response analysis.

=== Functions

- #nlink(<control_system:3_linear_analysis.bode>)[bode]: Bode plot of frequency response, magnitude and phase data.
- #nlink(<control_system:3_linear_analysis.damp>)[damp]: Natural frequency and damping ratio.
- #nlink(<control_system:3_linear_analysis.dcgain>)[dcgain]: Low-frequency (DC) gain of LTI system.
- #nlink(<control_system:3_linear_analysis.evalfr>)[evalfr]: Evaluate frequency response at given frequency.
- #nlink(<control_system:3_linear_analysis.freqresp>)[freqresp]: Evaluate system response over a grid of frequencies.
- #nlink(<control_system:3_linear_analysis.hsvd>)[hsvd]: Hankel singular values of dynamic system.
- #nlink(<control_system:3_linear_analysis.nyquist>)[nyquist]: Nyquist plot of frequency response.
- #nlink(<control_system:3_linear_analysis.sigma>)[sigma]: Singular value response of an LTI model.

== Time and Frequency Responses

Simulation and response functions for dynamic systems.

=== Functions

- #nlink(<control_system:4_time_frequency_response.impulse>)[impulse]: Impulse response plot of dynamic system.
- #nlink(<control_system:4_time_frequency_response.initial>)[initial]: System response to initial states of state-space model.
- #nlink(<control_system:4_time_frequency_response.lsim>)[lsim]: Plot simulated time response of dynamic system to arbitrary inputs.
- #nlink(<control_system:4_time_frequency_response.step>)[step]: Step response plot of dynamic system.

== Control Design and Tuning

Functions for controller design, estimators, and regulator computations.

=== Functions

- #nlink(<control_system:5_control_design_tuning.acker>)[acker]: Pole placement gain selection using Ackermann's formula.
- #nlink(<control_system:5_control_design_tuning.are>)[are]: Algebraic Riccati equation solution.
- #nlink(<control_system:5_control_design_tuning.care>)[care]: Continuous-time algebraic Riccati equation solution.
- #nlink(<control_system:5_control_design_tuning.dare>)[dare]: Discrete-time algebraic Riccati equation solution.
- #nlink(<control_system:5_control_design_tuning.dlqr>)[dlqr]: Linear-quadratic (LQ) state-feedback regulator for discrete-time state-space system.
- #nlink(<control_system:5_control_design_tuning.kalman>)[kalman]: Design Kalman filter for state estimation.
- #nlink(<control_system:5_control_design_tuning.lqe>)[lqe]: Kalman estimator design for continuous-time systems.
- #nlink(<control_system:5_control_design_tuning.lqed>)[lqed]: Calculates the discrete Kalman estimator configuration based on a continuous cost function.
- #nlink(<control_system:5_control_design_tuning.lqr>)[lqr]: Linear-Quadratic Regulator (LQR) design.
- #nlink(<control_system:5_control_design_tuning.lqry>)[lqry]: Form linear-quadratic (LQ) state-feedback regulator with output weighting.
- #nlink(<control_system:5_control_design_tuning.ord2>)[ord2]: Generate continuous second-order systems.

== Matrix Computations

Control-oriented matrix computations for state-space analysis.

=== Functions

- #nlink(<control_system:6_matrix_computations.bdschur>)[bdschur]: Block-diagonal Schur factorization.
- #nlink(<control_system:6_matrix_computations.cloop>)[cloop]: Feedback connection of multiple models.
- #nlink(<control_system:6_matrix_computations.compreal>)[compreal]: Companion realization of transfer functions.
- #nlink(<control_system:6_matrix_computations.ctrb>)[ctrb]: Controllability of state-space model.
- #nlink(<control_system:6_matrix_computations.ctrbf>)[ctrbf]: Compute controllability staircase form.
- #nlink(<control_system:6_matrix_computations.dlyap>)[dlyap]: Discrete-time Lyapunov equations.
- #nlink(<control_system:6_matrix_computations.dsort>)[dsort]: Sort discrete-time poles by magnitude.
- #nlink(<control_system:6_matrix_computations.esort>)[esort]: Sort continuous-time poles by real part.
- #nlink(<control_system:6_matrix_computations.gram>)[gram]: Controllability and observability Gramians.
- #nlink(<control_system:6_matrix_computations.lyap>)[lyap]: Continuous Lyapunov equation solution.
- #nlink(<control_system:6_matrix_computations.obsv>)[obsv]: Observability of state-space model.
- #nlink(<control_system:6_matrix_computations.obsvf>)[obsvf]: Compute observability staircase form.
- #nlink(<control_system:6_matrix_computations.schord>)[schord]: Order a Schur decomposition.


#nested[
#pagebreak(weak: true)
#include "1_dynamic_system_models/balreal.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/isct.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/isdt.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/islti.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/issiso.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/isstatic.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/minreal.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/pole.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/ss.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/ssdata.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/tf.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/tfdata.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/tzero.typ"
#pagebreak(weak: true)
#include "1_dynamic_system_models/zero.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/abcdchk.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/append.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/augstate.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/c2d.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/d2c.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/feedback.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/gensign.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/padecoef.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/parallel.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/series.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/ss2tf.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/ssdelete.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/ssselect.typ"
#pagebreak(weak: true)
#include "2_model_conversion_interconnection/tf2ss.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/bode.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/damp.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/dcgain.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/evalfr.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/freqresp.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/hsvd.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/nyquist.typ"
#pagebreak(weak: true)
#include "3_linear_analysis/sigma.typ"
#pagebreak(weak: true)
#include "4_time_frequency_response/impulse.typ"
#pagebreak(weak: true)
#include "4_time_frequency_response/initial.typ"
#pagebreak(weak: true)
#include "4_time_frequency_response/lsim.typ"
#pagebreak(weak: true)
#include "4_time_frequency_response/step.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/acker.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/are.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/care.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/dare.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/dlqr.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/kalman.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/lqe.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/lqed.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/lqr.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/lqry.typ"
#pagebreak(weak: true)
#include "5_control_design_tuning/ord2.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/bdschur.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/cloop.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/compreal.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/ctrb.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/ctrbf.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/dlyap.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/dsort.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/esort.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/gram.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/lyap.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/obsv.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/obsvf.typ"
#pagebreak(weak: true)
#include "6_matrix_computations/schord.typ"
]
