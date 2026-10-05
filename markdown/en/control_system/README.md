# Control System functions


    
The Control System module provides algorithms and tools for designing, analyzing, and tuning linear control systems in Nelson.

    
It supports state-space and transfer function models, system transformations between continuous and discrete time, and computation of poles, zeros, and frequency responses.

    
The module also includes system balancing, controllability and observability analysis, regulator and estimator design, and simulation of dynamic responses.

    
These tools are used to model, analyze, and control linear dynamic systems in engineering and research code.

  

## Dynamic System Models


    
Functions for creating, inspecting, and reducing dynamic system models.

  

### Functions

- [balreal](1_dynamic_system_models/balreal.md) - Gramian-based balancing of state-space realizations.
- [isct](1_dynamic_system_models/isct.md) - Checks if dynamic system model is in continuous time.
- [isdt](1_dynamic_system_models/isdt.md) - Checks if dynamic system model is in discrete time.
- [islti](1_dynamic_system_models/islti.md) - Checks if variable is an linear model tf, ss or zpk.
- [issiso](1_dynamic_system_models/issiso.md) - Checks if dynamic system model is single input and single output.
- [isstatic](1_dynamic_system_models/isstatic.md) - Checks if model is static or dynamic.
- [minreal](1_dynamic_system_models/minreal.md) - Minimal realization or pole-zero cancellation.
- [pole](1_dynamic_system_models/pole.md) - Poles of dynamic system.
- [ss](1_dynamic_system_models/ss.md) - State-space model.
- [ssdata](1_dynamic_system_models/ssdata.md) - Access state-space model data.
- [tf](1_dynamic_system_models/tf.md) - Constructs a transfer function model.
- [tfdata](1_dynamic_system_models/tfdata.md) - Access transfer function model data.
- [tzero](1_dynamic_system_models/tzero.md) - Invariant zeros of linear system.
- [zero](1_dynamic_system_models/zero.md) - Zeros and gain of SISO dynamic system.

## Model Conversion and Interconnection


    
Functions for model conversion, composition, selection, and interconnection.

  

### Functions

- [abcdchk](2_model_conversion_interconnection/abcdchk.md) - Verifies the dimensional compatibility of matrices A, B, C, and D.
- [append](2_model_conversion_interconnection/append.md) - Appends the inputs and outputs of the two models.
- [augstate](2_model_conversion_interconnection/augstate.md) - Append state vector to output vector.
- [c2d](2_model_conversion_interconnection/c2d.md) - Convert model from continuous to discrete time.
- [d2c](2_model_conversion_interconnection/d2c.md) - Convert model from discrete to continuous time.
- [feedback](2_model_conversion_interconnection/feedback.md) - Feedback connection of multiple models.
- [gensig](2_model_conversion_interconnection/gensign.md) - Create periodic signals for simulating system response.
- [padecoef](2_model_conversion_interconnection/padecoef.md) - Computes the Pade approximation of time delays.
- [parallel](2_model_conversion_interconnection/parallel.md) - Parallel connection of two models.
- [series](2_model_conversion_interconnection/series.md) - Series connection of two models.
- [ss2tf](2_model_conversion_interconnection/ss2tf.md) - Convert state-space representation to transfer function.
- [ssdelete](2_model_conversion_interconnection/ssdelete.md) - Remove inputs, outputs and states from state-space system.
- [ssselect](2_model_conversion_interconnection/ssselect.md) - Extract subsystem from larger system.
- [tf2ss](2_model_conversion_interconnection/tf2ss.md) - Convert transfer function filter parameters to state-space form.

## Linear Analysis


    
Functions for time-domain, frequency-domain, and model-response analysis.

  

### Functions

- [bode](3_linear_analysis/bode.md) - Bode plot of frequency response, magnitude and phase data.
- [damp](3_linear_analysis/damp.md) - Natural frequency and damping ratio.
- [dcgain](3_linear_analysis/dcgain.md) - Low-frequency (DC) gain of LTI system.
- [evalfr](3_linear_analysis/evalfr.md) - Evaluate frequency response at given frequency.
- [freqresp](3_linear_analysis/freqresp.md) - Evaluate system response over a grid of frequencies.
- [hsvd](3_linear_analysis/hsvd.md) - Hankel singular values of dynamic system.
- [nyquist](3_linear_analysis/nyquist.md) - Nyquist plot of frequency response.
- [sigma](3_linear_analysis/sigma.md) - Singular value response of an LTI model.

## Time and Frequency Responses


    
Simulation and response functions for dynamic systems.

  

### Functions

- [impulse](4_time_frequency_response/impulse.md) - Impulse response plot of dynamic system.
- [initial](4_time_frequency_response/initial.md) - System response to initial states of state-space model.
- [lsim](4_time_frequency_response/lsim.md) - Plot simulated time response of dynamic system to arbitrary inputs.
- [step](4_time_frequency_response/step.md) - Step response plot of dynamic system.

## Control Design and Tuning


    
Functions for controller design, estimators, and regulator computations.

  

### Functions

- [acker](5_control_design_tuning/acker.md) - Pole placement gain selection using Ackermann's formula.
- [are](5_control_design_tuning/are.md) - Algebraic Riccati equation solution.
- [care](5_control_design_tuning/care.md) - Continuous-time algebraic Riccati equation solution.
- [dare](5_control_design_tuning/dare.md) - Discrete-time algebraic Riccati equation solution.
- [dlqr](5_control_design_tuning/dlqr.md) - Linear-quadratic (LQ) state-feedback regulator for discrete-time state-space system.
- [kalman](5_control_design_tuning/kalman.md) - Design Kalman filter for state estimation.
- [lqe](5_control_design_tuning/lqe.md) - Kalman estimator design for continuous-time systems.
- [lqed](5_control_design_tuning/lqed.md) - Calculates the discrete Kalman estimator configuration based on a continuous cost function.
- [lqr](5_control_design_tuning/lqr.md) - Linear-Quadratic Regulator (LQR) design.
- [lqry](5_control_design_tuning/lqry.md) - Form linear-quadratic (LQ) state-feedback regulator with output weighting.
- [ord2](5_control_design_tuning/ord2.md) - Generate continuous second-order systems.

## Matrix Computations


    
Control-oriented matrix computations for state-space analysis.

  

### Functions

- [bdschur](6_matrix_computations/bdschur.md) - Block-diagonal Schur factorization.
- [cloop](6_matrix_computations/cloop.md) - Feedback connection of multiple models.
- [compreal](6_matrix_computations/compreal.md) - Companion realization of transfer functions.
- [ctrb](6_matrix_computations/ctrb.md) - Controllability of state-space model.
- [ctrbf](6_matrix_computations/ctrbf.md) - Compute controllability staircase form.
- [dlyap](6_matrix_computations/dlyap.md) - Discrete-time Lyapunov equations.
- [dsort](6_matrix_computations/dsort.md) - Sort discrete-time poles by magnitude.
- [esort](6_matrix_computations/esort.md) - Sort continuous-time poles by real part.
- [gram](6_matrix_computations/gram.md) - Controllability and observability Gramians.
- [lyap](6_matrix_computations/lyap.md) - Continuous Lyapunov equation solution.
- [obsv](6_matrix_computations/obsv.md) - Observability of state-space model.
- [obsvf](6_matrix_computations/obsvf.md) - Compute observability staircase form.
- [schord](6_matrix_computations/schord.md) - Order a Schur decomposition.

