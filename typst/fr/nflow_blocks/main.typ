#import "nelson_help.typ": *

= Blocs NFlow

Le module nflow\_blocks fournit les blocs de simulation utilisés par NFlow, avec leurs ports, paramètres, phases et comportements à l'exécution.

 NFlow est actuellement publié en version #strong[1.0.0-beta.1]; : fonctionnel et testé, mais les détails de ses interfaces et de son format de fichier peuvent encore évoluer selon les retours.

== Electrical (acausal)

Blocs acausals (physiques) a broches non dirigees, simules nativement par le moteur differentiel-algebrique.

=== Functions

- #nlink(<nflow_blocks:acausal_electrical.CCC>)[CCC]: Source de courant commandee en courant : i\_pn \= gain i\_cp (la branche de mesure cp-cn est un court-circuit).
- #nlink(<nflow_blocks:acausal_electrical.CCV>)[CCV]: Source de tension commandee en courant : v\_pn \= gain i\_cp (la branche de mesure cp-cn est un court-circuit).
- #nlink(<nflow_blocks:acausal_electrical.Capacitor>)[Capacitor]: Condensateur lineaire ideal : i \= C dv\/dt.
- #nlink(<nflow_blocks:acausal_electrical.Conductor>)[Conductor]: Conducteur lineaire ideal : i \= G (v\_p - v\_n).
- #nlink(<nflow_blocks:acausal_electrical.ConstantCurrent>)[ConstantCurrent]: Source de courant constant : le courant I circule de p vers n.
- #nlink(<nflow_blocks:acausal_electrical.ConstantVoltage>)[ConstantVoltage]: Source de tension constante : v\_p - v\_n \= V.
- #nlink(<nflow_blocks:acausal_electrical.CurrentSensor>)[CurrentSensor]: Mesure le courant de branche de p vers n (amperemetre ideal).
- #nlink(<nflow_blocks:acausal_electrical.Diode>)[Diode]: Diode exponentielle (Shockley) : i \= Is (exp(vd\/Vt) - 1).
- #nlink(<nflow_blocks:acausal_electrical.ExpSineCurrent>)[ExpSineCurrent]: Source de courant sinusoidal amorti exponentiellement.
- #nlink(<nflow_blocks:acausal_electrical.ExpSineVoltage>)[ExpSineVoltage]: Source de tension sinusoidale amortie exponentiellement.
- #nlink(<nflow_blocks:acausal_electrical.Ground>)[Ground]: Noeud de reference (0 V) pour un ilot electrique.
- #nlink(<nflow_blocks:acausal_electrical.Gyrator>)[Gyrator]: Gyrateur : i1 \= G2 v2, i2 \= -G1 v1 (transducteur across\<-\>through).
- #nlink(<nflow_blocks:acausal_electrical.HeatingResistor>)[HeatingResistor]: Resistance qui dissipe sa puissance P \= v^2 \/ R sous forme de chaleur dans un port thermique.
- #nlink(<nflow_blocks:acausal_electrical.IdealDiode>)[IdealDiode]: Diode ideale commutant a la tension de coude Vknee : bloquee en dessous (conductance de fuite Goff), passante au-dessus (resistance Ron en serie avec Vknee) ; le changement de mode est un evenement.
- #nlink(<nflow_blocks:acausal_electrical.IdealOpAmp>)[IdealOpAmp]: Amplificateur operationnel ideal (nullor) : court-circuit virtuel e\_+ \= e\_-, courant de sortie libre.
- #nlink(<nflow_blocks:acausal_electrical.IdealSwitch>)[IdealSwitch]: Interrupteur ideal : commande \> 0.5 -\> court-circuit ferme, sinon ouvert (i \= 0).
- #nlink(<nflow_blocks:acausal_electrical.IdealTransformer>)[IdealTransformer]: Transformateur ideal : v1 \= n v2, i2 \= -n i1 (structurel, sans stockage d etat).
- #nlink(<nflow_blocks:acausal_electrical.Idle>)[Idle]: Branche ouverte ideale : i \= 0 (tension de branche libre).
- #nlink(<nflow_blocks:acausal_electrical.Inductor>)[Inductor]: Inductance lineaire ideale : v \= L di\/dt.
- #nlink(<nflow_blocks:acausal_electrical.NMOS>)[NMOS]: MOSFET a canal N (loi quadratique) : broches de drain, de grille et de source.
- #nlink(<nflow_blocks:acausal_electrical.NPN>)[NPN]: Transistor bipolaire NPN (Ebers-Moll) : broches de collecteur, de base et d emetteur.
- #nlink(<nflow_blocks:acausal_electrical.PMOS>)[PMOS]: MOSFET a canal P (loi quadratique) : broches drain, grille et source.
- #nlink(<nflow_blocks:acausal_electrical.PNP>)[PNP]: Transistor bipolaire PNP (Ebers-Moll) : broches collecteur, base et emetteur.
- #nlink(<nflow_blocks:acausal_electrical.PotentialSensor>)[PotentialSensor]: Mesure le potentiel absolu du noeud.
- #nlink(<nflow_blocks:acausal_electrical.RampCurrent>)[RampCurrent]: Source de courant en rampe : i \= Slope (t - StartTime) pour t \>\= StartTime, sinon 0.
- #nlink(<nflow_blocks:acausal_electrical.RampVoltage>)[RampVoltage]: Source de tension en rampe : v \= Slope (t - StartTime) pour t \>\= StartTime, sinon 0.
- #nlink(<nflow_blocks:acausal_electrical.Resistor>)[Resistor]: Resistance lineaire ideale : i \= (v\_p - v\_n) \/ R.
- #nlink(<nflow_blocks:acausal_electrical.Short>)[Short]: Court-circuit ideal : e\_p \= e\_n (courant de branche libre).
- #nlink(<nflow_blocks:acausal_electrical.SignalCurrent>)[SignalCurrent]: Source de courant pilotee par le signal d entree.
- #nlink(<nflow_blocks:acausal_electrical.SignalVoltage>)[SignalVoltage]: Source de tension pilotee par le signal d entree.
- #nlink(<nflow_blocks:acausal_electrical.SineCurrent>)[SineCurrent]: Source de courant sinusoidale : i \= Amplitude sin(2 pi Frequency t + Phase).
- #nlink(<nflow_blocks:acausal_electrical.SineVoltage>)[SineVoltage]: Source de tension sinusoidale : v \= Amplitude sin(2 pi Frequency t + Phase).
- #nlink(<nflow_blocks:acausal_electrical.TrapezoidCurrent>)[TrapezoidCurrent]: Source de courant trapezoidale (montee \/ maintien \/ descente continus).
- #nlink(<nflow_blocks:acausal_electrical.TrapezoidVoltage>)[TrapezoidVoltage]: Source de tension trapezoidale (montee \/ maintien \/ descente continus).
- #nlink(<nflow_blocks:acausal_electrical.VCC>)[VCC]: Source de courant commandee en tension : i \= gain (v\_cp - v\_cn).
- #nlink(<nflow_blocks:acausal_electrical.VCV>)[VCV]: Source de tension commandee en tension : v\_pn \= gain (v\_cp - v\_cn).
- #nlink(<nflow_blocks:acausal_electrical.VariableCapacitor>)[VariableCapacitor]: Condensateur dont la capacite C est definie par un signal (formulation exacte en charge Q).
- #nlink(<nflow_blocks:acausal_electrical.VariableConductor>)[VariableConductor]: Conducteur dont la conductance G est definie par le signal d entree.
- #nlink(<nflow_blocks:acausal_electrical.VariableInductor>)[VariableInductor]: Bobine dont l inductance L est definie par un signal (formulation exacte en flux phi).
- #nlink(<nflow_blocks:acausal_electrical.VariableResistor>)[VariableResistor]: Resistance dont la resistance R est definie par le signal d entree.
- #nlink(<nflow_blocks:acausal_electrical.VoltageSensor>)[VoltageSensor]: Mesure la tension v\_p - v\_n (ideale, sans charge).
- #nlink(<nflow_blocks:acausal_electrical.ZDiode>)[ZDiode]: Diode Zener : conduction directe de Shockley plus claquage inverse a -Vz.

== Planar (acausal)

Blocs acausals (physiques) a broches non dirigees, simules nativement par le moteur differentiel-algebrique.

=== Functions

- #nlink(<nflow_blocks:acausal_planar.PlanarAccelerationSensor>)[PlanarAccelerationSensor]: Acceleration absolue du corps au repere a selon l axe choisi (x, y) ou l acceleration angulaire (alpha).
- #nlink(<nflow_blocks:acausal_planar.PlanarBody>)[PlanarBody]: Corps rigide : masse m, inertie centrale I ; six etats (xc, yc, phi, vx, vy, w). Les reperes nommes sont des decalages fixes au corps par rapport au centre de masse.
- #nlink(<nflow_blocks:acausal_planar.PlanarDamper>)[PlanarDamper]: Amortisseur lineaire 2D entre les points aux reperes a et b : F \= -d dv.
- #nlink(<nflow_blocks:acausal_planar.PlanarDistance>)[PlanarDistance]: Tige rigide : maintient une distance fixe L entre les points aux reperes a et b.
- #nlink(<nflow_blocks:acausal_planar.PlanarDistanceSensor>)[PlanarDistanceSensor]: Distance entre les points aux reperes a et b.
- #nlink(<nflow_blocks:acausal_planar.PlanarFixed>)[PlanarFixed]: Repere rigidement fixe au point monde (x, y).
- #nlink(<nflow_blocks:acausal_planar.PlanarForce>)[PlanarForce]: Force externe du monde (fx, fy) appliquee au point du repere a (ajoute un couple lorsqu elle est decalee du centre de masse).
- #nlink(<nflow_blocks:acausal_planar.PlanarPointMass>)[PlanarPointMass]: Masse ponctuelle (sans orientation) : quatre etats (xc, yc, vx, vy) ; attachez les liaisons a son point.
- #nlink(<nflow_blocks:acausal_planar.PlanarPositionSensor>)[PlanarPositionSensor]: Position absolue du point du repere a selon l axe choisi (x, y) ou l angle du corps (phi).
- #nlink(<nflow_blocks:acausal_planar.PlanarPrismatic>)[PlanarPrismatic]: Liaison prismatique : le repere b glisse selon l axe monde (dx, dy) passant par le repere a, rotation relative bloquee.
- #nlink(<nflow_blocks:acausal_planar.PlanarRelPositionSensor>)[PlanarRelPositionSensor]: Position relative du point du repere a moins le point du repere b selon l axe choisi (x, y).
- #nlink(<nflow_blocks:acausal_planar.PlanarRelativeTorque>)[PlanarRelativeTorque]: Couple d actionneur : +tau sur le corps au repere a, -tau sur le corps au repere b (entraine une liaison).
- #nlink(<nflow_blocks:acausal_planar.PlanarRevolute>)[PlanarRevolute]: Liaison pivot (rotoide) : les reperes a et b partagent la position, rotation relative libre.
- #nlink(<nflow_blocks:acausal_planar.PlanarRollingWheel>)[PlanarRollingWheel]: La roue au repere a roule sans glisser sur la ligne de surface fixe (px,py)+(dx,dy), en restant a la hauteur radius.
- #nlink(<nflow_blocks:acausal_planar.PlanarSpring>)[PlanarSpring]: Ressort lineaire 2D entre les points aux reperes a et b : F \= -c dr.
- #nlink(<nflow_blocks:acausal_planar.PlanarSpringDamper>)[PlanarSpringDamper]: Ressort-amortisseur lineaire 2D entre les points aux reperes a et b : F \= -(c dr + d dv).
- #nlink(<nflow_blocks:acausal_planar.PlanarTorque>)[PlanarTorque]: Couple externe tau applique au corps au repere a.
- #nlink(<nflow_blocks:acausal_planar.PlanarVelocitySensor>)[PlanarVelocitySensor]: Vitesse absolue du point du repere a selon l axe choisi (x, y) ou la vitesse angulaire (omega).
- #nlink(<nflow_blocks:acausal_planar.PlanarWorld>)[PlanarWorld]: Monde inertiel avec gravite uniforme (bas \= -y) ; fournit un repere fixe a l origine.

== Rotational (acausal)

Blocs acausals (physiques) a broches non dirigees, simules nativement par le moteur differentiel-algebrique.

=== Functions

- #nlink(<nflow_blocks:acausal_rotational.AngleSensor>)[AngleSensor]: Mesure l angle absolu d une bride.
- #nlink(<nflow_blocks:acausal_rotational.BearingFriction>)[BearingFriction]: Frottement de palier regularise (sans evenement) : tau \= -tau\_c tanh(w \/ w\_eps).
- #nlink(<nflow_blocks:acausal_rotational.Clutch>)[Clutch]: Embrayage rotatif (adherence-glissement sans evenement) : tau \= tau\_max tanh((w\_a - w\_b) \/ w\_eps) reduit le glissement vers une vitesse commune.
- #nlink(<nflow_blocks:acausal_rotational.ConstantRotSpeed>)[ConstantRotSpeed]: Mouvement impose : la bride tourne a une vitesse angulaire constante w.
- #nlink(<nflow_blocks:acausal_rotational.ConstantTorque>)[ConstantTorque]: Couple constant sur une bride.
- #nlink(<nflow_blocks:acausal_rotational.EMF>)[EMF]: Convertisseur electromecanique (moteur\/generateur) : force contre-electromotrice v \= k w, couple tau \= k i.
- #nlink(<nflow_blocks:acausal_rotational.ElastoBacklash>)[ElastoBacklash]: Jeu rotatif : couple elastique avec une zone morte de jeu total b.
- #nlink(<nflow_blocks:acausal_rotational.ExpSineTorque>)[ExpSineTorque]: Couple sinusoidal amorti exponentiellement sur une bride.
- #nlink(<nflow_blocks:acausal_rotational.Freewheel>)[Freewheel]: Embrayage unidirectionnel : accouple la bride a a b uniquement tant que a depasse b (roue libre sinon).
- #nlink(<nflow_blocks:acausal_rotational.IdealGear>)[IdealGear]: Engrenage ideal phi\_a \= ratio phi\_b (fusion structurelle de noeuds, inertie repliee).
- #nlink(<nflow_blocks:acausal_rotational.Inertia>)[Inertia]: Inertie en rotation : J dw\/dt \= tau\_net.
- #nlink(<nflow_blocks:acausal_rotational.LinearSpeedDependentTorque>)[LinearSpeedDependentTorque]: Resistance proportionnelle a la vitesse par rapport au bati : tau \= -d w.
- #nlink(<nflow_blocks:acausal_rotational.QuadraticSpeedDependentTorque>)[QuadraticSpeedDependentTorque]: Resistance quadratique (trainee) par rapport au bati : tau \= -d w |w|.
- #nlink(<nflow_blocks:acausal_rotational.RampTorque>)[RampTorque]: Couple en rampe sur une bride : tau \= Slope (t - StartTime) pour t \>\= StartTime, sinon 0.
- #nlink(<nflow_blocks:acausal_rotational.RelAngleSensor>)[RelAngleSensor]: Mesure l angle relatif phi\_a - phi\_b entre deux brides.
- #nlink(<nflow_blocks:acausal_rotational.RelRotSpeedSensor>)[RelRotSpeedSensor]: Mesure la vitesse angulaire relative w\_a - w\_b entre deux brides.
- #nlink(<nflow_blocks:acausal_rotational.RotAccelerate>)[RotAccelerate]: Mouvement impose : l acceleration angulaire de la bride suit le signal d entree.
- #nlink(<nflow_blocks:acausal_rotational.RotBrake>)[RotBrake]: Frein rotatif actionne par signal par rapport au bati : l entree fixe le couple de freinage maximal.
- #nlink(<nflow_blocks:acausal_rotational.RotDamper>)[RotDamper]: Amortisseur en rotation : tau \= d (w\_a - w\_b).
- #nlink(<nflow_blocks:acausal_rotational.RotFixed>)[RotFixed]: Bride fixee a un angle impose phi0.
- #nlink(<nflow_blocks:acausal_rotational.RotSpeed>)[RotSpeed]: Mouvement impose : la vitesse angulaire de la bride suit le signal d entree.
- #nlink(<nflow_blocks:acausal_rotational.RotSpeedSensor>)[RotSpeedSensor]: Mesure la vitesse angulaire absolue d une bride.
- #nlink(<nflow_blocks:acausal_rotational.RotSpring>)[RotSpring]: Ressort en rotation : tau \= c (phi\_a - phi\_b).
- #nlink(<nflow_blocks:acausal_rotational.RotSpringDamper>)[RotSpringDamper]: Ressort et amortisseur en rotation en parallele : tau \= c (phi\_a - phi\_b) + d (w\_a - w\_b).
- #nlink(<nflow_blocks:acausal_rotational.SineTorque>)[SineTorque]: Couple sinusoidal sur une bride : tau \= Amplitude sin(2 pi Frequency t + Phase).
- #nlink(<nflow_blocks:acausal_rotational.Torque>)[Torque]: Couple externe sur une bride, pilote par le signal d entree.
- #nlink(<nflow_blocks:acausal_rotational.Torque2>)[Torque2]: Couple egal et oppose entre deux brides : +tau sur a, -tau sur b (pilote par signal).
- #nlink(<nflow_blocks:acausal_rotational.TrapezoidTorque>)[TrapezoidTorque]: Couple trapezoidal sur une bride (montee \/ maintien \/ descente continues).

== Thermal (acausal)

Blocs acausals (physiques) a broches non dirigees, simules nativement par le moteur differentiel-algebrique.

=== Functions

- #nlink(<nflow_blocks:acausal_thermal.BodyRadiation>)[BodyRadiation]: Rayonnement (Stefan-Boltzmann) : Q\_flow \= Gr (T\_a^4 - T\_b^4).
- #nlink(<nflow_blocks:acausal_thermal.Convection>)[Convection]: Convection : Q\_flow \= Gc (T\_a - T\_b) avec un coefficient Gc pilote par signal.
- #nlink(<nflow_blocks:acausal_thermal.ConvectiveResistor>)[ConvectiveResistor]: Resistance convective : Q\_flow \= (T\_a - T\_b) \/ Rc avec un Rc pilote par signal.
- #nlink(<nflow_blocks:acausal_thermal.FixedHeatFlow>)[FixedHeatFlow]: Flux thermique constant Q dans le port connecte.
- #nlink(<nflow_blocks:acausal_thermal.FixedTemperature>)[FixedTemperature]: Frontiere a une temperature fixe T.
- #nlink(<nflow_blocks:acausal_thermal.HeatCapacitor>)[HeatCapacitor]: Capacite thermique concentree : C dT\/dt \= Q\_flow (port reference a 0).
- #nlink(<nflow_blocks:acausal_thermal.HeatFlowSensor>)[HeatFlowSensor]: Mesure le flux thermique a travers la connexion.
- #nlink(<nflow_blocks:acausal_thermal.PrescribedHeatFlow>)[PrescribedHeatFlow]: Flux thermique dans le port pilote par le signal d entree.
- #nlink(<nflow_blocks:acausal_thermal.PrescribedTemperature>)[PrescribedTemperature]: Frontiere de temperature pilotee par le signal d entree.
- #nlink(<nflow_blocks:acausal_thermal.RelTemperatureSensor>)[RelTemperatureSensor]: Mesure la difference de temperature T\_a - T\_b.
- #nlink(<nflow_blocks:acausal_thermal.TemperatureSensor>)[TemperatureSensor]: Mesure la temperature absolue d un port.
- #nlink(<nflow_blocks:acausal_thermal.ThermalConductor>)[ThermalConductor]: Conducteur thermique : Q\_flow \= G (T\_a - T\_b).
- #nlink(<nflow_blocks:acausal_thermal.ThermalResistor>)[ThermalResistor]: Resistance thermique : Q\_flow \= (T\_a - T\_b) \/ R.

== Translational (acausal)

Blocs acausals (physiques) a broches non dirigees, simules nativement par le moteur differentiel-algebrique.

=== Functions

- #nlink(<nflow_blocks:acausal_translational.Accelerate>)[Accelerate]: Mouvement impose : l acceleration de la bride suit le signal d entree.
- #nlink(<nflow_blocks:acausal_translational.Brake>)[Brake]: Frein a friction actionne par signal vers la masse : l entree fixe la force de freinage maximale.
- #nlink(<nflow_blocks:acausal_translational.ConstantForce>)[ConstantForce]: Force constante sur une bride.
- #nlink(<nflow_blocks:acausal_translational.ConstantSpeed>)[ConstantSpeed]: Mouvement impose : la bride se deplace a une vitesse constante v.
- #nlink(<nflow_blocks:acausal_translational.Damper>)[Damper]: Amortisseur lineaire en translation : F \= d (v\_a - v\_b).
- #nlink(<nflow_blocks:acausal_translational.ElastoGap>)[ElastoGap]: Ressort-amortisseur de contact unilateral : agit uniquement lorsque le jeu est ferme (s\_rel \< s\_rel0).
- #nlink(<nflow_blocks:acausal_translational.ExpSineForce>)[ExpSineForce]: Force sinusoidale amortie exponentiellement sur une bride.
- #nlink(<nflow_blocks:acausal_translational.Fixed>)[Fixed]: Bride fixee a une position imposee s0.
- #nlink(<nflow_blocks:acausal_translational.Force>)[Force]: Force externe sur une bride, pilotee par le signal d entree.
- #nlink(<nflow_blocks:acausal_translational.Force2>)[Force2]: Force egale et opposee entre deux brides : +F sur a, -F sur b (pilotee par signal).
- #nlink(<nflow_blocks:acausal_translational.Friction>)[Friction]: Frottement de Coulomb regularise (sans evenement) : F \= -Fc tanh(v \/ vEps).
- #nlink(<nflow_blocks:acausal_translational.Lever>)[Lever]: Levier (petit angle) : s\_a \= ratio s\_b, le rapport de bras (fusion structurelle).
- #nlink(<nflow_blocks:acausal_translational.LinearSpeedDependentForce>)[LinearSpeedDependentForce]: Resistance proportionnelle a la vitesse vers la masse : F \= -d v.
- #nlink(<nflow_blocks:acausal_translational.Mass>)[Mass]: Masse coulissante avec inertie : m dv\/dt \= F\_net.
- #nlink(<nflow_blocks:acausal_translational.MassWithWeight>)[MassWithWeight]: Masse coulissante sous gravite : m dv\/dt \= F\_net - m g (se developpe en Mass + ConstantForce).
- #nlink(<nflow_blocks:acausal_translational.PositionSensor>)[PositionSensor]: Mesure la position absolue d une bride.
- #nlink(<nflow_blocks:acausal_translational.Pulley>)[Pulley]: Poulie ideale : s\_a \= ratio s\_b (fusion structurelle ; ratio \= rapport des rayons).
- #nlink(<nflow_blocks:acausal_translational.QuadraticSpeedDependentForce>)[QuadraticSpeedDependentForce]: Resistance quadratique (trainee) vers la masse : F \= -d v |v|.
- #nlink(<nflow_blocks:acausal_translational.RampForce>)[RampForce]: Force en rampe sur une bride : F \= Slope (t - StartTime) pour t \>\= StartTime, sinon 0.
- #nlink(<nflow_blocks:acausal_translational.RelPositionSensor>)[RelPositionSensor]: Mesure la position relative s\_a - s\_b entre deux brides.
- #nlink(<nflow_blocks:acausal_translational.RelSpeedSensor>)[RelSpeedSensor]: Mesure la vitesse relative v\_a - v\_b entre deux brides.
- #nlink(<nflow_blocks:acausal_translational.Rod>)[Rod]: Tige rigide sans masse : s\_a \= s\_b (fusion structurelle ; ratio par defaut 1).
- #nlink(<nflow_blocks:acausal_translational.SineForce>)[SineForce]: Force sinusoidale sur une bride : F \= Amplitude sin(2 pi Frequency t + Phase).
- #nlink(<nflow_blocks:acausal_translational.SlidingMass>)[SlidingMass]: Masse coulissante de longueur L : m dv\/dt \= F\_net (L est geometrique, n affecte pas la dynamique).
- #nlink(<nflow_blocks:acausal_translational.Speed>)[Speed]: Mouvement impose : la vitesse de la bride suit le signal d entree.
- #nlink(<nflow_blocks:acausal_translational.SpeedSensor>)[SpeedSensor]: Mesure la vitesse absolue d une bride.
- #nlink(<nflow_blocks:acausal_translational.Spring>)[Spring]: Ressort lineaire en translation : F \= k (s\_a - s\_b).
- #nlink(<nflow_blocks:acausal_translational.SpringDamper>)[SpringDamper]: Ressort et amortisseur en parallele : F \= k (s\_a - s\_b) + d (v\_a - v\_b).
- #nlink(<nflow_blocks:acausal_translational.TranslationalEMF>)[TranslationalEMF]: Convertisseur electromecanique lineaire : force contre-electromotrice v \= k v\_flange, force F \= k i.
- #nlink(<nflow_blocks:acausal_translational.TrapezoidForce>)[TrapezoidForce]: Force trapezoidale sur une bride (montee \/ maintien \/ descente en rampe continue).

== Blocs continus

Blocs continus avec etat, mis a jour avec le pas de simulation.

=== Functions

- #nlink(<nflow_blocks:continuous.constraint>)[constraint]: Etat algebrique (differentiel-algebrique) resolu par le solveur DAE.
- #nlink(<nflow_blocks:continuous.delay>)[delay]: Retarde un signal avec un tampon circulaire.
- #nlink(<nflow_blocks:continuous.derivative>)[derivative]: Estime la derivee temporelle d une entree.
- #nlink(<nflow_blocks:continuous.hpf>)[hpf]: Applique un filtre passe-haut du premier ordre.
- #nlink(<nflow_blocks:continuous.integrator>)[integrator]: Integre l entree dans le temps avec bornes optionnelles.
- #nlink(<nflow_blocks:continuous.lpf>)[lpf]: Applique un filtre passe-bas du premier ordre.
- #nlink(<nflow_blocks:continuous.pid>)[pid]: Implemente un controleur PID scalaire avec limites de sortie.
- #nlink(<nflow_blocks:continuous.stateSpace>)[stateSpace]: Implemente un modele d etat continu scalaire.
- #nlink(<nflow_blocks:continuous.tf>)[tf]: Implemente une approximation de fonction de transfert continue.

== Blocs tableau de bord

Widgets interactifs de tableau de bord lies aux signaux et parametres pour observer ou piloter un modele en cours d execution.

=== Functions

- #nlink(<nflow_blocks:dashboard.dashboardCallbackButton>)[dashboardCallbackButton]: Execute un rappel et ecrit une valeur lorsqu on clique.
- #nlink(<nflow_blocks:dashboard.dashboardCheckBox>)[dashboardCheckBox]: Bascule un parametre lie entre deux valeurs via une case a cocher.
- #nlink(<nflow_blocks:dashboard.dashboardComboBox>)[dashboardComboBox]: Selectionne une valeur parmi une liste deroulante.
- #nlink(<nflow_blocks:dashboard.dashboardDisplay>)[dashboardDisplay]: Affiche la valeur courante d un signal lie sous forme de texte.
- #nlink(<nflow_blocks:dashboard.dashboardEdit>)[dashboardEdit]: Permet de saisir une valeur ecrite dans un parametre lie.
- #nlink(<nflow_blocks:dashboard.dashboardGauge>)[dashboardGauge]: Affiche un signal lie sous forme d aiguille sur un cadran circulaire.
- #nlink(<nflow_blocks:dashboard.dashboardHalfGauge>)[dashboardHalfGauge]: Affiche un signal lie sur un cadran semi-circulaire de 180 degres.
- #nlink(<nflow_blocks:dashboard.dashboardKnob>)[dashboardKnob]: Definit un parametre lie en tournant un bouton rotatif.
- #nlink(<nflow_blocks:dashboard.dashboardLamp>)[dashboardLamp]: Affiche un voyant colore qui change selon un signal lie.
- #nlink(<nflow_blocks:dashboard.dashboardLinearGauge>)[dashboardLinearGauge]: Affiche un signal lie sur une echelle lineaire droite.
- #nlink(<nflow_blocks:dashboard.dashboardMultiStateImage>)[dashboardMultiStateImage]: Affiche une image parmi plusieurs selon un signal lie.
- #nlink(<nflow_blocks:dashboard.dashboardPushButton>)[dashboardPushButton]: Ecrit une valeur dans un parametre lie lorsqu on l actionne.
- #nlink(<nflow_blocks:dashboard.dashboardQuarterGauge>)[dashboardQuarterGauge]: Affiche un signal lie sur un cadran en quart de cercle de 90 degres.
- #nlink(<nflow_blocks:dashboard.dashboardRadioButton>)[dashboardRadioButton]: Selectionne une valeur parmi un groupe de boutons radio.
- #nlink(<nflow_blocks:dashboard.dashboardRockerSwitch>)[dashboardRockerSwitch]: Bascule un parametre lie entre deux etats via un interrupteur a bascule.
- #nlink(<nflow_blocks:dashboard.dashboardRotarySwitch>)[dashboardRotarySwitch]: Selectionne un etat parmi plusieurs via un selecteur rotatif.
- #nlink(<nflow_blocks:dashboard.dashboardScope>)[dashboardScope]: Trace les signaux lies en fonction du temps de simulation.
- #nlink(<nflow_blocks:dashboard.dashboardSlider>)[dashboardSlider]: Definit un parametre lie en deplacant un curseur lineaire.
- #nlink(<nflow_blocks:dashboard.dashboardSliderSwitch>)[dashboardSliderSwitch]: Bascule un parametre lie entre deux etats via un interrupteur coulissant.
- #nlink(<nflow_blocks:dashboard.dashboardToggleSwitch>)[dashboardToggleSwitch]: Bascule un parametre lie entre deux etats via un interrupteur a levier.

== Blocs discrets

Blocs echantillonnes qui stockent des valeurs, historiques ou etats discrets.

=== Functions

- #nlink(<nflow_blocks:discrete.ddelay>)[ddelay]: Retarde un signal echantillonne d un nombre entier de pas.
- #nlink(<nflow_blocks:discrete.detectChange>)[detectChange]: Sort 1 a tout pas ou l entree differe du pas precedent.
- #nlink(<nflow_blocks:discrete.detectDecrease>)[detectDecrease]: Sort 1 quand l entree diminue strictement par rapport au pas precedent.
- #nlink(<nflow_blocks:discrete.detectIncrease>)[detectIncrease]: Sort 1 quand l entree augmente strictement par rapport au pas precedent.
- #nlink(<nflow_blocks:discrete.difference>)[difference]: Produit la difference avec l entree precedente.
- #nlink(<nflow_blocks:discrete.dstateSpace>)[dstateSpace]: Implemente un modele d etat discret scalaire.
- #nlink(<nflow_blocks:discrete.dtf>)[dtf]: Implemente une fonction de transfert discrete.
- #nlink(<nflow_blocks:discrete.fallingEdge>)[fallingEdge]: Sort 1 au pas ou l entree passe de \>\= 0 a \< 0.
- #nlink(<nflow_blocks:discrete.foh>)[foh]: Maintien d ordre un pour valeurs d entree echantillonnees.
- #nlink(<nflow_blocks:discrete.rateTransition>)[rateTransition]: Rééchantillonne un signal à son propre pas d'échantillonnage (bloqueur d'ordre zéro).
- #nlink(<nflow_blocks:discrete.risingEdge>)[risingEdge]: Sort 1 au pas ou l entree passe de \<\= 0 a \> 0.
- #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay]: Retarde l entree d une mise a jour.
- #nlink(<nflow_blocks:discrete.zoh>)[zoh]: Echantillonne une entree et conserve la derniere valeur.

== Blocs FMI et Modelica

Blocs pour importer, executer ou compiler des unites de simulation et des modeles.

=== Functions

- #nlink(<nflow_blocks:fmi.fmu>)[fmu]: Exécute une FMU de co-simulation dans un diagramme NFlow.
- #nlink(<nflow_blocks:fmi.fmuMe>)[fmuMe]: Intègre une FMU d'échange de modèle avec le solveur NFlow.
- #nlink(<nflow_blocks:fmi.modelica>)[modelica]: Compile un modèle Modelica et l'utilise comme bloc NFlow.

== Blocs logiques

Blocs booleens et de comparaison pour signaux numeriques.

=== Functions

- #nlink(<nflow_blocks:logic.and>)[and]: Produit le ET logique de deux entrees.
- #nlink(<nflow_blocks:logic.bitClear>)[bitClear]: Met a 0 le bit a la position BitIndex de l entree entiere.
- #nlink(<nflow_blocks:logic.bitSet>)[bitSet]: Met a 1 le bit a la position BitIndex de l entree entiere.
- #nlink(<nflow_blocks:logic.bitwiseOperator>)[bitwiseOperator]: AND\/OR\/XOR\/NAND\/NOR\/NOT bit-a-bit de l entree avec un BitMask constant.
- #nlink(<nflow_blocks:logic.combinatorialLogic>)[combinatorialLogic]: Recherche par table de verite : un vecteur d entree de N bits indexe une TruthTable de 2^N entrees.
- #nlink(<nflow_blocks:logic.compareToConstant>)[compareToConstant]: Compare une entree a un seuil constant.
- #nlink(<nflow_blocks:logic.compareToZero>)[compareToZero]: Compare une entree a zero.
- #nlink(<nflow_blocks:logic.extractBits>)[extractBits]: Extrait NumBitsToExtract bits a partir de StartBit, alignes a droite.
- #nlink(<nflow_blocks:logic.if>)[if]: Sélectionne une sortie d'action à partir d'une expression booléenne sur les entrées.
- #nlink(<nflow_blocks:logic.intervalTest>)[intervalTest]: Sort 1 quand l entree est dans \[LowerLimit, UpperLimit\], sinon 0.
- #nlink(<nflow_blocks:logic.intervalTestDynamic>)[intervalTestDynamic]: Comme intervalTest mais les bornes proviennent des ports d entree (lo, u, up).
- #nlink(<nflow_blocks:logic.logicalOperator>)[logicalOperator]: AND\/OR\/NAND\/NOR\/XOR\/XNOR\/NOT logique configurable des entrees.
- #nlink(<nflow_blocks:logic.not>)[not]: Produit la negation logique d une entree.
- #nlink(<nflow_blocks:logic.or>)[or]: Produit le OU logique de deux entrees.
- #nlink(<nflow_blocks:logic.relationalOperator>)[relationalOperator]: Compare deux signaux d entree.
- #nlink(<nflow_blocks:logic.shiftArithmetic>)[shiftArithmetic]: Decalage arithmetique de bits a gauche\/droite de ShiftNumber (64 bits signes).
- #nlink(<nflow_blocks:logic.switchCase>)[switchCase]: Aiguille un contrôle entier vers l'une de plusieurs sorties d'action.
- #nlink(<nflow_blocks:logic.xor>)[xor]: Produit le OU exclusif logique de deux entrees.

== Tables de consultation

Blocs de tables de consultation interpolees et directes (1-D, 2-D, n-D et directe).

=== Functions

- #nlink(<nflow_blocks:lookup.directLookup>)[directLookup]: Table de consultation directe (n-D) sans interpolation.
- #nlink(<nflow_blocks:lookup.interpolationPrelookup>)[interpolationPrelookup]: Interpole une Table statique a partir du couple \[k, f\] issu d un prelookup.
- #nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D]: Table de consultation 1-D interpolee.
- #nlink(<nflow_blocks:lookup.lookup2D>)[lookup2D]: Table de consultation 2-D interpolee.
- #nlink(<nflow_blocks:lookup.lookupDynamic>)[lookupDynamic]: Recherche 1-D interpolee dont les breakpoints et la table sont pris sur les ports d entree.
- #nlink(<nflow_blocks:lookup.lookupND>)[lookupND]: Table de consultation n-D interpolee.
- #nlink(<nflow_blocks:lookup.prelookup>)[prelookup]: Calcule l indice d intervalle k et la fraction f pour une recherche de breakpoints partagee.

== Blocs mathematiques

Operations mathematiques scalaires algebriques.

=== Functions

- #nlink(<nflow_blocks:math.abs>)[abs]: Produit la valeur absolue de son entree.
- #nlink(<nflow_blocks:math.atan2>)[atan2]: Arctangente quatre quadrants des deux entrées.
- #nlink(<nflow_blocks:math.bias>)[bias]: Ajoute un biais constant a l entree.
- #nlink(<nflow_blocks:math.complexToMagnitudeAngle>)[complexToMagnitudeAngle]: Émet le module et l’angle d’un signal complexe.
- #nlink(<nflow_blocks:math.complexToRealImag>)[complexToRealImag]: Sépare un signal complexe en sorties réelle et imaginaire.
- #nlink(<nflow_blocks:math.conjugate>)[conjugate]: Conjugué complexe du signal d’entrée.
- #nlink(<nflow_blocks:math.crossProduct>)[crossProduct]: Produit vectoriel de deux vecteurs a 3 elements.
- #nlink(<nflow_blocks:math.divide>)[divide]: Divise l entree 1 par l entree 2.
- #nlink(<nflow_blocks:math.dotProduct>)[dotProduct]: Produit scalaire de deux vecteurs d entree.
- #nlink(<nflow_blocks:math.gain>)[gain]: Multiplie l entree par un gain scalaire.
- #nlink(<nflow_blocks:math.magnitudeAngleToComplex>)[magnitudeAngleToComplex]: Construit un signal complexe à partir d’entrées module et angle.
- #nlink(<nflow_blocks:math.mathFunction>)[mathFunction]: Fonction mathématique de l’entrée.
- #nlink(<nflow_blocks:math.matmul>)[matmul]: Multiplie deux signaux matriciels ou applique une multiplication élément par élément.
- #nlink(<nflow_blocks:math.max>)[max]: Produit le maximum de deux entrees.
- #nlink(<nflow_blocks:math.min>)[min]: Produit le minimum de deux entrees.
- #nlink(<nflow_blocks:math.mult>)[mult]: Multiplie les entrees connectees.
- #nlink(<nflow_blocks:math.negate>)[negate]: Inverse le signe du signal d entree.
- #nlink(<nflow_blocks:math.polynomial>)[polynomial]: Evalue un polynome de Coefficients constants (puissance la plus haute d abord).
- #nlink(<nflow_blocks:math.productOfElements>)[productOfElements]: Produit des elements d un vecteur d entree.
- #nlink(<nflow_blocks:math.realImagToComplex>)[realImagToComplex]: Construit un signal complexe à partir d’entrées réelle et imaginaire.
- #nlink(<nflow_blocks:math.roundingFunction>)[roundingFunction]: Arrondit l’entrée à une valeur entière.
- #nlink(<nflow_blocks:math.sign>)[sign]: Signe de l’entrée (-1, 0 ou +1).
- #nlink(<nflow_blocks:math.sqrt>)[sqrt]: Famille de racines carrées de l’entrée.
- #nlink(<nflow_blocks:math.sum>)[sum]: Additionne les entrees connectees avec des signes configurables.
- #nlink(<nflow_blocks:math.sumElements>)[sumElements]: Somme des elements d un vecteur d entree.
- #nlink(<nflow_blocks:math.trigFunction>)[trigFunction]: Fonction trigonométrique de l’entrée.
- #nlink(<nflow_blocks:math.wrapToZero>)[wrapToZero]: Sort 0 quand l entree atteint Threshold, sinon la transmet telle quelle.

== Blocs non lineaires

Blocs avec saturation, seuils, hysteresis ou limites de vitesse.

=== Functions

- #nlink(<nflow_blocks:nonlinear.backlash>)[backlash]: Modele un jeu avec une bande morte autour de la sortie precedente.
- #nlink(<nflow_blocks:nonlinear.coulombViscousFriction>)[coulombViscousFriction]: Friction statique : terme visqueux Gain\*u plus terme de Coulomb signe Offset\*sign(u).
- #nlink(<nflow_blocks:nonlinear.deadZone>)[deadZone]: Supprime les valeurs dans une zone morte.
- #nlink(<nflow_blocks:nonlinear.hitCrossing>)[hitCrossing]: Sort 1 au pas ou l entree franchit HitCrossingOffset.
- #nlink(<nflow_blocks:nonlinear.hysteresis>)[hysteresis]: Relais : bascule à deux seuils avec mémoire (uHigh, uLow, yHigh, yLow).
- #nlink(<nflow_blocks:nonlinear.quantizer>)[quantizer]: Arrondit l entree au plus proche intervalle.
- #nlink(<nflow_blocks:nonlinear.rate>)[rate]: Limite les vitesses de montee et de descente du signal.
- #nlink(<nflow_blocks:nonlinear.saturation>)[saturation]: Borne l entree entre min et max.

== Blocs recepteurs

Blocs qui consomment, affichent ou nomment les signaux.

=== Functions

- #nlink(<nflow_blocks:sink.display>)[display]: Stocke la derniere valeur d entree pour affichage.
- #nlink(<nflow_blocks:sink.fileSink>)[fileSink]: Represente un recepteur de sortie fichier.
- #nlink(<nflow_blocks:sink.labelSink>)[labelSink]: Nomme un signal d entree pour le routage par etiquette.
- #nlink(<nflow_blocks:sink.scope>)[scope]: Stocke des series temporelles pour affichage.
- #nlink(<nflow_blocks:sink.stopSimulation>)[stopSimulation]: Termine le run a la fin du pas ou son entree devient non nulle pour la premiere fois.
- #nlink(<nflow_blocks:sink.terminator>)[terminator]: Consomme un signal intentionnellement inutilise.
- #nlink(<nflow_blocks:sink.toWorkspace>)[toWorkspace]: Écrit le signal d'entrée dans une variable du workspace Nelson.
- #nlink(<nflow_blocks:sink.xyScope>)[xyScope]: Stocke des paires X\/Y pour affichage.
- #nlink(<nflow_blocks:sink.xyzScope>)[xyzScope]: Stocke des echantillons X\/Y\/Z pour affichage 3D.

== Blocs sources

Blocs qui generent des signaux depuis des parametres, le temps, des etiquettes ou des fichiers.

=== Functions

- #nlink(<nflow_blocks:source.chirp>)[chirp]: Genere un chirp sinusoidal de f0 a f1.
- #nlink(<nflow_blocks:source.clock>)[clock]: Produit le temps courant de simulation.
- #nlink(<nflow_blocks:source.constant>)[constant]: Produit une valeur numerique constante.
- #nlink(<nflow_blocks:source.counterFreeRunning>)[counterFreeRunning]: Compteur incremental libre, replie modulo 2^NumBits.
- #nlink(<nflow_blocks:source.counterLimited>)[counterLimited]: Compteur incremental qui revient a 0 des qu il atteint UpperLimit.
- #nlink(<nflow_blocks:source.enumeratedConstant>)[enumeratedConstant]: Sort une valeur d enumeration fixe (EnumClass la documente, Value est le nombre).
- #nlink(<nflow_blocks:source.fileSource>)[fileSource]: Produit des valeurs depuis les tableaux precharges times et values.
- #nlink(<nflow_blocks:source.fromWorkspace>)[fromWorkspace]: Lit un signal depuis une variable du workspace Nelson.
- #nlink(<nflow_blocks:source.impulse>)[impulse]: Produit une impulsion a un instant configure.
- #nlink(<nflow_blocks:source.labelSource>)[labelSource]: Lit un signal depuis un labelSink correspondant.
- #nlink(<nflow_blocks:source.noise>)[noise]: Genere un bruit pseudo-aleatoire deterministe.
- #nlink(<nflow_blocks:source.pulse>)[pulse]: Générateur d'impulsions : train d'impulsions périodique (Amplitude, Period, Width, StartTime, Offset).
- #nlink(<nflow_blocks:source.ramp>)[ramp]: Genere une rampe commencant a start.
- #nlink(<nflow_blocks:source.repeatingSequenceInterpolated>)[repeatingSequenceInterpolated]: Source periodique lineaire par morceaux interpolant une table (TimeValues, OutValues).
- #nlink(<nflow_blocks:source.repeatingSequenceStair>)[repeatingSequenceStair]: Escalier periodique : une entree de OutValues par echantillon, en boucle.
- #nlink(<nflow_blocks:source.signalGenerator>)[signalGenerator]: Source periodique configurable : sinus, carre ou dent de scie (Amplitude, Frequency).
- #nlink(<nflow_blocks:source.sine>)[sine]: Genere un signal sinusoidal.
- #nlink(<nflow_blocks:source.step>)[step]: Genere un echelon unitaire a stepTime.

== Blocs fonctions utilisateur

Blocs évaluant des expressions ou des fonctions Nelson fournies par l'utilisateur.

=== Functions

- #nlink(<nflow_blocks:userdefined.expression>)[expression]: Évalue une expression mathématique restreinte de u, en simulation et dans le code généré.
- #nlink(<nflow_blocks:userdefined.nelsonFunction>)[nelsonFunction]: Évalue une fonction Nelson à chaque pas de simulation.

== Blocs utilitaires

Blocs de routage, regroupement, annotation et commutation interactive.

=== Functions

- #nlink(<nflow_blocks:utility.assignment>)[assignment]: Ecrit des elements dans un signal : out \= base avec out\[Indices\] \= valeurs.
- #nlink(<nflow_blocks:utility.busAssignment>)[busAssignment]: Remplace des membres choisis d un bus et laisse passer le reste inchange.
- #nlink(<nflow_blocks:utility.busCreator>)[busCreator]: Regroupe des signaux hétérogènes (ou des bus imbriqués) en un bus.
- #nlink(<nflow_blocks:utility.busSelector>)[busSelector]: Extrait des membres d’un bus par chemin.
- #nlink(<nflow_blocks:utility.comment>)[comment]: Ajoute un texte d annotation non execute au diagramme.
- #nlink(<nflow_blocks:utility.concatenate>)[concatenate]: Concatène les signaux d'entrée selon une dimension sélectionnée.
- #nlink(<nflow_blocks:utility.convert>)[convert]: Convertit un signal vers un type de données sélectionné.
- #nlink(<nflow_blocks:utility.dataStoreMemory>)[dataStoreMemory]: Declare une memoire scalaire nommee partagee dans tout le modele (valeur initiale).
- #nlink(<nflow_blocks:utility.dataStoreRead>)[dataStoreRead]: Sort la valeur de la memoire de donnees nommee.
- #nlink(<nflow_blocks:utility.dataStoreWrite>)[dataStoreWrite]: Ecrit son entree dans la memoire de donnees nommee.
- #nlink(<nflow_blocks:utility.demux>)[demux]: Route une entree vers plusieurs ports de sortie.
- #nlink(<nflow_blocks:utility.functionCallGenerator>)[functionCallGenerator]: Pilote un sous-système function-call un nombre fixe de fois par pas.
- #nlink(<nflow_blocks:utility.functionCallSplit>)[functionCallSplit]: Distribue un function-call à plusieurs callees, dans l'ordre.
- #nlink(<nflow_blocks:utility.initialCondition>)[initialCondition]: Force la sortie a InitialValue au premier pas, puis transmet l entree.
- #nlink(<nflow_blocks:utility.iteratorCondition>)[iteratorCondition]: porte le prédicat de continuation d'un sous-système While Iterator
- #nlink(<nflow_blocks:utility.iteratorNumber>)[iteratorNumber]: fournit l'indice d'itération courant dans un sous-système For\/While Iterator
- #nlink(<nflow_blocks:utility.merge>)[merge]: Recombine les sorties de sous-systèmes conditionnels mutuellement exclusifs.
- #nlink(<nflow_blocks:utility.multiportSwitch>)[multiportSwitch]: Route une des entrees de donnees vers la sortie, selon une entree de controle.
- #nlink(<nflow_blocks:utility.mux>)[mux]: Regroupe plusieurs routes d entree vers une route de sortie.
- #nlink(<nflow_blocks:utility.reshape>)[reshape]: Modifie les dimensions d'un signal sans changer ses valeurs.
- #nlink(<nflow_blocks:utility.selector>)[selector]: Sélectionne des éléments du signal d'entrée avec des indices commençant à un.
- #nlink(<nflow_blocks:utility.signalConversion>)[signalConversion]: Passe-plat qui recopie son entree vers sa sortie inchangee (point de conversion).
- #nlink(<nflow_blocks:utility.subsystem>)[subsystem]: Execute un diagramme imbrique comme un seul bloc.
- #nlink(<nflow_blocks:utility.switch>)[switch]: Selectionne l entree haute ou basse avec une entree de condition.
- #nlink(<nflow_blocks:utility.toggleSwitch>)[toggleSwitch]: Produit l une de deux valeurs configurees depuis state.
- #nlink(<nflow_blocks:utility.width>)[width]: Sort le nombre d elements (largeur) de son signal d entree, sous forme scalaire.


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
