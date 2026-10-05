# NFlow blocks


    
The nflow_blocks module provides the simulation blocks used by NFlow, including their ports, parameters, phases, and runtime behavior.

    
NFlow is currently released as **1.0.0-beta.1**: it is functional and tested, but details of its interfaces and file format may still evolve based on feedback.

  

## Electrical (acausal)


    
Acausal (physical) blocks with undirected pins, simulated natively through the differential-algebraic engine.

  

### Functions

- [CCC](acausal_electrical/CCC.md) - Current-controlled current source: i_pn = gain i_cp (the sense branch cp-cn is a short).
- [CCV](acausal_electrical/CCV.md) - Current-controlled voltage source: v_pn = gain i_cp (the sense branch cp-cn is a short).
- [Capacitor](acausal_electrical/Capacitor.md) - Ideal linear capacitor: i = C dv/dt.
- [Conductor](acausal_electrical/Conductor.md) - Ideal linear conductor: i = G (v_p - v_n).
- [ConstantCurrent](acausal_electrical/ConstantCurrent.md) - Constant current source: current I flows p -> n.
- [ConstantVoltage](acausal_electrical/ConstantVoltage.md) - Constant voltage source: v_p - v_n = V.
- [CurrentSensor](acausal_electrical/CurrentSensor.md) - Measures the branch current p -> n (ideal ammeter).
- [Diode](acausal_electrical/Diode.md) - Exponential (Shockley) diode: i = Is (exp(vd/Vt) - 1).
- [ExpSineCurrent](acausal_electrical/ExpSineCurrent.md) - Exponentially damped sine current source.
- [ExpSineVoltage](acausal_electrical/ExpSineVoltage.md) - Exponentially damped sine voltage source.
- [Ground](acausal_electrical/Ground.md) - Reference node (0 V) for an electrical island.
- [Gyrator](acausal_electrical/Gyrator.md) - Gyrator: i1 = G2 v2, i2 = -G1 v1 (across<->through transducer).
- [HeatingResistor](acausal_electrical/HeatingResistor.md) - Resistor that dissipates its power P = v^2 / R as heat into a thermal port.
- [IdealDiode](acausal_electrical/IdealDiode.md) - Ideal diode switching at the knee voltage Vknee: off below it (leak conductance Goff), on above it (on-resistance Ron in series with Vknee); the mode flip is an event.
- [IdealOpAmp](acausal_electrical/IdealOpAmp.md) - Ideal op-amp (nullor): virtual short e_+ = e_-, output current free.
- [IdealSwitch](acausal_electrical/IdealSwitch.md) - Ideal switch: control > 0.5 -> closed short, else open (i = 0).
- [IdealTransformer](acausal_electrical/IdealTransformer.md) - Ideal transformer: v1 = n v2, i2 = -n i1 (structural, no state storage).
- [Idle](acausal_electrical/Idle.md) - Ideal open branch: i = 0 (branch voltage free).
- [Inductor](acausal_electrical/Inductor.md) - Ideal linear inductor: v = L di/dt.
- [NMOS](acausal_electrical/NMOS.md) - N-channel MOSFET (square law): drain, gate and source pins.
- [NPN](acausal_electrical/NPN.md) - NPN bipolar transistor (Ebers-Moll): collector, base and emitter pins.
- [PMOS](acausal_electrical/PMOS.md) - P-channel MOSFET (square law): drain, gate and source pins.
- [PNP](acausal_electrical/PNP.md) - PNP bipolar transistor (Ebers-Moll): collector, base and emitter pins.
- [PotentialSensor](acausal_electrical/PotentialSensor.md) - Measures the absolute node potential.
- [RampCurrent](acausal_electrical/RampCurrent.md) - Ramp current source: i = Slope (t - StartTime) for t >= StartTime, else 0.
- [RampVoltage](acausal_electrical/RampVoltage.md) - Ramp voltage source: v = Slope (t - StartTime) for t >= StartTime, else 0.
- [Resistor](acausal_electrical/Resistor.md) - Ideal linear resistor: i = (v_p - v_n) / R.
- [Short](acausal_electrical/Short.md) - Ideal short circuit: e_p = e_n (branch current free).
- [SignalCurrent](acausal_electrical/SignalCurrent.md) - Current source driven by the input signal.
- [SignalVoltage](acausal_electrical/SignalVoltage.md) - Voltage source driven by the input signal.
- [SineCurrent](acausal_electrical/SineCurrent.md) - Sine current source: i = Amplitude sin(2 pi Frequency t + Phase).
- [SineVoltage](acausal_electrical/SineVoltage.md) - Sine voltage source: v = Amplitude sin(2 pi Frequency t + Phase).
- [TrapezoidCurrent](acausal_electrical/TrapezoidCurrent.md) - Trapezoidal current source (continuous ramp-up / hold / ramp-down).
- [TrapezoidVoltage](acausal_electrical/TrapezoidVoltage.md) - Trapezoidal voltage source (continuous ramp-up / hold / ramp-down).
- [VCC](acausal_electrical/VCC.md) - Voltage-controlled current source: i = gain (v_cp - v_cn).
- [VCV](acausal_electrical/VCV.md) - Voltage-controlled voltage source: v_pn = gain (v_cp - v_cn).
- [VariableCapacitor](acausal_electrical/VariableCapacitor.md) - Capacitor whose capacitance C is set by a signal (exact charge Q formulation).
- [VariableConductor](acausal_electrical/VariableConductor.md) - Conductor whose conductance G is set by the input signal.
- [VariableInductor](acausal_electrical/VariableInductor.md) - Inductor whose inductance L is set by a signal (exact flux phi formulation).
- [VariableResistor](acausal_electrical/VariableResistor.md) - Resistor whose resistance R is set by the input signal.
- [VoltageSensor](acausal_electrical/VoltageSensor.md) - Measures the voltage v_p - v_n (ideal, no loading).
- [ZDiode](acausal_electrical/ZDiode.md) - Zener diode: forward Shockley conduction plus reverse breakdown at -Vz.

## Planar (acausal)


    
Acausal (physical) blocks with undirected pins, simulated natively through the differential-algebraic engine.

  

### Functions

- [PlanarAccelerationSensor](acausal_planar/PlanarAccelerationSensor.md) - Absolute acceleration of the body at frame a along the chosen axis (x, y) or the angular acceleration (alpha).
- [PlanarBody](acausal_planar/PlanarBody.md) - Rigid body: mass m, central inertia I; six states (xc, yc, phi, vx, vy, w). Named frames are body-fixed offsets from the COM.
- [PlanarDamper](acausal_planar/PlanarDamper.md) - Linear 2D damper between the points at frames a and b: F = -d dv.
- [PlanarDistance](acausal_planar/PlanarDistance.md) - Rigid rod: holds a fixed distance L between the points at frames a and b.
- [PlanarDistanceSensor](acausal_planar/PlanarDistanceSensor.md) - Distance between the points at frames a and b.
- [PlanarFixed](acausal_planar/PlanarFixed.md) - Frame rigidly fixed at the world point (x, y).
- [PlanarForce](acausal_planar/PlanarForce.md) - External world force (fx, fy) applied at the frame-a point (adds a torque when offset from the COM).
- [PlanarPointMass](acausal_planar/PlanarPointMass.md) - Point mass (no orientation): four states (xc, yc, vx, vy); attach joints at its point.
- [PlanarPositionSensor](acausal_planar/PlanarPositionSensor.md) - Absolute position of the frame-a point along the chosen axis (x, y) or the body angle (phi).
- [PlanarPrismatic](acausal_planar/PlanarPrismatic.md) - Prismatic joint: frame b slides along the world axis (dx, dy) through frame a, relative rotation locked.
- [PlanarRelPositionSensor](acausal_planar/PlanarRelPositionSensor.md) - Relative position of the frame-a point minus the frame-b point along the chosen axis (x, y).
- [PlanarRelativeTorque](acausal_planar/PlanarRelativeTorque.md) - Actuator torque: +tau on the body at frame a, -tau on the body at frame b (drives a joint).
- [PlanarRevolute](acausal_planar/PlanarRevolute.md) - Revolute (pin) joint: frames a and b share position, free relative rotation.
- [PlanarRollingWheel](acausal_planar/PlanarRollingWheel.md) - Wheel at frame a rolls without slipping on the fixed surface line (px,py)+(dx,dy), staying at height radius.
- [PlanarSpring](acausal_planar/PlanarSpring.md) - Linear 2D spring between the points at frames a and b: F = -c dr.
- [PlanarSpringDamper](acausal_planar/PlanarSpringDamper.md) - Linear 2D spring-damper between the points at frames a and b: F = -(c dr + d dv).
- [PlanarTorque](acausal_planar/PlanarTorque.md) - External torque tau applied to the body at frame a.
- [PlanarVelocitySensor](acausal_planar/PlanarVelocitySensor.md) - Absolute velocity of the frame-a point along the chosen axis (x, y) or the angular velocity (omega).
- [PlanarWorld](acausal_planar/PlanarWorld.md) - Inertial world with uniform gravity (down = -y); provides a fixed frame at the origin.

## Rotational (acausal)


    
Acausal (physical) blocks with undirected pins, simulated natively through the differential-algebraic engine.

  

### Functions

- [AngleSensor](acausal_rotational/AngleSensor.md) - Measures the absolute angle of a flange.
- [BearingFriction](acausal_rotational/BearingFriction.md) - Regularised bearing friction (event-free): tau = -tau_c tanh(w / w_eps).
- [Clutch](acausal_rotational/Clutch.md) - Rotational clutch (event-free stick-slip): tau = tau_max tanh((w_a - w_b) / w_eps) reduces the slip toward a common speed.
- [ConstantRotSpeed](acausal_rotational/ConstantRotSpeed.md) - Prescribed motion: the flange rotates at a constant angular velocity w.
- [ConstantTorque](acausal_rotational/ConstantTorque.md) - Constant torque on a flange.
- [EMF](acausal_rotational/EMF.md) - Electro-mechanical converter (motor/generator): back-emf v = k w, torque tau = k i.
- [ElastoBacklash](acausal_rotational/ElastoBacklash.md) - Rotational backlash: elastic torque with a dead zone of total play b.
- [ExpSineTorque](acausal_rotational/ExpSineTorque.md) - Exponentially damped sine torque on a flange.
- [Freewheel](acausal_rotational/Freewheel.md) - One-way clutch: couples flange a to b only while a overruns b (freewheels otherwise).
- [IdealGear](acausal_rotational/IdealGear.md) - Ideal gear phi_a = ratio phi_b (structural node merge, inertia folded).
- [Inertia](acausal_rotational/Inertia.md) - Rotational inertia: J dw/dt = tau_net.
- [LinearSpeedDependentTorque](acausal_rotational/LinearSpeedDependentTorque.md) - Speed-proportional resistance to ground: tau = -d w.
- [QuadraticSpeedDependentTorque](acausal_rotational/QuadraticSpeedDependentTorque.md) - Quadratic (drag) resistance to ground: tau = -d w |w|.
- [RampTorque](acausal_rotational/RampTorque.md) - Ramp torque on a flange: tau = Slope (t - StartTime) for t >= StartTime, else 0.
- [RelAngleSensor](acausal_rotational/RelAngleSensor.md) - Measures the relative angle phi_a - phi_b between two flanges.
- [RelRotSpeedSensor](acausal_rotational/RelRotSpeedSensor.md) - Measures the relative angular velocity w_a - w_b between two flanges.
- [RotAccelerate](acausal_rotational/RotAccelerate.md) - Prescribed motion: the flange angular acceleration follows the input signal.
- [RotBrake](acausal_rotational/RotBrake.md) - Signal-actuated rotational brake to ground: the input sets the peak braking torque.
- [RotDamper](acausal_rotational/RotDamper.md) - Rotational damper: tau = d (w_a - w_b).
- [RotFixed](acausal_rotational/RotFixed.md) - Flange fixed at a prescribed angle phi0.
- [RotSpeed](acausal_rotational/RotSpeed.md) - Prescribed motion: the flange angular velocity follows the input signal.
- [RotSpeedSensor](acausal_rotational/RotSpeedSensor.md) - Measures the absolute angular velocity of a flange.
- [RotSpring](acausal_rotational/RotSpring.md) - Rotational spring: tau = c (phi_a - phi_b).
- [RotSpringDamper](acausal_rotational/RotSpringDamper.md) - Parallel rotational spring and damper: tau = c (phi_a - phi_b) + d (w_a - w_b).
- [SineTorque](acausal_rotational/SineTorque.md) - Sine torque on a flange: tau = Amplitude sin(2 pi Frequency t + Phase).
- [Torque](acausal_rotational/Torque.md) - External torque on a flange, driven by the input signal.
- [Torque2](acausal_rotational/Torque2.md) - Equal and opposite torque between two flanges: +tau on a, -tau on b (signal-driven).
- [TrapezoidTorque](acausal_rotational/TrapezoidTorque.md) - Trapezoidal torque on a flange (continuous ramp-up / hold / ramp-down).

## Thermal (acausal)


    
Acausal (physical) blocks with undirected pins, simulated natively through the differential-algebraic engine.

  

### Functions

- [BodyRadiation](acausal_thermal/BodyRadiation.md) - Radiation (Stefan-Boltzmann): Q_flow = Gr (T_a^4 - T_b^4).
- [Convection](acausal_thermal/Convection.md) - Convection: Q_flow = Gc (T_a - T_b) with a signal-driven coefficient Gc.
- [ConvectiveResistor](acausal_thermal/ConvectiveResistor.md) - Convective resistor: Q_flow = (T_a - T_b) / Rc with a signal-driven Rc.
- [FixedHeatFlow](acausal_thermal/FixedHeatFlow.md) - Constant heat flow Q into the connected port.
- [FixedTemperature](acausal_thermal/FixedTemperature.md) - Boundary at a fixed temperature T.
- [HeatCapacitor](acausal_thermal/HeatCapacitor.md) - Lumped heat capacity: C dT/dt = Q_flow (port referenced to 0).
- [HeatFlowSensor](acausal_thermal/HeatFlowSensor.md) - Measures the heat flow through the connection.
- [PrescribedHeatFlow](acausal_thermal/PrescribedHeatFlow.md) - Heat flow into the port driven by the input signal.
- [PrescribedTemperature](acausal_thermal/PrescribedTemperature.md) - Temperature boundary driven by the input signal.
- [RelTemperatureSensor](acausal_thermal/RelTemperatureSensor.md) - Measures the temperature difference T_a - T_b.
- [TemperatureSensor](acausal_thermal/TemperatureSensor.md) - Measures the absolute temperature of a port.
- [ThermalConductor](acausal_thermal/ThermalConductor.md) - Thermal conductor: Q_flow = G (T_a - T_b).
- [ThermalResistor](acausal_thermal/ThermalResistor.md) - Thermal resistor: Q_flow = (T_a - T_b) / R.

## Translational (acausal)


    
Acausal (physical) blocks with undirected pins, simulated natively through the differential-algebraic engine.

  

### Functions

- [Accelerate](acausal_translational/Accelerate.md) - Prescribed motion: the flange acceleration follows the input signal.
- [Brake](acausal_translational/Brake.md) - Signal-actuated friction brake to ground: the input sets the peak braking force.
- [ConstantForce](acausal_translational/ConstantForce.md) - Constant force on a flange.
- [ConstantSpeed](acausal_translational/ConstantSpeed.md) - Prescribed motion: the flange moves at a constant velocity v.
- [Damper](acausal_translational/Damper.md) - Linear translational damper: F = d (v_a - v_b).
- [ElastoGap](acausal_translational/ElastoGap.md) - One-sided contact spring-damper: acts only while the gap is closed (s_rel < s_rel0).
- [ExpSineForce](acausal_translational/ExpSineForce.md) - Exponentially damped sine force on a flange.
- [Fixed](acausal_translational/Fixed.md) - Flange fixed at a prescribed position s0.
- [Force](acausal_translational/Force.md) - External force on a flange, driven by the input signal.
- [Force2](acausal_translational/Force2.md) - Equal and opposite force between two flanges: +F on a, -F on b (signal-driven).
- [Friction](acausal_translational/Friction.md) - Regularised Coulomb friction (event-free): F = -Fc tanh(v / vEps).
- [Lever](acausal_translational/Lever.md) - Lever (small-angle): s_a = ratio s_b, the arm ratio (structural merge).
- [LinearSpeedDependentForce](acausal_translational/LinearSpeedDependentForce.md) - Speed-proportional resistance to ground: F = -d v.
- [Mass](acausal_translational/Mass.md) - Sliding mass with inertia: m dv/dt = F_net.
- [MassWithWeight](acausal_translational/MassWithWeight.md) - Sliding mass under gravity: m dv/dt = F_net - m g (expands to Mass + ConstantForce).
- [PositionSensor](acausal_translational/PositionSensor.md) - Measures the absolute position of a flange.
- [Pulley](acausal_translational/Pulley.md) - Ideal pulley: s_a = ratio s_b (structural merge; ratio = radius ratio).
- [QuadraticSpeedDependentForce](acausal_translational/QuadraticSpeedDependentForce.md) - Quadratic (drag) resistance to ground: F = -d v |v|.
- [RampForce](acausal_translational/RampForce.md) - Ramp force on a flange: F = Slope (t - StartTime) for t >= StartTime, else 0.
- [RelPositionSensor](acausal_translational/RelPositionSensor.md) - Measures the relative position s_a - s_b between two flanges.
- [RelSpeedSensor](acausal_translational/RelSpeedSensor.md) - Measures the relative velocity v_a - v_b between two flanges.
- [Rod](acausal_translational/Rod.md) - Rigid massless rod: s_a = s_b (structural merge; ratio defaults to 1).
- [SineForce](acausal_translational/SineForce.md) - Sine force on a flange: F = Amplitude sin(2 pi Frequency t + Phase).
- [SlidingMass](acausal_translational/SlidingMass.md) - Sliding mass of length L: m dv/dt = F_net (L is geometric, does not affect the dynamics).
- [Speed](acausal_translational/Speed.md) - Prescribed motion: the flange velocity follows the input signal.
- [SpeedSensor](acausal_translational/SpeedSensor.md) - Measures the absolute velocity of a flange.
- [Spring](acausal_translational/Spring.md) - Linear translational spring: F = k (s_a - s_b).
- [SpringDamper](acausal_translational/SpringDamper.md) - Parallel spring and damper: F = k (s_a - s_b) + d (v_a - v_b).
- [TranslationalEMF](acausal_translational/TranslationalEMF.md) - Linear electro-mechanical converter: back-emf v = k v_flange, force F = k i.
- [TrapezoidForce](acausal_translational/TrapezoidForce.md) - Trapezoidal force on a flange (continuous ramp-up / hold / ramp-down).

## Continuous blocks


    
Stateful continuous-time blocks updated with the simulation step.

  

### Functions

- [constraint](continuous/constraint.md) - Algebraic (differential-algebraic) constraint state solved by the DAE solver.
- [delay](continuous/delay.md) - Delays a signal with a circular buffer.
- [derivative](continuous/derivative.md) - Estimates the time derivative of an input.
- [hpf](continuous/hpf.md) - Applies a first-order high-pass filter.
- [integrator](continuous/integrator.md) - Integrates the input over time with optional clamps.
- [lpf](continuous/lpf.md) - Applies a first-order low-pass filter.
- [pid](continuous/pid.md) - Implements a scalar PID controller with output limits.
- [stateSpace](continuous/stateSpace.md) - Implements a scalar continuous state-space model.
- [tf](continuous/tf.md) - Implements a continuous transfer function approximation.

## Dashboard blocks


    
Interactive dashboard widgets that bind to signals and parameters to observe or drive a running model.

  

### Functions

- [dashboardCallbackButton](dashboard/dashboardCallbackButton.md) - Runs a callback and writes a value when clicked.
- [dashboardCheckBox](dashboard/dashboardCheckBox.md) - Toggles a bound parameter between two values with a check box.
- [dashboardComboBox](dashboard/dashboardComboBox.md) - Selects one of several values from a drop-down list.
- [dashboardDisplay](dashboard/dashboardDisplay.md) - Shows the current value of a bound signal as formatted text.
- [dashboardEdit](dashboard/dashboardEdit.md) - Lets you type a value that is written to a bound parameter.
- [dashboardGauge](dashboard/dashboardGauge.md) - Displays a bound signal as a needle on a circular scale.
- [dashboardHalfGauge](dashboard/dashboardHalfGauge.md) - Displays a bound signal on a 180-degree semicircular scale.
- [dashboardKnob](dashboard/dashboardKnob.md) - Sets a bound parameter by turning a rotary knob.
- [dashboardLamp](dashboard/dashboardLamp.md) - Shows a colored indicator that changes with a bound signal.
- [dashboardLinearGauge](dashboard/dashboardLinearGauge.md) - Displays a bound signal on a straight linear scale.
- [dashboardMultiStateImage](dashboard/dashboardMultiStateImage.md) - Shows one of several images selected by a bound signal.
- [dashboardPushButton](dashboard/dashboardPushButton.md) - Writes a value to a bound parameter while pressed or toggled.
- [dashboardQuarterGauge](dashboard/dashboardQuarterGauge.md) - Displays a bound signal on a 90-degree quarter scale.
- [dashboardRadioButton](dashboard/dashboardRadioButton.md) - Selects one of several values with a group of radio buttons.
- [dashboardRockerSwitch](dashboard/dashboardRockerSwitch.md) - Toggles a bound parameter between two states with a rocker.
- [dashboardRotarySwitch](dashboard/dashboardRotarySwitch.md) - Selects one of several states with a rotary selector.
- [dashboardScope](dashboard/dashboardScope.md) - Plots bound signals against simulation time on a multi-channel scope.
- [dashboardSlider](dashboard/dashboardSlider.md) - Sets a bound parameter by dragging a linear slider.
- [dashboardSliderSwitch](dashboard/dashboardSliderSwitch.md) - Toggles a bound parameter between two states with a sliding switch.
- [dashboardToggleSwitch](dashboard/dashboardToggleSwitch.md) - Toggles a bound parameter between two states with a toggle switch.

## Discrete blocks


    
Sampled blocks that store values, histories, or discrete states.

  

### Functions

- [ddelay](discrete/ddelay.md) - Delays a sampled signal by an integer number of steps.
- [detectChange](discrete/detectChange.md) - Outputs 1 on any step where the input differs from the previous step.
- [detectDecrease](discrete/detectDecrease.md) - Outputs 1 when the input strictly decreases from the previous step.
- [detectIncrease](discrete/detectIncrease.md) - Outputs 1 when the input strictly increases from the previous step.
- [difference](discrete/difference.md) - Outputs the difference from the previous input.
- [dstateSpace](discrete/dstateSpace.md) - Implements a scalar discrete state-space model.
- [dtf](discrete/dtf.md) - Implements a discrete transfer function.
- [fallingEdge](discrete/fallingEdge.md) - Outputs 1 on the step where the input crosses from >= 0 to < 0.
- [foh](discrete/foh.md) - First-order hold for sampled input values.
- [rateTransition](discrete/rateTransition.md) - Resamples a signal at its own sample time (zero-order hold).
- [risingEdge](discrete/risingEdge.md) - Outputs 1 on the step where the input crosses from <= 0 to > 0.
- [unitDelay](discrete/unitDelay.md) - Delays the input by one update.
- [zoh](discrete/zoh.md) - Samples an input and holds the last sampled value.

## FMI and Modelica blocks


    
Blocks that import, execute, or compile Functional Mock-up Units and models.

  

### Functions

- [fmu](fmi/fmu.md) - Runs a co-simulation FMU inside an NFlow diagram.
- [fmuMe](fmi/fmuMe.md) - Integrates a model-exchange FMU with the NFlow solver.
- [modelica](fmi/modelica.md) - Compiles a Modelica model and uses it as an NFlow block.

## Logic blocks


    
Boolean and comparison blocks for numeric signals.

  

### Functions

- [and](logic/and.md) - Outputs the logical AND of two inputs.
- [bitClear](logic/bitClear.md) - Clears the bit at position BitIndex of the integer input to 0.
- [bitSet](logic/bitSet.md) - Sets the bit at position BitIndex of the integer input to 1.
- [bitwiseOperator](logic/bitwiseOperator.md) - Bit-wise AND/OR/XOR/NAND/NOR/NOT of the input against a constant BitMask.
- [combinatorialLogic](logic/combinatorialLogic.md) - Truth-table lookup: an N-bit input vector indexes a 2^N-entry TruthTable.
- [compareToConstant](logic/compareToConstant.md) - Compares one input to a constant threshold.
- [compareToZero](logic/compareToZero.md) - Compares one input to zero.
- [extractBits](logic/extractBits.md) - Extracts NumBitsToExtract bits starting at StartBit, right-aligned.
- [if](logic/if.md) - Selects an action output from a boolean expression over the inputs.
- [intervalTest](logic/intervalTest.md) - Outputs 1 when the input lies within [LowerLimit, UpperLimit], else 0.
- [intervalTestDynamic](logic/intervalTestDynamic.md) - Like intervalTest but the bounds come from input ports (lo, u, up).
- [logicalOperator](logic/logicalOperator.md) - Configurable logical AND/OR/NAND/NOR/XOR/XNOR/NOT of the inputs.
- [not](logic/not.md) - Outputs the logical negation of one input.
- [or](logic/or.md) - Outputs the logical OR of two inputs.
- [relationalOperator](logic/relationalOperator.md) - Compares two input signals.
- [shiftArithmetic](logic/shiftArithmetic.md) - Arithmetic bit shift left/right by ShiftNumber (signed 64-bit).
- [switchCase](logic/switchCase.md) - Routes an integer control to one of several action outputs.
- [xor](logic/xor.md) - Outputs the logical exclusive OR of two inputs.

## Lookup Tables


    
Interpolated and direct lookup-table blocks (1-D, 2-D, n-D and direct).

  

### Functions

- [directLookup](lookup/directLookup.md) - Direct (n-D) lookup table without interpolation.
- [interpolationPrelookup](lookup/interpolationPrelookup.md) - Interpolates a static Table from a prelookup [k, f] pair.
- [lookup1D](lookup/lookup1D.md) - 1-D interpolated lookup table.
- [lookup2D](lookup/lookup2D.md) - 2-D interpolated lookup table.
- [lookupDynamic](lookup/lookupDynamic.md) - 1-D interpolated lookup with breakpoints and table taken from input ports.
- [lookupND](lookup/lookupND.md) - n-D interpolated lookup table.
- [prelookup](lookup/prelookup.md) - Computes the interval index k and fraction f for a shared breakpoint search.

## Math blocks


    
Algebraic scalar math operations.

  

### Functions

- [abs](math/abs.md) - Outputs the absolute value of its input.
- [atan2](math/atan2.md) - Four-quadrant arctangent of the two inputs.
- [bias](math/bias.md) - Adds a constant bias to the input.
- [complexToMagnitudeAngle](math/complexToMagnitudeAngle.md) - Outputs the magnitude and angle of a complex signal.
- [complexToRealImag](math/complexToRealImag.md) - Splits a complex signal into real and imaginary outputs.
- [conjugate](math/conjugate.md) - Complex conjugate of the input signal.
- [crossProduct](math/crossProduct.md) - Cross product of two 3-element vectors.
- [divide](math/divide.md) - Divides input 1 by input 2.
- [dotProduct](math/dotProduct.md) - Dot product of two vector inputs.
- [gain](math/gain.md) - Multiplies the input by a scalar gain.
- [magnitudeAngleToComplex](math/magnitudeAngleToComplex.md) - Builds a complex signal from magnitude and angle inputs.
- [mathFunction](math/mathFunction.md) - Mathematical function of the input.
- [matmul](math/matmul.md) - Multiplies two matrix signals or applies element-wise multiplication.
- [max](math/max.md) - Outputs the maximum of two inputs.
- [min](math/min.md) - Outputs the minimum of two inputs.
- [mult](math/mult.md) - Multiplies connected inputs.
- [negate](math/negate.md) - Negates the input signal.
- [polynomial](math/polynomial.md) - Evaluates a polynomial with constant Coefficients (highest power first).
- [productOfElements](math/productOfElements.md) - Product of the elements of a vector input.
- [realImagToComplex](math/realImagToComplex.md) - Builds a complex signal from real and imaginary inputs.
- [roundingFunction](math/roundingFunction.md) - Rounds the input to an integer value.
- [sign](math/sign.md) - Signum of the input (-1, 0 or +1).
- [sqrt](math/sqrt.md) - Square-root family of the input.
- [sum](math/sum.md) - Adds connected inputs with configurable signs.
- [sumElements](math/sumElements.md) - Sum of the elements of a vector input.
- [trigFunction](math/trigFunction.md) - Trigonometric function of the input.
- [wrapToZero](math/wrapToZero.md) - Outputs 0 when the input reaches Threshold, else passes it through.

## Nonlinear blocks


    
Blocks with saturation, thresholds, hysteresis, or rate limits.

  

### Functions

- [backlash](nonlinear/backlash.md) - Models backlash with a dead band around the previous output.
- [coulombViscousFriction](nonlinear/coulombViscousFriction.md) - Static friction: viscous term Gain*u plus signed Coulomb term Offset*sign(u).
- [deadZone](nonlinear/deadZone.md) - Suppresses values inside a dead zone.
- [hitCrossing](nonlinear/hitCrossing.md) - Outputs 1 on the step where the input crosses HitCrossingOffset.
- [hysteresis](nonlinear/hysteresis.md) - Relay: latching two-threshold switch (uHigh, uLow, yHigh, yLow).
- [quantizer](nonlinear/quantizer.md) - Rounds the input to the nearest interval.
- [rate](nonlinear/rate.md) - Limits rising and falling signal rates.
- [saturation](nonlinear/saturation.md) - Clamps the input between min and max.

## Sink blocks


    
Blocks that consume, display, or name signals.

  

### Functions

- [display](sink/display.md) - Stores the latest input value for display.
- [fileSink](sink/fileSink.md) - Represents a file output sink.
- [labelSink](sink/labelSink.md) - Names an input signal for label routing.
- [scope](sink/scope.md) - Stores time-series samples for display.
- [stopSimulation](sink/stopSimulation.md) - Ends the run at the end of the step where its input first becomes nonzero.
- [terminator](sink/terminator.md) - Consumes an intentionally unused signal.
- [toWorkspace](sink/toWorkspace.md) - Writes the input signal to a Nelson workspace variable.
- [xyScope](sink/xyScope.md) - Stores paired X/Y samples for display.
- [xyzScope](sink/xyzScope.md) - Stores X/Y/Z samples for 3D display.

## Source blocks


    
Blocks that generate signals from parameters, time, labels, or files.

  

### Functions

- [chirp](source/chirp.md) - Generates a sine chirp from f0 to f1.
- [clock](source/clock.md) - Outputs the current simulation time.
- [constant](source/constant.md) - Outputs a constant numeric value.
- [counterFreeRunning](source/counterFreeRunning.md) - Free-running up-counter, wraps modulo 2^NumBits.
- [counterLimited](source/counterLimited.md) - Up-counter that wraps back to 0 once it reaches UpperLimit.
- [enumeratedConstant](source/enumeratedConstant.md) - Outputs a fixed enumeration value (EnumClass documents it, Value is the number).
- [fileSource](source/fileSource.md) - Outputs values from preloaded times and values arrays.
- [fromWorkspace](source/fromWorkspace.md) - Reads a signal from a Nelson workspace variable.
- [impulse](source/impulse.md) - Outputs an impulse at a configured time.
- [labelSource](source/labelSource.md) - Reads a signal from a matching labelSink.
- [noise](source/noise.md) - Generates deterministic pseudo-random noise.
- [pulse](source/pulse.md) - Pulse Generator: a periodic pulse train (Amplitude, Period, Width, StartTime, Offset).
- [ramp](source/ramp.md) - Generates a ramp beginning at start.
- [repeatingSequenceInterpolated](source/repeatingSequenceInterpolated.md) - Periodic piecewise-linear source interpolating a (TimeValues, OutValues) table.
- [repeatingSequenceStair](source/repeatingSequenceStair.md) - Periodic staircase: one OutValues entry per sample, repeating.
- [signalGenerator](source/signalGenerator.md) - Configurable periodic source: sine, square or sawtooth (Amplitude, Frequency).
- [sine](source/sine.md) - Generates a sinusoidal signal.
- [step](source/step.md) - Generates a unit step at stepTime.

## User-Defined Function blocks


    
Blocks that evaluate user-provided expressions or Nelson functions.

  

### Functions

- [expression](userdefined/expression.md) - Evaluates a restricted math expression of u during simulation and in generated code.
- [nelsonFunction](userdefined/nelsonFunction.md) - Evaluates a Nelson function at every simulation step.

## Utility blocks


    
Blocks for routing, grouping, annotation, and interactive switching.

  

### Functions

- [assignment](utility/assignment.md) - Writes elements into a signal: out = base with out[Indices] = values.
- [busAssignment](utility/busAssignment.md) - Replaces selected members of a bus, passing the rest through unchanged.
- [busCreator](utility/busCreator.md) - Groups heterogeneous signals (or nested buses) into one bus.
- [busSelector](utility/busSelector.md) - Extracts members from a bus by path.
- [comment](utility/comment.md) - Adds non-executed annotation text to a diagram.
- [concatenate](utility/concatenate.md) - Concatenates input signals along a selected dimension.
- [convert](utility/convert.md) - Converts a signal to a selected data type.
- [dataStoreMemory](utility/dataStoreMemory.md) - Declares a named scalar memory shared across the model (initial value).
- [dataStoreRead](utility/dataStoreRead.md) - Outputs the value of the named data store.
- [dataStoreWrite](utility/dataStoreWrite.md) - Writes its input to the named data store.
- [demux](utility/demux.md) - Routes one input to multiple output ports.
- [functionCallGenerator](utility/functionCallGenerator.md) - Drives a function-call subsystem a fixed number of times per step.
- [functionCallSplit](utility/functionCallSplit.md) - Fans one function-call out to several callees in order.
- [initialCondition](utility/initialCondition.md) - Forces the output to InitialValue at the first step, then passes the input.
- [iteratorCondition](utility/iteratorCondition.md) - carries the continue predicate of a While Iterator subsystem
- [iteratorNumber](utility/iteratorNumber.md) - outputs the current iteration index inside a For/While iterator subsystem
- [merge](utility/merge.md) - Recombines the outputs of mutually-exclusive conditional subsystems.
- [multiportSwitch](utility/multiportSwitch.md) - Routes one of several data inputs to the output, selected by a control input.
- [mux](utility/mux.md) - Groups multiple input routes into one output route.
- [reshape](utility/reshape.md) - Changes signal dimensions without changing element values.
- [selector](utility/selector.md) - Selects elements from an input signal by one-based indices.
- [signalConversion](utility/signalConversion.md) - Pass-through that copies its input to its output unchanged (conversion point).
- [subsystem](utility/subsystem.md) - Runs a nested block diagram as a single block.
- [switch](utility/switch.md) - Selects between top and bottom inputs using a condition input.
- [toggleSwitch](utility/toggleSwitch.md) - Outputs one of two configured values from state.
- [width](utility/width.md) - Outputs the number of elements (width) of its input signal, as a scalar.

