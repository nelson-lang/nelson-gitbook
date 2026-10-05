#import "nelson_help.typ": *

= NFlow blocks

The nflow\_blocks module provides the simulation blocks used by NFlow, including their ports, parameters, phases, and runtime behavior.

 NFlow is currently released as #strong[1.0.0-beta.1];: it is functional and tested, but details of its interfaces and file format may still evolve based on feedback.

== Electrical (acausal)

Acausal (physical) blocks with undirected pins, simulated natively through the differential-algebraic engine.

=== Functions

- #nlink(<nflow_blocks:acausal_electrical.CCC>)[CCC]: Current-controlled current source: i\_pn \= gain i\_cp (the sense branch cp-cn is a short).
- #nlink(<nflow_blocks:acausal_electrical.CCV>)[CCV]: Current-controlled voltage source: v\_pn \= gain i\_cp (the sense branch cp-cn is a short).
- #nlink(<nflow_blocks:acausal_electrical.Capacitor>)[Capacitor]: Ideal linear capacitor: i \= C dv\/dt.
- #nlink(<nflow_blocks:acausal_electrical.Conductor>)[Conductor]: Ideal linear conductor: i \= G (v\_p - v\_n).
- #nlink(<nflow_blocks:acausal_electrical.ConstantCurrent>)[ConstantCurrent]: Constant current source: current I flows p -\> n.
- #nlink(<nflow_blocks:acausal_electrical.ConstantVoltage>)[ConstantVoltage]: Constant voltage source: v\_p - v\_n \= V.
- #nlink(<nflow_blocks:acausal_electrical.CurrentSensor>)[CurrentSensor]: Measures the branch current p -\> n (ideal ammeter).
- #nlink(<nflow_blocks:acausal_electrical.Diode>)[Diode]: Exponential (Shockley) diode: i \= Is (exp(vd\/Vt) - 1).
- #nlink(<nflow_blocks:acausal_electrical.ExpSineCurrent>)[ExpSineCurrent]: Exponentially damped sine current source.
- #nlink(<nflow_blocks:acausal_electrical.ExpSineVoltage>)[ExpSineVoltage]: Exponentially damped sine voltage source.
- #nlink(<nflow_blocks:acausal_electrical.Ground>)[Ground]: Reference node (0 V) for an electrical island.
- #nlink(<nflow_blocks:acausal_electrical.Gyrator>)[Gyrator]: Gyrator: i1 \= G2 v2, i2 \= -G1 v1 (across\<-\>through transducer).
- #nlink(<nflow_blocks:acausal_electrical.HeatingResistor>)[HeatingResistor]: Resistor that dissipates its power P \= v^2 \/ R as heat into a thermal port.
- #nlink(<nflow_blocks:acausal_electrical.IdealDiode>)[IdealDiode]: Ideal diode switching at the knee voltage Vknee: off below it (leak conductance Goff), on above it (on-resistance Ron in series with Vknee); the mode flip is an event.
- #nlink(<nflow_blocks:acausal_electrical.IdealOpAmp>)[IdealOpAmp]: Ideal op-amp (nullor): virtual short e\_+ \= e\_-, output current free.
- #nlink(<nflow_blocks:acausal_electrical.IdealSwitch>)[IdealSwitch]: Ideal switch: control \> 0.5 -\> closed short, else open (i \= 0).
- #nlink(<nflow_blocks:acausal_electrical.IdealTransformer>)[IdealTransformer]: Ideal transformer: v1 \= n v2, i2 \= -n i1 (structural, no state storage).
- #nlink(<nflow_blocks:acausal_electrical.Idle>)[Idle]: Ideal open branch: i \= 0 (branch voltage free).
- #nlink(<nflow_blocks:acausal_electrical.Inductor>)[Inductor]: Ideal linear inductor: v \= L di\/dt.
- #nlink(<nflow_blocks:acausal_electrical.NMOS>)[NMOS]: N-channel MOSFET (square law): drain, gate and source pins.
- #nlink(<nflow_blocks:acausal_electrical.NPN>)[NPN]: NPN bipolar transistor (Ebers-Moll): collector, base and emitter pins.
- #nlink(<nflow_blocks:acausal_electrical.PMOS>)[PMOS]: P-channel MOSFET (square law): drain, gate and source pins.
- #nlink(<nflow_blocks:acausal_electrical.PNP>)[PNP]: PNP bipolar transistor (Ebers-Moll): collector, base and emitter pins.
- #nlink(<nflow_blocks:acausal_electrical.PotentialSensor>)[PotentialSensor]: Measures the absolute node potential.
- #nlink(<nflow_blocks:acausal_electrical.RampCurrent>)[RampCurrent]: Ramp current source: i \= Slope (t - StartTime) for t \>\= StartTime, else 0.
- #nlink(<nflow_blocks:acausal_electrical.RampVoltage>)[RampVoltage]: Ramp voltage source: v \= Slope (t - StartTime) for t \>\= StartTime, else 0.
- #nlink(<nflow_blocks:acausal_electrical.Resistor>)[Resistor]: Ideal linear resistor: i \= (v\_p - v\_n) \/ R.
- #nlink(<nflow_blocks:acausal_electrical.Short>)[Short]: Ideal short circuit: e\_p \= e\_n (branch current free).
- #nlink(<nflow_blocks:acausal_electrical.SignalCurrent>)[SignalCurrent]: Current source driven by the input signal.
- #nlink(<nflow_blocks:acausal_electrical.SignalVoltage>)[SignalVoltage]: Voltage source driven by the input signal.
- #nlink(<nflow_blocks:acausal_electrical.SineCurrent>)[SineCurrent]: Sine current source: i \= Amplitude sin(2 pi Frequency t + Phase).
- #nlink(<nflow_blocks:acausal_electrical.SineVoltage>)[SineVoltage]: Sine voltage source: v \= Amplitude sin(2 pi Frequency t + Phase).
- #nlink(<nflow_blocks:acausal_electrical.TrapezoidCurrent>)[TrapezoidCurrent]: Trapezoidal current source (continuous ramp-up \/ hold \/ ramp-down).
- #nlink(<nflow_blocks:acausal_electrical.TrapezoidVoltage>)[TrapezoidVoltage]: Trapezoidal voltage source (continuous ramp-up \/ hold \/ ramp-down).
- #nlink(<nflow_blocks:acausal_electrical.VCC>)[VCC]: Voltage-controlled current source: i \= gain (v\_cp - v\_cn).
- #nlink(<nflow_blocks:acausal_electrical.VCV>)[VCV]: Voltage-controlled voltage source: v\_pn \= gain (v\_cp - v\_cn).
- #nlink(<nflow_blocks:acausal_electrical.VariableCapacitor>)[VariableCapacitor]: Capacitor whose capacitance C is set by a signal (exact charge Q formulation).
- #nlink(<nflow_blocks:acausal_electrical.VariableConductor>)[VariableConductor]: Conductor whose conductance G is set by the input signal.
- #nlink(<nflow_blocks:acausal_electrical.VariableInductor>)[VariableInductor]: Inductor whose inductance L is set by a signal (exact flux phi formulation).
- #nlink(<nflow_blocks:acausal_electrical.VariableResistor>)[VariableResistor]: Resistor whose resistance R is set by the input signal.
- #nlink(<nflow_blocks:acausal_electrical.VoltageSensor>)[VoltageSensor]: Measures the voltage v\_p - v\_n (ideal, no loading).
- #nlink(<nflow_blocks:acausal_electrical.ZDiode>)[ZDiode]: Zener diode: forward Shockley conduction plus reverse breakdown at -Vz.

== Planar (acausal)

Acausal (physical) blocks with undirected pins, simulated natively through the differential-algebraic engine.

=== Functions

- #nlink(<nflow_blocks:acausal_planar.PlanarAccelerationSensor>)[PlanarAccelerationSensor]: Absolute acceleration of the body at frame a along the chosen axis (x, y) or the angular acceleration (alpha).
- #nlink(<nflow_blocks:acausal_planar.PlanarBody>)[PlanarBody]: Rigid body: mass m, central inertia I; six states (xc, yc, phi, vx, vy, w). Named frames are body-fixed offsets from the COM.
- #nlink(<nflow_blocks:acausal_planar.PlanarDamper>)[PlanarDamper]: Linear 2D damper between the points at frames a and b: F \= -d dv.
- #nlink(<nflow_blocks:acausal_planar.PlanarDistance>)[PlanarDistance]: Rigid rod: holds a fixed distance L between the points at frames a and b.
- #nlink(<nflow_blocks:acausal_planar.PlanarDistanceSensor>)[PlanarDistanceSensor]: Distance between the points at frames a and b.
- #nlink(<nflow_blocks:acausal_planar.PlanarFixed>)[PlanarFixed]: Frame rigidly fixed at the world point (x, y).
- #nlink(<nflow_blocks:acausal_planar.PlanarForce>)[PlanarForce]: External world force (fx, fy) applied at the frame-a point (adds a torque when offset from the COM).
- #nlink(<nflow_blocks:acausal_planar.PlanarPointMass>)[PlanarPointMass]: Point mass (no orientation): four states (xc, yc, vx, vy); attach joints at its point.
- #nlink(<nflow_blocks:acausal_planar.PlanarPositionSensor>)[PlanarPositionSensor]: Absolute position of the frame-a point along the chosen axis (x, y) or the body angle (phi).
- #nlink(<nflow_blocks:acausal_planar.PlanarPrismatic>)[PlanarPrismatic]: Prismatic joint: frame b slides along the world axis (dx, dy) through frame a, relative rotation locked.
- #nlink(<nflow_blocks:acausal_planar.PlanarRelPositionSensor>)[PlanarRelPositionSensor]: Relative position of the frame-a point minus the frame-b point along the chosen axis (x, y).
- #nlink(<nflow_blocks:acausal_planar.PlanarRelativeTorque>)[PlanarRelativeTorque]: Actuator torque: +tau on the body at frame a, -tau on the body at frame b (drives a joint).
- #nlink(<nflow_blocks:acausal_planar.PlanarRevolute>)[PlanarRevolute]: Revolute (pin) joint: frames a and b share position, free relative rotation.
- #nlink(<nflow_blocks:acausal_planar.PlanarRollingWheel>)[PlanarRollingWheel]: Wheel at frame a rolls without slipping on the fixed surface line (px,py)+(dx,dy), staying at height radius.
- #nlink(<nflow_blocks:acausal_planar.PlanarSpring>)[PlanarSpring]: Linear 2D spring between the points at frames a and b: F \= -c dr.
- #nlink(<nflow_blocks:acausal_planar.PlanarSpringDamper>)[PlanarSpringDamper]: Linear 2D spring-damper between the points at frames a and b: F \= -(c dr + d dv).
- #nlink(<nflow_blocks:acausal_planar.PlanarTorque>)[PlanarTorque]: External torque tau applied to the body at frame a.
- #nlink(<nflow_blocks:acausal_planar.PlanarVelocitySensor>)[PlanarVelocitySensor]: Absolute velocity of the frame-a point along the chosen axis (x, y) or the angular velocity (omega).
- #nlink(<nflow_blocks:acausal_planar.PlanarWorld>)[PlanarWorld]: Inertial world with uniform gravity (down \= -y); provides a fixed frame at the origin.

== Rotational (acausal)

Acausal (physical) blocks with undirected pins, simulated natively through the differential-algebraic engine.

=== Functions

- #nlink(<nflow_blocks:acausal_rotational.AngleSensor>)[AngleSensor]: Measures the absolute angle of a flange.
- #nlink(<nflow_blocks:acausal_rotational.BearingFriction>)[BearingFriction]: Regularised bearing friction (event-free): tau \= -tau\_c tanh(w \/ w\_eps).
- #nlink(<nflow_blocks:acausal_rotational.Clutch>)[Clutch]: Rotational clutch (event-free stick-slip): tau \= tau\_max tanh((w\_a - w\_b) \/ w\_eps) reduces the slip toward a common speed.
- #nlink(<nflow_blocks:acausal_rotational.ConstantRotSpeed>)[ConstantRotSpeed]: Prescribed motion: the flange rotates at a constant angular velocity w.
- #nlink(<nflow_blocks:acausal_rotational.ConstantTorque>)[ConstantTorque]: Constant torque on a flange.
- #nlink(<nflow_blocks:acausal_rotational.EMF>)[EMF]: Electro-mechanical converter (motor\/generator): back-emf v \= k w, torque tau \= k i.
- #nlink(<nflow_blocks:acausal_rotational.ElastoBacklash>)[ElastoBacklash]: Rotational backlash: elastic torque with a dead zone of total play b.
- #nlink(<nflow_blocks:acausal_rotational.ExpSineTorque>)[ExpSineTorque]: Exponentially damped sine torque on a flange.
- #nlink(<nflow_blocks:acausal_rotational.Freewheel>)[Freewheel]: One-way clutch: couples flange a to b only while a overruns b (freewheels otherwise).
- #nlink(<nflow_blocks:acausal_rotational.IdealGear>)[IdealGear]: Ideal gear phi\_a \= ratio phi\_b (structural node merge, inertia folded).
- #nlink(<nflow_blocks:acausal_rotational.Inertia>)[Inertia]: Rotational inertia: J dw\/dt \= tau\_net.
- #nlink(<nflow_blocks:acausal_rotational.LinearSpeedDependentTorque>)[LinearSpeedDependentTorque]: Speed-proportional resistance to ground: tau \= -d w.
- #nlink(<nflow_blocks:acausal_rotational.QuadraticSpeedDependentTorque>)[QuadraticSpeedDependentTorque]: Quadratic (drag) resistance to ground: tau \= -d w |w|.
- #nlink(<nflow_blocks:acausal_rotational.RampTorque>)[RampTorque]: Ramp torque on a flange: tau \= Slope (t - StartTime) for t \>\= StartTime, else 0.
- #nlink(<nflow_blocks:acausal_rotational.RelAngleSensor>)[RelAngleSensor]: Measures the relative angle phi\_a - phi\_b between two flanges.
- #nlink(<nflow_blocks:acausal_rotational.RelRotSpeedSensor>)[RelRotSpeedSensor]: Measures the relative angular velocity w\_a - w\_b between two flanges.
- #nlink(<nflow_blocks:acausal_rotational.RotAccelerate>)[RotAccelerate]: Prescribed motion: the flange angular acceleration follows the input signal.
- #nlink(<nflow_blocks:acausal_rotational.RotBrake>)[RotBrake]: Signal-actuated rotational brake to ground: the input sets the peak braking torque.
- #nlink(<nflow_blocks:acausal_rotational.RotDamper>)[RotDamper]: Rotational damper: tau \= d (w\_a - w\_b).
- #nlink(<nflow_blocks:acausal_rotational.RotFixed>)[RotFixed]: Flange fixed at a prescribed angle phi0.
- #nlink(<nflow_blocks:acausal_rotational.RotSpeed>)[RotSpeed]: Prescribed motion: the flange angular velocity follows the input signal.
- #nlink(<nflow_blocks:acausal_rotational.RotSpeedSensor>)[RotSpeedSensor]: Measures the absolute angular velocity of a flange.
- #nlink(<nflow_blocks:acausal_rotational.RotSpring>)[RotSpring]: Rotational spring: tau \= c (phi\_a - phi\_b).
- #nlink(<nflow_blocks:acausal_rotational.RotSpringDamper>)[RotSpringDamper]: Parallel rotational spring and damper: tau \= c (phi\_a - phi\_b) + d (w\_a - w\_b).
- #nlink(<nflow_blocks:acausal_rotational.SineTorque>)[SineTorque]: Sine torque on a flange: tau \= Amplitude sin(2 pi Frequency t + Phase).
- #nlink(<nflow_blocks:acausal_rotational.Torque>)[Torque]: External torque on a flange, driven by the input signal.
- #nlink(<nflow_blocks:acausal_rotational.Torque2>)[Torque2]: Equal and opposite torque between two flanges: +tau on a, -tau on b (signal-driven).
- #nlink(<nflow_blocks:acausal_rotational.TrapezoidTorque>)[TrapezoidTorque]: Trapezoidal torque on a flange (continuous ramp-up \/ hold \/ ramp-down).

== Thermal (acausal)

Acausal (physical) blocks with undirected pins, simulated natively through the differential-algebraic engine.

=== Functions

- #nlink(<nflow_blocks:acausal_thermal.BodyRadiation>)[BodyRadiation]: Radiation (Stefan-Boltzmann): Q\_flow \= Gr (T\_a^4 - T\_b^4).
- #nlink(<nflow_blocks:acausal_thermal.Convection>)[Convection]: Convection: Q\_flow \= Gc (T\_a - T\_b) with a signal-driven coefficient Gc.
- #nlink(<nflow_blocks:acausal_thermal.ConvectiveResistor>)[ConvectiveResistor]: Convective resistor: Q\_flow \= (T\_a - T\_b) \/ Rc with a signal-driven Rc.
- #nlink(<nflow_blocks:acausal_thermal.FixedHeatFlow>)[FixedHeatFlow]: Constant heat flow Q into the connected port.
- #nlink(<nflow_blocks:acausal_thermal.FixedTemperature>)[FixedTemperature]: Boundary at a fixed temperature T.
- #nlink(<nflow_blocks:acausal_thermal.HeatCapacitor>)[HeatCapacitor]: Lumped heat capacity: C dT\/dt \= Q\_flow (port referenced to 0).
- #nlink(<nflow_blocks:acausal_thermal.HeatFlowSensor>)[HeatFlowSensor]: Measures the heat flow through the connection.
- #nlink(<nflow_blocks:acausal_thermal.PrescribedHeatFlow>)[PrescribedHeatFlow]: Heat flow into the port driven by the input signal.
- #nlink(<nflow_blocks:acausal_thermal.PrescribedTemperature>)[PrescribedTemperature]: Temperature boundary driven by the input signal.
- #nlink(<nflow_blocks:acausal_thermal.RelTemperatureSensor>)[RelTemperatureSensor]: Measures the temperature difference T\_a - T\_b.
- #nlink(<nflow_blocks:acausal_thermal.TemperatureSensor>)[TemperatureSensor]: Measures the absolute temperature of a port.
- #nlink(<nflow_blocks:acausal_thermal.ThermalConductor>)[ThermalConductor]: Thermal conductor: Q\_flow \= G (T\_a - T\_b).
- #nlink(<nflow_blocks:acausal_thermal.ThermalResistor>)[ThermalResistor]: Thermal resistor: Q\_flow \= (T\_a - T\_b) \/ R.

== Translational (acausal)

Acausal (physical) blocks with undirected pins, simulated natively through the differential-algebraic engine.

=== Functions

- #nlink(<nflow_blocks:acausal_translational.Accelerate>)[Accelerate]: Prescribed motion: the flange acceleration follows the input signal.
- #nlink(<nflow_blocks:acausal_translational.Brake>)[Brake]: Signal-actuated friction brake to ground: the input sets the peak braking force.
- #nlink(<nflow_blocks:acausal_translational.ConstantForce>)[ConstantForce]: Constant force on a flange.
- #nlink(<nflow_blocks:acausal_translational.ConstantSpeed>)[ConstantSpeed]: Prescribed motion: the flange moves at a constant velocity v.
- #nlink(<nflow_blocks:acausal_translational.Damper>)[Damper]: Linear translational damper: F \= d (v\_a - v\_b).
- #nlink(<nflow_blocks:acausal_translational.ElastoGap>)[ElastoGap]: One-sided contact spring-damper: acts only while the gap is closed (s\_rel \< s\_rel0).
- #nlink(<nflow_blocks:acausal_translational.ExpSineForce>)[ExpSineForce]: Exponentially damped sine force on a flange.
- #nlink(<nflow_blocks:acausal_translational.Fixed>)[Fixed]: Flange fixed at a prescribed position s0.
- #nlink(<nflow_blocks:acausal_translational.Force>)[Force]: External force on a flange, driven by the input signal.
- #nlink(<nflow_blocks:acausal_translational.Force2>)[Force2]: Equal and opposite force between two flanges: +F on a, -F on b (signal-driven).
- #nlink(<nflow_blocks:acausal_translational.Friction>)[Friction]: Regularised Coulomb friction (event-free): F \= -Fc tanh(v \/ vEps).
- #nlink(<nflow_blocks:acausal_translational.Lever>)[Lever]: Lever (small-angle): s\_a \= ratio s\_b, the arm ratio (structural merge).
- #nlink(<nflow_blocks:acausal_translational.LinearSpeedDependentForce>)[LinearSpeedDependentForce]: Speed-proportional resistance to ground: F \= -d v.
- #nlink(<nflow_blocks:acausal_translational.Mass>)[Mass]: Sliding mass with inertia: m dv\/dt \= F\_net.
- #nlink(<nflow_blocks:acausal_translational.MassWithWeight>)[MassWithWeight]: Sliding mass under gravity: m dv\/dt \= F\_net - m g (expands to Mass + ConstantForce).
- #nlink(<nflow_blocks:acausal_translational.PositionSensor>)[PositionSensor]: Measures the absolute position of a flange.
- #nlink(<nflow_blocks:acausal_translational.Pulley>)[Pulley]: Ideal pulley: s\_a \= ratio s\_b (structural merge; ratio \= radius ratio).
- #nlink(<nflow_blocks:acausal_translational.QuadraticSpeedDependentForce>)[QuadraticSpeedDependentForce]: Quadratic (drag) resistance to ground: F \= -d v |v|.
- #nlink(<nflow_blocks:acausal_translational.RampForce>)[RampForce]: Ramp force on a flange: F \= Slope (t - StartTime) for t \>\= StartTime, else 0.
- #nlink(<nflow_blocks:acausal_translational.RelPositionSensor>)[RelPositionSensor]: Measures the relative position s\_a - s\_b between two flanges.
- #nlink(<nflow_blocks:acausal_translational.RelSpeedSensor>)[RelSpeedSensor]: Measures the relative velocity v\_a - v\_b between two flanges.
- #nlink(<nflow_blocks:acausal_translational.Rod>)[Rod]: Rigid massless rod: s\_a \= s\_b (structural merge; ratio defaults to 1).
- #nlink(<nflow_blocks:acausal_translational.SineForce>)[SineForce]: Sine force on a flange: F \= Amplitude sin(2 pi Frequency t + Phase).
- #nlink(<nflow_blocks:acausal_translational.SlidingMass>)[SlidingMass]: Sliding mass of length L: m dv\/dt \= F\_net (L is geometric, does not affect the dynamics).
- #nlink(<nflow_blocks:acausal_translational.Speed>)[Speed]: Prescribed motion: the flange velocity follows the input signal.
- #nlink(<nflow_blocks:acausal_translational.SpeedSensor>)[SpeedSensor]: Measures the absolute velocity of a flange.
- #nlink(<nflow_blocks:acausal_translational.Spring>)[Spring]: Linear translational spring: F \= k (s\_a - s\_b).
- #nlink(<nflow_blocks:acausal_translational.SpringDamper>)[SpringDamper]: Parallel spring and damper: F \= k (s\_a - s\_b) + d (v\_a - v\_b).
- #nlink(<nflow_blocks:acausal_translational.TranslationalEMF>)[TranslationalEMF]: Linear electro-mechanical converter: back-emf v \= k v\_flange, force F \= k i.
- #nlink(<nflow_blocks:acausal_translational.TrapezoidForce>)[TrapezoidForce]: Trapezoidal force on a flange (continuous ramp-up \/ hold \/ ramp-down).

== Continuous blocks

Stateful continuous-time blocks updated with the simulation step.

=== Functions

- #nlink(<nflow_blocks:continuous.constraint>)[constraint]: Algebraic (differential-algebraic) constraint state solved by the DAE solver.
- #nlink(<nflow_blocks:continuous.delay>)[delay]: Delays a signal with a circular buffer.
- #nlink(<nflow_blocks:continuous.derivative>)[derivative]: Estimates the time derivative of an input.
- #nlink(<nflow_blocks:continuous.hpf>)[hpf]: Applies a first-order high-pass filter.
- #nlink(<nflow_blocks:continuous.integrator>)[integrator]: Integrates the input over time with optional clamps.
- #nlink(<nflow_blocks:continuous.lpf>)[lpf]: Applies a first-order low-pass filter.
- #nlink(<nflow_blocks:continuous.pid>)[pid]: Implements a scalar PID controller with output limits.
- #nlink(<nflow_blocks:continuous.stateSpace>)[stateSpace]: Implements a scalar continuous state-space model.
- #nlink(<nflow_blocks:continuous.tf>)[tf]: Implements a continuous transfer function approximation.

== Dashboard blocks

Interactive dashboard widgets that bind to signals and parameters to observe or drive a running model.

=== Functions

- #nlink(<nflow_blocks:dashboard.dashboardCallbackButton>)[dashboardCallbackButton]: Runs a callback and writes a value when clicked.
- #nlink(<nflow_blocks:dashboard.dashboardCheckBox>)[dashboardCheckBox]: Toggles a bound parameter between two values with a check box.
- #nlink(<nflow_blocks:dashboard.dashboardComboBox>)[dashboardComboBox]: Selects one of several values from a drop-down list.
- #nlink(<nflow_blocks:dashboard.dashboardDisplay>)[dashboardDisplay]: Shows the current value of a bound signal as formatted text.
- #nlink(<nflow_blocks:dashboard.dashboardEdit>)[dashboardEdit]: Lets you type a value that is written to a bound parameter.
- #nlink(<nflow_blocks:dashboard.dashboardGauge>)[dashboardGauge]: Displays a bound signal as a needle on a circular scale.
- #nlink(<nflow_blocks:dashboard.dashboardHalfGauge>)[dashboardHalfGauge]: Displays a bound signal on a 180-degree semicircular scale.
- #nlink(<nflow_blocks:dashboard.dashboardKnob>)[dashboardKnob]: Sets a bound parameter by turning a rotary knob.
- #nlink(<nflow_blocks:dashboard.dashboardLamp>)[dashboardLamp]: Shows a colored indicator that changes with a bound signal.
- #nlink(<nflow_blocks:dashboard.dashboardLinearGauge>)[dashboardLinearGauge]: Displays a bound signal on a straight linear scale.
- #nlink(<nflow_blocks:dashboard.dashboardMultiStateImage>)[dashboardMultiStateImage]: Shows one of several images selected by a bound signal.
- #nlink(<nflow_blocks:dashboard.dashboardPushButton>)[dashboardPushButton]: Writes a value to a bound parameter while pressed or toggled.
- #nlink(<nflow_blocks:dashboard.dashboardQuarterGauge>)[dashboardQuarterGauge]: Displays a bound signal on a 90-degree quarter scale.
- #nlink(<nflow_blocks:dashboard.dashboardRadioButton>)[dashboardRadioButton]: Selects one of several values with a group of radio buttons.
- #nlink(<nflow_blocks:dashboard.dashboardRockerSwitch>)[dashboardRockerSwitch]: Toggles a bound parameter between two states with a rocker.
- #nlink(<nflow_blocks:dashboard.dashboardRotarySwitch>)[dashboardRotarySwitch]: Selects one of several states with a rotary selector.
- #nlink(<nflow_blocks:dashboard.dashboardScope>)[dashboardScope]: Plots bound signals against simulation time on a multi-channel scope.
- #nlink(<nflow_blocks:dashboard.dashboardSlider>)[dashboardSlider]: Sets a bound parameter by dragging a linear slider.
- #nlink(<nflow_blocks:dashboard.dashboardSliderSwitch>)[dashboardSliderSwitch]: Toggles a bound parameter between two states with a sliding switch.
- #nlink(<nflow_blocks:dashboard.dashboardToggleSwitch>)[dashboardToggleSwitch]: Toggles a bound parameter between two states with a toggle switch.

== Discrete blocks

Sampled blocks that store values, histories, or discrete states.

=== Functions

- #nlink(<nflow_blocks:discrete.ddelay>)[ddelay]: Delays a sampled signal by an integer number of steps.
- #nlink(<nflow_blocks:discrete.detectChange>)[detectChange]: Outputs 1 on any step where the input differs from the previous step.
- #nlink(<nflow_blocks:discrete.detectDecrease>)[detectDecrease]: Outputs 1 when the input strictly decreases from the previous step.
- #nlink(<nflow_blocks:discrete.detectIncrease>)[detectIncrease]: Outputs 1 when the input strictly increases from the previous step.
- #nlink(<nflow_blocks:discrete.difference>)[difference]: Outputs the difference from the previous input.
- #nlink(<nflow_blocks:discrete.dstateSpace>)[dstateSpace]: Implements a scalar discrete state-space model.
- #nlink(<nflow_blocks:discrete.dtf>)[dtf]: Implements a discrete transfer function.
- #nlink(<nflow_blocks:discrete.fallingEdge>)[fallingEdge]: Outputs 1 on the step where the input crosses from \>\= 0 to \< 0.
- #nlink(<nflow_blocks:discrete.foh>)[foh]: First-order hold for sampled input values.
- #nlink(<nflow_blocks:discrete.rateTransition>)[rateTransition]: Resamples a signal at its own sample time (zero-order hold).
- #nlink(<nflow_blocks:discrete.risingEdge>)[risingEdge]: Outputs 1 on the step where the input crosses from \<\= 0 to \> 0.
- #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay]: Delays the input by one update.
- #nlink(<nflow_blocks:discrete.zoh>)[zoh]: Samples an input and holds the last sampled value.

== FMI and Modelica blocks

Blocks that import, execute, or compile Functional Mock-up Units and models.

=== Functions

- #nlink(<nflow_blocks:fmi.fmu>)[fmu]: Runs a co-simulation FMU inside an NFlow diagram.
- #nlink(<nflow_blocks:fmi.fmuMe>)[fmuMe]: Integrates a model-exchange FMU with the NFlow solver.
- #nlink(<nflow_blocks:fmi.modelica>)[modelica]: Compiles a Modelica model and uses it as an NFlow block.

== Logic blocks

Boolean and comparison blocks for numeric signals.

=== Functions

- #nlink(<nflow_blocks:logic.and>)[and]: Outputs the logical AND of two inputs.
- #nlink(<nflow_blocks:logic.bitClear>)[bitClear]: Clears the bit at position BitIndex of the integer input to 0.
- #nlink(<nflow_blocks:logic.bitSet>)[bitSet]: Sets the bit at position BitIndex of the integer input to 1.
- #nlink(<nflow_blocks:logic.bitwiseOperator>)[bitwiseOperator]: Bit-wise AND\/OR\/XOR\/NAND\/NOR\/NOT of the input against a constant BitMask.
- #nlink(<nflow_blocks:logic.combinatorialLogic>)[combinatorialLogic]: Truth-table lookup: an N-bit input vector indexes a 2^N-entry TruthTable.
- #nlink(<nflow_blocks:logic.compareToConstant>)[compareToConstant]: Compares one input to a constant threshold.
- #nlink(<nflow_blocks:logic.compareToZero>)[compareToZero]: Compares one input to zero.
- #nlink(<nflow_blocks:logic.extractBits>)[extractBits]: Extracts NumBitsToExtract bits starting at StartBit, right-aligned.
- #nlink(<nflow_blocks:logic.if>)[if]: Selects an action output from a boolean expression over the inputs.
- #nlink(<nflow_blocks:logic.intervalTest>)[intervalTest]: Outputs 1 when the input lies within \[LowerLimit, UpperLimit\], else 0.
- #nlink(<nflow_blocks:logic.intervalTestDynamic>)[intervalTestDynamic]: Like intervalTest but the bounds come from input ports (lo, u, up).
- #nlink(<nflow_blocks:logic.logicalOperator>)[logicalOperator]: Configurable logical AND\/OR\/NAND\/NOR\/XOR\/XNOR\/NOT of the inputs.
- #nlink(<nflow_blocks:logic.not>)[not]: Outputs the logical negation of one input.
- #nlink(<nflow_blocks:logic.or>)[or]: Outputs the logical OR of two inputs.
- #nlink(<nflow_blocks:logic.relationalOperator>)[relationalOperator]: Compares two input signals.
- #nlink(<nflow_blocks:logic.shiftArithmetic>)[shiftArithmetic]: Arithmetic bit shift left\/right by ShiftNumber (signed 64-bit).
- #nlink(<nflow_blocks:logic.switchCase>)[switchCase]: Routes an integer control to one of several action outputs.
- #nlink(<nflow_blocks:logic.xor>)[xor]: Outputs the logical exclusive OR of two inputs.

== Lookup Tables

Interpolated and direct lookup-table blocks (1-D, 2-D, n-D and direct).

=== Functions

- #nlink(<nflow_blocks:lookup.directLookup>)[directLookup]: Direct (n-D) lookup table without interpolation.
- #nlink(<nflow_blocks:lookup.interpolationPrelookup>)[interpolationPrelookup]: Interpolates a static Table from a prelookup \[k, f\] pair.
- #nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D]: 1-D interpolated lookup table.
- #nlink(<nflow_blocks:lookup.lookup2D>)[lookup2D]: 2-D interpolated lookup table.
- #nlink(<nflow_blocks:lookup.lookupDynamic>)[lookupDynamic]: 1-D interpolated lookup with breakpoints and table taken from input ports.
- #nlink(<nflow_blocks:lookup.lookupND>)[lookupND]: n-D interpolated lookup table.
- #nlink(<nflow_blocks:lookup.prelookup>)[prelookup]: Computes the interval index k and fraction f for a shared breakpoint search.

== Math blocks

Algebraic scalar math operations.

=== Functions

- #nlink(<nflow_blocks:math.abs>)[abs]: Outputs the absolute value of its input.
- #nlink(<nflow_blocks:math.atan2>)[atan2]: Four-quadrant arctangent of the two inputs.
- #nlink(<nflow_blocks:math.bias>)[bias]: Adds a constant bias to the input.
- #nlink(<nflow_blocks:math.complexToMagnitudeAngle>)[complexToMagnitudeAngle]: Outputs the magnitude and angle of a complex signal.
- #nlink(<nflow_blocks:math.complexToRealImag>)[complexToRealImag]: Splits a complex signal into real and imaginary outputs.
- #nlink(<nflow_blocks:math.conjugate>)[conjugate]: Complex conjugate of the input signal.
- #nlink(<nflow_blocks:math.crossProduct>)[crossProduct]: Cross product of two 3-element vectors.
- #nlink(<nflow_blocks:math.divide>)[divide]: Divides input 1 by input 2.
- #nlink(<nflow_blocks:math.dotProduct>)[dotProduct]: Dot product of two vector inputs.
- #nlink(<nflow_blocks:math.gain>)[gain]: Multiplies the input by a scalar gain.
- #nlink(<nflow_blocks:math.magnitudeAngleToComplex>)[magnitudeAngleToComplex]: Builds a complex signal from magnitude and angle inputs.
- #nlink(<nflow_blocks:math.mathFunction>)[mathFunction]: Mathematical function of the input.
- #nlink(<nflow_blocks:math.matmul>)[matmul]: Multiplies two matrix signals or applies element-wise multiplication.
- #nlink(<nflow_blocks:math.max>)[max]: Outputs the maximum of two inputs.
- #nlink(<nflow_blocks:math.min>)[min]: Outputs the minimum of two inputs.
- #nlink(<nflow_blocks:math.mult>)[mult]: Multiplies connected inputs.
- #nlink(<nflow_blocks:math.negate>)[negate]: Negates the input signal.
- #nlink(<nflow_blocks:math.polynomial>)[polynomial]: Evaluates a polynomial with constant Coefficients (highest power first).
- #nlink(<nflow_blocks:math.productOfElements>)[productOfElements]: Product of the elements of a vector input.
- #nlink(<nflow_blocks:math.realImagToComplex>)[realImagToComplex]: Builds a complex signal from real and imaginary inputs.
- #nlink(<nflow_blocks:math.roundingFunction>)[roundingFunction]: Rounds the input to an integer value.
- #nlink(<nflow_blocks:math.sign>)[sign]: Signum of the input (-1, 0 or +1).
- #nlink(<nflow_blocks:math.sqrt>)[sqrt]: Square-root family of the input.
- #nlink(<nflow_blocks:math.sum>)[sum]: Adds connected inputs with configurable signs.
- #nlink(<nflow_blocks:math.sumElements>)[sumElements]: Sum of the elements of a vector input.
- #nlink(<nflow_blocks:math.trigFunction>)[trigFunction]: Trigonometric function of the input.
- #nlink(<nflow_blocks:math.wrapToZero>)[wrapToZero]: Outputs 0 when the input reaches Threshold, else passes it through.

== Nonlinear blocks

Blocks with saturation, thresholds, hysteresis, or rate limits.

=== Functions

- #nlink(<nflow_blocks:nonlinear.backlash>)[backlash]: Models backlash with a dead band around the previous output.
- #nlink(<nflow_blocks:nonlinear.coulombViscousFriction>)[coulombViscousFriction]: Static friction: viscous term Gain\*u plus signed Coulomb term Offset\*sign(u).
- #nlink(<nflow_blocks:nonlinear.deadZone>)[deadZone]: Suppresses values inside a dead zone.
- #nlink(<nflow_blocks:nonlinear.hitCrossing>)[hitCrossing]: Outputs 1 on the step where the input crosses HitCrossingOffset.
- #nlink(<nflow_blocks:nonlinear.hysteresis>)[hysteresis]: Relay: latching two-threshold switch (uHigh, uLow, yHigh, yLow).
- #nlink(<nflow_blocks:nonlinear.quantizer>)[quantizer]: Rounds the input to the nearest interval.
- #nlink(<nflow_blocks:nonlinear.rate>)[rate]: Limits rising and falling signal rates.
- #nlink(<nflow_blocks:nonlinear.saturation>)[saturation]: Clamps the input between min and max.

== Sink blocks

Blocks that consume, display, or name signals.

=== Functions

- #nlink(<nflow_blocks:sink.display>)[display]: Stores the latest input value for display.
- #nlink(<nflow_blocks:sink.fileSink>)[fileSink]: Represents a file output sink.
- #nlink(<nflow_blocks:sink.labelSink>)[labelSink]: Names an input signal for label routing.
- #nlink(<nflow_blocks:sink.scope>)[scope]: Stores time-series samples for display.
- #nlink(<nflow_blocks:sink.stopSimulation>)[stopSimulation]: Ends the run at the end of the step where its input first becomes nonzero.
- #nlink(<nflow_blocks:sink.terminator>)[terminator]: Consumes an intentionally unused signal.
- #nlink(<nflow_blocks:sink.toWorkspace>)[toWorkspace]: Writes the input signal to a Nelson workspace variable.
- #nlink(<nflow_blocks:sink.xyScope>)[xyScope]: Stores paired X\/Y samples for display.
- #nlink(<nflow_blocks:sink.xyzScope>)[xyzScope]: Stores X\/Y\/Z samples for 3D display.

== Source blocks

Blocks that generate signals from parameters, time, labels, or files.

=== Functions

- #nlink(<nflow_blocks:source.chirp>)[chirp]: Generates a sine chirp from f0 to f1.
- #nlink(<nflow_blocks:source.clock>)[clock]: Outputs the current simulation time.
- #nlink(<nflow_blocks:source.constant>)[constant]: Outputs a constant numeric value.
- #nlink(<nflow_blocks:source.counterFreeRunning>)[counterFreeRunning]: Free-running up-counter, wraps modulo 2^NumBits.
- #nlink(<nflow_blocks:source.counterLimited>)[counterLimited]: Up-counter that wraps back to 0 once it reaches UpperLimit.
- #nlink(<nflow_blocks:source.enumeratedConstant>)[enumeratedConstant]: Outputs a fixed enumeration value (EnumClass documents it, Value is the number).
- #nlink(<nflow_blocks:source.fileSource>)[fileSource]: Outputs values from preloaded times and values arrays.
- #nlink(<nflow_blocks:source.fromWorkspace>)[fromWorkspace]: Reads a signal from a Nelson workspace variable.
- #nlink(<nflow_blocks:source.impulse>)[impulse]: Outputs an impulse at a configured time.
- #nlink(<nflow_blocks:source.labelSource>)[labelSource]: Reads a signal from a matching labelSink.
- #nlink(<nflow_blocks:source.noise>)[noise]: Generates deterministic pseudo-random noise.
- #nlink(<nflow_blocks:source.pulse>)[pulse]: Pulse Generator: a periodic pulse train (Amplitude, Period, Width, StartTime, Offset).
- #nlink(<nflow_blocks:source.ramp>)[ramp]: Generates a ramp beginning at start.
- #nlink(<nflow_blocks:source.repeatingSequenceInterpolated>)[repeatingSequenceInterpolated]: Periodic piecewise-linear source interpolating a (TimeValues, OutValues) table.
- #nlink(<nflow_blocks:source.repeatingSequenceStair>)[repeatingSequenceStair]: Periodic staircase: one OutValues entry per sample, repeating.
- #nlink(<nflow_blocks:source.signalGenerator>)[signalGenerator]: Configurable periodic source: sine, square or sawtooth (Amplitude, Frequency).
- #nlink(<nflow_blocks:source.sine>)[sine]: Generates a sinusoidal signal.
- #nlink(<nflow_blocks:source.step>)[step]: Generates a unit step at stepTime.

== User-Defined Function blocks

Blocks that evaluate user-provided expressions or Nelson functions.

=== Functions

- #nlink(<nflow_blocks:userdefined.expression>)[expression]: Evaluates a restricted math expression of u during simulation and in generated code.
- #nlink(<nflow_blocks:userdefined.nelsonFunction>)[nelsonFunction]: Evaluates a Nelson function at every simulation step.

== Utility blocks

Blocks for routing, grouping, annotation, and interactive switching.

=== Functions

- #nlink(<nflow_blocks:utility.assignment>)[assignment]: Writes elements into a signal: out \= base with out\[Indices\] \= values.
- #nlink(<nflow_blocks:utility.busAssignment>)[busAssignment]: Replaces selected members of a bus, passing the rest through unchanged.
- #nlink(<nflow_blocks:utility.busCreator>)[busCreator]: Groups heterogeneous signals (or nested buses) into one bus.
- #nlink(<nflow_blocks:utility.busSelector>)[busSelector]: Extracts members from a bus by path.
- #nlink(<nflow_blocks:utility.comment>)[comment]: Adds non-executed annotation text to a diagram.
- #nlink(<nflow_blocks:utility.concatenate>)[concatenate]: Concatenates input signals along a selected dimension.
- #nlink(<nflow_blocks:utility.convert>)[convert]: Converts a signal to a selected data type.
- #nlink(<nflow_blocks:utility.dataStoreMemory>)[dataStoreMemory]: Declares a named scalar memory shared across the model (initial value).
- #nlink(<nflow_blocks:utility.dataStoreRead>)[dataStoreRead]: Outputs the value of the named data store.
- #nlink(<nflow_blocks:utility.dataStoreWrite>)[dataStoreWrite]: Writes its input to the named data store.
- #nlink(<nflow_blocks:utility.demux>)[demux]: Routes one input to multiple output ports.
- #nlink(<nflow_blocks:utility.functionCallGenerator>)[functionCallGenerator]: Drives a function-call subsystem a fixed number of times per step.
- #nlink(<nflow_blocks:utility.functionCallSplit>)[functionCallSplit]: Fans one function-call out to several callees in order.
- #nlink(<nflow_blocks:utility.initialCondition>)[initialCondition]: Forces the output to InitialValue at the first step, then passes the input.
- #nlink(<nflow_blocks:utility.iteratorCondition>)[iteratorCondition]: carries the continue predicate of a While Iterator subsystem
- #nlink(<nflow_blocks:utility.iteratorNumber>)[iteratorNumber]: outputs the current iteration index inside a For\/While iterator subsystem
- #nlink(<nflow_blocks:utility.merge>)[merge]: Recombines the outputs of mutually-exclusive conditional subsystems.
- #nlink(<nflow_blocks:utility.multiportSwitch>)[multiportSwitch]: Routes one of several data inputs to the output, selected by a control input.
- #nlink(<nflow_blocks:utility.mux>)[mux]: Groups multiple input routes into one output route.
- #nlink(<nflow_blocks:utility.reshape>)[reshape]: Changes signal dimensions without changing element values.
- #nlink(<nflow_blocks:utility.selector>)[selector]: Selects elements from an input signal by one-based indices.
- #nlink(<nflow_blocks:utility.signalConversion>)[signalConversion]: Pass-through that copies its input to its output unchanged (conversion point).
- #nlink(<nflow_blocks:utility.subsystem>)[subsystem]: Runs a nested block diagram as a single block.
- #nlink(<nflow_blocks:utility.switch>)[switch]: Selects between top and bottom inputs using a condition input.
- #nlink(<nflow_blocks:utility.toggleSwitch>)[toggleSwitch]: Outputs one of two configured values from state.
- #nlink(<nflow_blocks:utility.width>)[width]: Outputs the number of elements (width) of its input signal, as a scalar.


#nested[
#pagebreak(weak: true)
#include "acausal_electrical/CCC.typ"
#pagebreak(weak: true)
#include "acausal_electrical/CCV.typ"
#pagebreak(weak: true)
#include "acausal_electrical/Capacitor.typ"
#pagebreak(weak: true)
#include "acausal_electrical/Conductor.typ"
#pagebreak(weak: true)
#include "acausal_electrical/ConstantCurrent.typ"
#pagebreak(weak: true)
#include "acausal_electrical/ConstantVoltage.typ"
#pagebreak(weak: true)
#include "acausal_electrical/CurrentSensor.typ"
#pagebreak(weak: true)
#include "acausal_electrical/Diode.typ"
#pagebreak(weak: true)
#include "acausal_electrical/ExpSineCurrent.typ"
#pagebreak(weak: true)
#include "acausal_electrical/ExpSineVoltage.typ"
#pagebreak(weak: true)
#include "acausal_electrical/Ground.typ"
#pagebreak(weak: true)
#include "acausal_electrical/Gyrator.typ"
#pagebreak(weak: true)
#include "acausal_electrical/HeatingResistor.typ"
#pagebreak(weak: true)
#include "acausal_electrical/IdealDiode.typ"
#pagebreak(weak: true)
#include "acausal_electrical/IdealOpAmp.typ"
#pagebreak(weak: true)
#include "acausal_electrical/IdealSwitch.typ"
#pagebreak(weak: true)
#include "acausal_electrical/IdealTransformer.typ"
#pagebreak(weak: true)
#include "acausal_electrical/Idle.typ"
#pagebreak(weak: true)
#include "acausal_electrical/Inductor.typ"
#pagebreak(weak: true)
#include "acausal_electrical/NMOS.typ"
#pagebreak(weak: true)
#include "acausal_electrical/NPN.typ"
#pagebreak(weak: true)
#include "acausal_electrical/PMOS.typ"
#pagebreak(weak: true)
#include "acausal_electrical/PNP.typ"
#pagebreak(weak: true)
#include "acausal_electrical/PotentialSensor.typ"
#pagebreak(weak: true)
#include "acausal_electrical/RampCurrent.typ"
#pagebreak(weak: true)
#include "acausal_electrical/RampVoltage.typ"
#pagebreak(weak: true)
#include "acausal_electrical/Resistor.typ"
#pagebreak(weak: true)
#include "acausal_electrical/Short.typ"
#pagebreak(weak: true)
#include "acausal_electrical/SignalCurrent.typ"
#pagebreak(weak: true)
#include "acausal_electrical/SignalVoltage.typ"
#pagebreak(weak: true)
#include "acausal_electrical/SineCurrent.typ"
#pagebreak(weak: true)
#include "acausal_electrical/SineVoltage.typ"
#pagebreak(weak: true)
#include "acausal_electrical/TrapezoidCurrent.typ"
#pagebreak(weak: true)
#include "acausal_electrical/TrapezoidVoltage.typ"
#pagebreak(weak: true)
#include "acausal_electrical/VCC.typ"
#pagebreak(weak: true)
#include "acausal_electrical/VCV.typ"
#pagebreak(weak: true)
#include "acausal_electrical/VariableCapacitor.typ"
#pagebreak(weak: true)
#include "acausal_electrical/VariableConductor.typ"
#pagebreak(weak: true)
#include "acausal_electrical/VariableInductor.typ"
#pagebreak(weak: true)
#include "acausal_electrical/VariableResistor.typ"
#pagebreak(weak: true)
#include "acausal_electrical/VoltageSensor.typ"
#pagebreak(weak: true)
#include "acausal_electrical/ZDiode.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarAccelerationSensor.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarBody.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarDamper.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarDistance.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarDistanceSensor.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarFixed.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarForce.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarPointMass.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarPositionSensor.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarPrismatic.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarRelPositionSensor.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarRelativeTorque.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarRevolute.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarRollingWheel.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarSpring.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarSpringDamper.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarTorque.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarVelocitySensor.typ"
#pagebreak(weak: true)
#include "acausal_planar/PlanarWorld.typ"
#pagebreak(weak: true)
#include "acausal_rotational/AngleSensor.typ"
#pagebreak(weak: true)
#include "acausal_rotational/BearingFriction.typ"
#pagebreak(weak: true)
#include "acausal_rotational/Clutch.typ"
#pagebreak(weak: true)
#include "acausal_rotational/ConstantRotSpeed.typ"
#pagebreak(weak: true)
#include "acausal_rotational/ConstantTorque.typ"
#pagebreak(weak: true)
#include "acausal_rotational/EMF.typ"
#pagebreak(weak: true)
#include "acausal_rotational/ElastoBacklash.typ"
#pagebreak(weak: true)
#include "acausal_rotational/ExpSineTorque.typ"
#pagebreak(weak: true)
#include "acausal_rotational/Freewheel.typ"
#pagebreak(weak: true)
#include "acausal_rotational/IdealGear.typ"
#pagebreak(weak: true)
#include "acausal_rotational/Inertia.typ"
#pagebreak(weak: true)
#include "acausal_rotational/LinearSpeedDependentTorque.typ"
#pagebreak(weak: true)
#include "acausal_rotational/QuadraticSpeedDependentTorque.typ"
#pagebreak(weak: true)
#include "acausal_rotational/RampTorque.typ"
#pagebreak(weak: true)
#include "acausal_rotational/RelAngleSensor.typ"
#pagebreak(weak: true)
#include "acausal_rotational/RelRotSpeedSensor.typ"
#pagebreak(weak: true)
#include "acausal_rotational/RotAccelerate.typ"
#pagebreak(weak: true)
#include "acausal_rotational/RotBrake.typ"
#pagebreak(weak: true)
#include "acausal_rotational/RotDamper.typ"
#pagebreak(weak: true)
#include "acausal_rotational/RotFixed.typ"
#pagebreak(weak: true)
#include "acausal_rotational/RotSpeed.typ"
#pagebreak(weak: true)
#include "acausal_rotational/RotSpeedSensor.typ"
#pagebreak(weak: true)
#include "acausal_rotational/RotSpring.typ"
#pagebreak(weak: true)
#include "acausal_rotational/RotSpringDamper.typ"
#pagebreak(weak: true)
#include "acausal_rotational/SineTorque.typ"
#pagebreak(weak: true)
#include "acausal_rotational/Torque.typ"
#pagebreak(weak: true)
#include "acausal_rotational/Torque2.typ"
#pagebreak(weak: true)
#include "acausal_rotational/TrapezoidTorque.typ"
#pagebreak(weak: true)
#include "acausal_thermal/BodyRadiation.typ"
#pagebreak(weak: true)
#include "acausal_thermal/Convection.typ"
#pagebreak(weak: true)
#include "acausal_thermal/ConvectiveResistor.typ"
#pagebreak(weak: true)
#include "acausal_thermal/FixedHeatFlow.typ"
#pagebreak(weak: true)
#include "acausal_thermal/FixedTemperature.typ"
#pagebreak(weak: true)
#include "acausal_thermal/HeatCapacitor.typ"
#pagebreak(weak: true)
#include "acausal_thermal/HeatFlowSensor.typ"
#pagebreak(weak: true)
#include "acausal_thermal/PrescribedHeatFlow.typ"
#pagebreak(weak: true)
#include "acausal_thermal/PrescribedTemperature.typ"
#pagebreak(weak: true)
#include "acausal_thermal/RelTemperatureSensor.typ"
#pagebreak(weak: true)
#include "acausal_thermal/TemperatureSensor.typ"
#pagebreak(weak: true)
#include "acausal_thermal/ThermalConductor.typ"
#pagebreak(weak: true)
#include "acausal_thermal/ThermalResistor.typ"
#pagebreak(weak: true)
#include "acausal_translational/Accelerate.typ"
#pagebreak(weak: true)
#include "acausal_translational/Brake.typ"
#pagebreak(weak: true)
#include "acausal_translational/ConstantForce.typ"
#pagebreak(weak: true)
#include "acausal_translational/ConstantSpeed.typ"
#pagebreak(weak: true)
#include "acausal_translational/Damper.typ"
#pagebreak(weak: true)
#include "acausal_translational/ElastoGap.typ"
#pagebreak(weak: true)
#include "acausal_translational/ExpSineForce.typ"
#pagebreak(weak: true)
#include "acausal_translational/Fixed.typ"
#pagebreak(weak: true)
#include "acausal_translational/Force.typ"
#pagebreak(weak: true)
#include "acausal_translational/Force2.typ"
#pagebreak(weak: true)
#include "acausal_translational/Friction.typ"
#pagebreak(weak: true)
#include "acausal_translational/Lever.typ"
#pagebreak(weak: true)
#include "acausal_translational/LinearSpeedDependentForce.typ"
#pagebreak(weak: true)
#include "acausal_translational/Mass.typ"
#pagebreak(weak: true)
#include "acausal_translational/MassWithWeight.typ"
#pagebreak(weak: true)
#include "acausal_translational/PositionSensor.typ"
#pagebreak(weak: true)
#include "acausal_translational/Pulley.typ"
#pagebreak(weak: true)
#include "acausal_translational/QuadraticSpeedDependentForce.typ"
#pagebreak(weak: true)
#include "acausal_translational/RampForce.typ"
#pagebreak(weak: true)
#include "acausal_translational/RelPositionSensor.typ"
#pagebreak(weak: true)
#include "acausal_translational/RelSpeedSensor.typ"
#pagebreak(weak: true)
#include "acausal_translational/Rod.typ"
#pagebreak(weak: true)
#include "acausal_translational/SineForce.typ"
#pagebreak(weak: true)
#include "acausal_translational/SlidingMass.typ"
#pagebreak(weak: true)
#include "acausal_translational/Speed.typ"
#pagebreak(weak: true)
#include "acausal_translational/SpeedSensor.typ"
#pagebreak(weak: true)
#include "acausal_translational/Spring.typ"
#pagebreak(weak: true)
#include "acausal_translational/SpringDamper.typ"
#pagebreak(weak: true)
#include "acausal_translational/TranslationalEMF.typ"
#pagebreak(weak: true)
#include "acausal_translational/TrapezoidForce.typ"
#pagebreak(weak: true)
#include "continuous/constraint.typ"
#pagebreak(weak: true)
#include "continuous/delay.typ"
#pagebreak(weak: true)
#include "continuous/derivative.typ"
#pagebreak(weak: true)
#include "continuous/hpf.typ"
#pagebreak(weak: true)
#include "continuous/integrator.typ"
#pagebreak(weak: true)
#include "continuous/lpf.typ"
#pagebreak(weak: true)
#include "continuous/pid.typ"
#pagebreak(weak: true)
#include "continuous/stateSpace.typ"
#pagebreak(weak: true)
#include "continuous/tf.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardCallbackButton.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardCheckBox.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardComboBox.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardDisplay.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardEdit.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardGauge.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardHalfGauge.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardKnob.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardLamp.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardLinearGauge.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardMultiStateImage.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardPushButton.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardQuarterGauge.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardRadioButton.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardRockerSwitch.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardRotarySwitch.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardScope.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardSlider.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardSliderSwitch.typ"
#pagebreak(weak: true)
#include "dashboard/dashboardToggleSwitch.typ"
#pagebreak(weak: true)
#include "discrete/ddelay.typ"
#pagebreak(weak: true)
#include "discrete/detectChange.typ"
#pagebreak(weak: true)
#include "discrete/detectDecrease.typ"
#pagebreak(weak: true)
#include "discrete/detectIncrease.typ"
#pagebreak(weak: true)
#include "discrete/difference.typ"
#pagebreak(weak: true)
#include "discrete/dstateSpace.typ"
#pagebreak(weak: true)
#include "discrete/dtf.typ"
#pagebreak(weak: true)
#include "discrete/fallingEdge.typ"
#pagebreak(weak: true)
#include "discrete/foh.typ"
#pagebreak(weak: true)
#include "discrete/rateTransition.typ"
#pagebreak(weak: true)
#include "discrete/risingEdge.typ"
#pagebreak(weak: true)
#include "discrete/unitDelay.typ"
#pagebreak(weak: true)
#include "discrete/zoh.typ"
#pagebreak(weak: true)
#include "fmi/fmu.typ"
#pagebreak(weak: true)
#include "fmi/fmuMe.typ"
#pagebreak(weak: true)
#include "fmi/modelica.typ"
#pagebreak(weak: true)
#include "logic/and.typ"
#pagebreak(weak: true)
#include "logic/bitClear.typ"
#pagebreak(weak: true)
#include "logic/bitSet.typ"
#pagebreak(weak: true)
#include "logic/bitwiseOperator.typ"
#pagebreak(weak: true)
#include "logic/combinatorialLogic.typ"
#pagebreak(weak: true)
#include "logic/compareToConstant.typ"
#pagebreak(weak: true)
#include "logic/compareToZero.typ"
#pagebreak(weak: true)
#include "logic/extractBits.typ"
#pagebreak(weak: true)
#include "logic/if.typ"
#pagebreak(weak: true)
#include "logic/intervalTest.typ"
#pagebreak(weak: true)
#include "logic/intervalTestDynamic.typ"
#pagebreak(weak: true)
#include "logic/logicalOperator.typ"
#pagebreak(weak: true)
#include "logic/not.typ"
#pagebreak(weak: true)
#include "logic/or.typ"
#pagebreak(weak: true)
#include "logic/relationalOperator.typ"
#pagebreak(weak: true)
#include "logic/shiftArithmetic.typ"
#pagebreak(weak: true)
#include "logic/switchCase.typ"
#pagebreak(weak: true)
#include "logic/xor.typ"
#pagebreak(weak: true)
#include "lookup/directLookup.typ"
#pagebreak(weak: true)
#include "lookup/interpolationPrelookup.typ"
#pagebreak(weak: true)
#include "lookup/lookup1D.typ"
#pagebreak(weak: true)
#include "lookup/lookup2D.typ"
#pagebreak(weak: true)
#include "lookup/lookupDynamic.typ"
#pagebreak(weak: true)
#include "lookup/lookupND.typ"
#pagebreak(weak: true)
#include "lookup/prelookup.typ"
#pagebreak(weak: true)
#include "math/abs.typ"
#pagebreak(weak: true)
#include "math/atan2.typ"
#pagebreak(weak: true)
#include "math/bias.typ"
#pagebreak(weak: true)
#include "math/complexToMagnitudeAngle.typ"
#pagebreak(weak: true)
#include "math/complexToRealImag.typ"
#pagebreak(weak: true)
#include "math/conjugate.typ"
#pagebreak(weak: true)
#include "math/crossProduct.typ"
#pagebreak(weak: true)
#include "math/divide.typ"
#pagebreak(weak: true)
#include "math/dotProduct.typ"
#pagebreak(weak: true)
#include "math/gain.typ"
#pagebreak(weak: true)
#include "math/magnitudeAngleToComplex.typ"
#pagebreak(weak: true)
#include "math/mathFunction.typ"
#pagebreak(weak: true)
#include "math/matmul.typ"
#pagebreak(weak: true)
#include "math/max.typ"
#pagebreak(weak: true)
#include "math/min.typ"
#pagebreak(weak: true)
#include "math/mult.typ"
#pagebreak(weak: true)
#include "math/negate.typ"
#pagebreak(weak: true)
#include "math/polynomial.typ"
#pagebreak(weak: true)
#include "math/productOfElements.typ"
#pagebreak(weak: true)
#include "math/realImagToComplex.typ"
#pagebreak(weak: true)
#include "math/roundingFunction.typ"
#pagebreak(weak: true)
#include "math/sign.typ"
#pagebreak(weak: true)
#include "math/sqrt.typ"
#pagebreak(weak: true)
#include "math/sum.typ"
#pagebreak(weak: true)
#include "math/sumElements.typ"
#pagebreak(weak: true)
#include "math/trigFunction.typ"
#pagebreak(weak: true)
#include "math/wrapToZero.typ"
#pagebreak(weak: true)
#include "nonlinear/backlash.typ"
#pagebreak(weak: true)
#include "nonlinear/coulombViscousFriction.typ"
#pagebreak(weak: true)
#include "nonlinear/deadZone.typ"
#pagebreak(weak: true)
#include "nonlinear/hitCrossing.typ"
#pagebreak(weak: true)
#include "nonlinear/hysteresis.typ"
#pagebreak(weak: true)
#include "nonlinear/quantizer.typ"
#pagebreak(weak: true)
#include "nonlinear/rate.typ"
#pagebreak(weak: true)
#include "nonlinear/saturation.typ"
#pagebreak(weak: true)
#include "sink/display.typ"
#pagebreak(weak: true)
#include "sink/fileSink.typ"
#pagebreak(weak: true)
#include "sink/labelSink.typ"
#pagebreak(weak: true)
#include "sink/scope.typ"
#pagebreak(weak: true)
#include "sink/stopSimulation.typ"
#pagebreak(weak: true)
#include "sink/terminator.typ"
#pagebreak(weak: true)
#include "sink/toWorkspace.typ"
#pagebreak(weak: true)
#include "sink/xyScope.typ"
#pagebreak(weak: true)
#include "sink/xyzScope.typ"
#pagebreak(weak: true)
#include "source/chirp.typ"
#pagebreak(weak: true)
#include "source/clock.typ"
#pagebreak(weak: true)
#include "source/constant.typ"
#pagebreak(weak: true)
#include "source/counterFreeRunning.typ"
#pagebreak(weak: true)
#include "source/counterLimited.typ"
#pagebreak(weak: true)
#include "source/enumeratedConstant.typ"
#pagebreak(weak: true)
#include "source/fileSource.typ"
#pagebreak(weak: true)
#include "source/fromWorkspace.typ"
#pagebreak(weak: true)
#include "source/impulse.typ"
#pagebreak(weak: true)
#include "source/labelSource.typ"
#pagebreak(weak: true)
#include "source/noise.typ"
#pagebreak(weak: true)
#include "source/pulse.typ"
#pagebreak(weak: true)
#include "source/ramp.typ"
#pagebreak(weak: true)
#include "source/repeatingSequenceInterpolated.typ"
#pagebreak(weak: true)
#include "source/repeatingSequenceStair.typ"
#pagebreak(weak: true)
#include "source/signalGenerator.typ"
#pagebreak(weak: true)
#include "source/sine.typ"
#pagebreak(weak: true)
#include "source/step.typ"
#pagebreak(weak: true)
#include "userdefined/expression.typ"
#pagebreak(weak: true)
#include "userdefined/nelsonFunction.typ"
#pagebreak(weak: true)
#include "utility/assignment.typ"
#pagebreak(weak: true)
#include "utility/busAssignment.typ"
#pagebreak(weak: true)
#include "utility/busCreator.typ"
#pagebreak(weak: true)
#include "utility/busSelector.typ"
#pagebreak(weak: true)
#include "utility/comment.typ"
#pagebreak(weak: true)
#include "utility/concatenate.typ"
#pagebreak(weak: true)
#include "utility/convert.typ"
#pagebreak(weak: true)
#include "utility/dataStoreMemory.typ"
#pagebreak(weak: true)
#include "utility/dataStoreRead.typ"
#pagebreak(weak: true)
#include "utility/dataStoreWrite.typ"
#pagebreak(weak: true)
#include "utility/demux.typ"
#pagebreak(weak: true)
#include "utility/functionCallGenerator.typ"
#pagebreak(weak: true)
#include "utility/functionCallSplit.typ"
#pagebreak(weak: true)
#include "utility/initialCondition.typ"
#pagebreak(weak: true)
#include "utility/iteratorCondition.typ"
#pagebreak(weak: true)
#include "utility/iteratorNumber.typ"
#pagebreak(weak: true)
#include "utility/merge.typ"
#pagebreak(weak: true)
#include "utility/multiportSwitch.typ"
#pagebreak(weak: true)
#include "utility/mux.typ"
#pagebreak(weak: true)
#include "utility/reshape.typ"
#pagebreak(weak: true)
#include "utility/selector.typ"
#pagebreak(weak: true)
#include "utility/signalConversion.typ"
#pagebreak(weak: true)
#include "utility/subsystem.typ"
#pagebreak(weak: true)
#include "utility/switch.typ"
#pagebreak(weak: true)
#include "utility/toggleSwitch.typ"
#pagebreak(weak: true)
#include "utility/width.typ"
]
