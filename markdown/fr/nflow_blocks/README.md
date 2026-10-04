# Blocs NFlow

Le module nflow_blocks fournit les blocs de simulation utilisés par NFlow, avec leurs ports, paramètres, phases et comportements à l'exécution.

NFlow est actuellement publié en version **1.0.0-beta.1** : fonctionnel et testé, mais les détails de ses interfaces et de son format de fichier peuvent encore évoluer selon les retours.

## Electrical (acausal)

Blocs acausals (physiques) a broches non dirigees, simules nativement par le moteur differentiel-algebrique.

### Functions

- [CCC](acausal_electrical/CCC.md) - Source de courant commandee en courant : i_pn = gain i_cp (la branche de mesure cp-cn est un court-circuit).
- [CCV](acausal_electrical/CCV.md) - Source de tension commandee en courant : v_pn = gain i_cp (la branche de mesure cp-cn est un court-circuit).
- [Capacitor](acausal_electrical/Capacitor.md) - Condensateur lineaire ideal : i = C dv/dt.
- [Conductor](acausal_electrical/Conductor.md) - Conducteur lineaire ideal : i = G (v_p - v_n).
- [ConstantCurrent](acausal_electrical/ConstantCurrent.md) - Source de courant constant : le courant I circule de p vers n.
- [ConstantVoltage](acausal_electrical/ConstantVoltage.md) - Source de tension constante : v_p - v_n = V.
- [CurrentSensor](acausal_electrical/CurrentSensor.md) - Mesure le courant de branche de p vers n (amperemetre ideal).
- [Diode](acausal_electrical/Diode.md) - Diode exponentielle (Shockley) : i = Is (exp(vd/Vt) - 1).
- [ExpSineCurrent](acausal_electrical/ExpSineCurrent.md) - Source de courant sinusoidal amorti exponentiellement.
- [ExpSineVoltage](acausal_electrical/ExpSineVoltage.md) - Source de tension sinusoidale amortie exponentiellement.
- [Ground](acausal_electrical/Ground.md) - Noeud de reference (0 V) pour un ilot electrique.
- [Gyrator](acausal_electrical/Gyrator.md) - Gyrateur : i1 = G2 v2, i2 = -G1 v1 (transducteur across<->through).
- [HeatingResistor](acausal_electrical/HeatingResistor.md) - Resistance qui dissipe sa puissance P = v^2 / R sous forme de chaleur dans un port thermique.
- [IdealDiode](acausal_electrical/IdealDiode.md) - Diode ideale commutant a la tension de coude Vknee : bloquee en dessous (conductance de fuite Goff), passante au-dessus (resistance Ron en serie avec Vknee) ; le changement de mode est un evenement.
- [IdealOpAmp](acausal_electrical/IdealOpAmp.md) - Amplificateur operationnel ideal (nullor) : court-circuit virtuel e*+ = e*-, courant de sortie libre.
- [IdealSwitch](acausal_electrical/IdealSwitch.md) - Interrupteur ideal : commande > 0.5 -> court-circuit ferme, sinon ouvert (i = 0).
- [IdealTransformer](acausal_electrical/IdealTransformer.md) - Transformateur ideal : v1 = n v2, i2 = -n i1 (structurel, sans stockage d etat).
- [Idle](acausal_electrical/Idle.md) - Branche ouverte ideale : i = 0 (tension de branche libre).
- [Inductor](acausal_electrical/Inductor.md) - Inductance lineaire ideale : v = L di/dt.
- [NMOS](acausal_electrical/NMOS.md) - MOSFET a canal N (loi quadratique) : broches de drain, de grille et de source.
- [NPN](acausal_electrical/NPN.md) - Transistor bipolaire NPN (Ebers-Moll) : broches de collecteur, de base et d emetteur.
- [PMOS](acausal_electrical/PMOS.md) - MOSFET a canal P (loi quadratique) : broches drain, grille et source.
- [PNP](acausal_electrical/PNP.md) - Transistor bipolaire PNP (Ebers-Moll) : broches collecteur, base et emetteur.
- [PotentialSensor](acausal_electrical/PotentialSensor.md) - Mesure le potentiel absolu du noeud.
- [RampCurrent](acausal_electrical/RampCurrent.md) - Source de courant en rampe : i = Slope (t - StartTime) pour t >= StartTime, sinon 0.
- [RampVoltage](acausal_electrical/RampVoltage.md) - Source de tension en rampe : v = Slope (t - StartTime) pour t >= StartTime, sinon 0.
- [Resistor](acausal_electrical/Resistor.md) - Resistance lineaire ideale : i = (v_p - v_n) / R.
- [Short](acausal_electrical/Short.md) - Court-circuit ideal : e_p = e_n (courant de branche libre).
- [SignalCurrent](acausal_electrical/SignalCurrent.md) - Source de courant pilotee par le signal d entree.
- [SignalVoltage](acausal_electrical/SignalVoltage.md) - Source de tension pilotee par le signal d entree.
- [SineCurrent](acausal_electrical/SineCurrent.md) - Source de courant sinusoidale : i = Amplitude sin(2 pi Frequency t + Phase).
- [SineVoltage](acausal_electrical/SineVoltage.md) - Source de tension sinusoidale : v = Amplitude sin(2 pi Frequency t + Phase).
- [TrapezoidCurrent](acausal_electrical/TrapezoidCurrent.md) - Source de courant trapezoidale (montee / maintien / descente continus).
- [TrapezoidVoltage](acausal_electrical/TrapezoidVoltage.md) - Source de tension trapezoidale (montee / maintien / descente continus).
- [VCC](acausal_electrical/VCC.md) - Source de courant commandee en tension : i = gain (v_cp - v_cn).
- [VCV](acausal_electrical/VCV.md) - Source de tension commandee en tension : v_pn = gain (v_cp - v_cn).
- [VariableCapacitor](acausal_electrical/VariableCapacitor.md) - Condensateur dont la capacite C est definie par un signal (formulation exacte en charge Q).
- [VariableConductor](acausal_electrical/VariableConductor.md) - Conducteur dont la conductance G est definie par le signal d entree.
- [VariableInductor](acausal_electrical/VariableInductor.md) - Bobine dont l inductance L est definie par un signal (formulation exacte en flux phi).
- [VariableResistor](acausal_electrical/VariableResistor.md) - Resistance dont la resistance R est definie par le signal d entree.
- [VoltageSensor](acausal_electrical/VoltageSensor.md) - Mesure la tension v_p - v_n (ideale, sans charge).
- [ZDiode](acausal_electrical/ZDiode.md) - Diode Zener : conduction directe de Shockley plus claquage inverse a -Vz.

## Planar (acausal)

Blocs acausals (physiques) a broches non dirigees, simules nativement par le moteur differentiel-algebrique.

### Functions

- [PlanarAccelerationSensor](acausal_planar/PlanarAccelerationSensor.md) - Acceleration absolue du corps au repere a selon l axe choisi (x, y) ou l acceleration angulaire (alpha).
- [PlanarBody](acausal_planar/PlanarBody.md) - Corps rigide : masse m, inertie centrale I ; six etats (xc, yc, phi, vx, vy, w). Les reperes nommes sont des decalages fixes au corps par rapport au centre de masse.
- [PlanarDamper](acausal_planar/PlanarDamper.md) - Amortisseur lineaire 2D entre les points aux reperes a et b : F = -d dv.
- [PlanarDistance](acausal_planar/PlanarDistance.md) - Tige rigide : maintient une distance fixe L entre les points aux reperes a et b.
- [PlanarDistanceSensor](acausal_planar/PlanarDistanceSensor.md) - Distance entre les points aux reperes a et b.
- [PlanarFixed](acausal_planar/PlanarFixed.md) - Repere rigidement fixe au point monde (x, y).
- [PlanarForce](acausal_planar/PlanarForce.md) - Force externe du monde (fx, fy) appliquee au point du repere a (ajoute un couple lorsqu elle est decalee du centre de masse).
- [PlanarPointMass](acausal_planar/PlanarPointMass.md) - Masse ponctuelle (sans orientation) : quatre etats (xc, yc, vx, vy) ; attachez les liaisons a son point.
- [PlanarPositionSensor](acausal_planar/PlanarPositionSensor.md) - Position absolue du point du repere a selon l axe choisi (x, y) ou l angle du corps (phi).
- [PlanarPrismatic](acausal_planar/PlanarPrismatic.md) - Liaison prismatique : le repere b glisse selon l axe monde (dx, dy) passant par le repere a, rotation relative bloquee.
- [PlanarRelPositionSensor](acausal_planar/PlanarRelPositionSensor.md) - Position relative du point du repere a moins le point du repere b selon l axe choisi (x, y).
- [PlanarRelativeTorque](acausal_planar/PlanarRelativeTorque.md) - Couple d actionneur : +tau sur le corps au repere a, -tau sur le corps au repere b (entraine une liaison).
- [PlanarRevolute](acausal_planar/PlanarRevolute.md) - Liaison pivot (rotoide) : les reperes a et b partagent la position, rotation relative libre.
- [PlanarRollingWheel](acausal_planar/PlanarRollingWheel.md) - La roue au repere a roule sans glisser sur la ligne de surface fixe (px,py)+(dx,dy), en restant a la hauteur radius.
- [PlanarSpring](acausal_planar/PlanarSpring.md) - Ressort lineaire 2D entre les points aux reperes a et b : F = -c dr.
- [PlanarSpringDamper](acausal_planar/PlanarSpringDamper.md) - Ressort-amortisseur lineaire 2D entre les points aux reperes a et b : F = -(c dr + d dv).
- [PlanarTorque](acausal_planar/PlanarTorque.md) - Couple externe tau applique au corps au repere a.
- [PlanarVelocitySensor](acausal_planar/PlanarVelocitySensor.md) - Vitesse absolue du point du repere a selon l axe choisi (x, y) ou la vitesse angulaire (omega).
- [PlanarWorld](acausal_planar/PlanarWorld.md) - Monde inertiel avec gravite uniforme (bas = -y) ; fournit un repere fixe a l origine.

## Rotational (acausal)

Blocs acausals (physiques) a broches non dirigees, simules nativement par le moteur differentiel-algebrique.

### Functions

- [AngleSensor](acausal_rotational/AngleSensor.md) - Mesure l angle absolu d une bride.
- [BearingFriction](acausal_rotational/BearingFriction.md) - Frottement de palier regularise (sans evenement) : tau = -tau_c tanh(w / w_eps).
- [Clutch](acausal_rotational/Clutch.md) - Embrayage rotatif (adherence-glissement sans evenement) : tau = tau_max tanh((w_a - w_b) / w_eps) reduit le glissement vers une vitesse commune.
- [ConstantRotSpeed](acausal_rotational/ConstantRotSpeed.md) - Mouvement impose : la bride tourne a une vitesse angulaire constante w.
- [ConstantTorque](acausal_rotational/ConstantTorque.md) - Couple constant sur une bride.
- [EMF](acausal_rotational/EMF.md) - Convertisseur electromecanique (moteur/generateur) : force contre-electromotrice v = k w, couple tau = k i.
- [ElastoBacklash](acausal_rotational/ElastoBacklash.md) - Jeu rotatif : couple elastique avec une zone morte de jeu total b.
- [ExpSineTorque](acausal_rotational/ExpSineTorque.md) - Couple sinusoidal amorti exponentiellement sur une bride.
- [Freewheel](acausal_rotational/Freewheel.md) - Embrayage unidirectionnel : accouple la bride a a b uniquement tant que a depasse b (roue libre sinon).
- [IdealGear](acausal_rotational/IdealGear.md) - Engrenage ideal phi_a = ratio phi_b (fusion structurelle de noeuds, inertie repliee).
- [Inertia](acausal_rotational/Inertia.md) - Inertie en rotation : J dw/dt = tau_net.
- [LinearSpeedDependentTorque](acausal_rotational/LinearSpeedDependentTorque.md) - Resistance proportionnelle a la vitesse par rapport au bati : tau = -d w.
- [QuadraticSpeedDependentTorque](acausal_rotational/QuadraticSpeedDependentTorque.md) - Resistance quadratique (trainee) par rapport au bati : tau = -d w |w|.
- [RampTorque](acausal_rotational/RampTorque.md) - Couple en rampe sur une bride : tau = Slope (t - StartTime) pour t >= StartTime, sinon 0.
- [RelAngleSensor](acausal_rotational/RelAngleSensor.md) - Mesure l angle relatif phi_a - phi_b entre deux brides.
- [RelRotSpeedSensor](acausal_rotational/RelRotSpeedSensor.md) - Mesure la vitesse angulaire relative w_a - w_b entre deux brides.
- [RotAccelerate](acausal_rotational/RotAccelerate.md) - Mouvement impose : l acceleration angulaire de la bride suit le signal d entree.
- [RotBrake](acausal_rotational/RotBrake.md) - Frein rotatif actionne par signal par rapport au bati : l entree fixe le couple de freinage maximal.
- [RotDamper](acausal_rotational/RotDamper.md) - Amortisseur en rotation : tau = d (w_a - w_b).
- [RotFixed](acausal_rotational/RotFixed.md) - Bride fixee a un angle impose phi0.
- [RotSpeed](acausal_rotational/RotSpeed.md) - Mouvement impose : la vitesse angulaire de la bride suit le signal d entree.
- [RotSpeedSensor](acausal_rotational/RotSpeedSensor.md) - Mesure la vitesse angulaire absolue d une bride.
- [RotSpring](acausal_rotational/RotSpring.md) - Ressort en rotation : tau = c (phi_a - phi_b).
- [RotSpringDamper](acausal_rotational/RotSpringDamper.md) - Ressort et amortisseur en rotation en parallele : tau = c (phi_a - phi_b) + d (w_a - w_b).
- [SineTorque](acausal_rotational/SineTorque.md) - Couple sinusoidal sur une bride : tau = Amplitude sin(2 pi Frequency t + Phase).
- [Torque](acausal_rotational/Torque.md) - Couple externe sur une bride, pilote par le signal d entree.
- [Torque2](acausal_rotational/Torque2.md) - Couple egal et oppose entre deux brides : +tau sur a, -tau sur b (pilote par signal).
- [TrapezoidTorque](acausal_rotational/TrapezoidTorque.md) - Couple trapezoidal sur une bride (montee / maintien / descente continues).

## Thermal (acausal)

Blocs acausals (physiques) a broches non dirigees, simules nativement par le moteur differentiel-algebrique.

### Functions

- [BodyRadiation](acausal_thermal/BodyRadiation.md) - Rayonnement (Stefan-Boltzmann) : Q_flow = Gr (T_a^4 - T_b^4).
- [Convection](acausal_thermal/Convection.md) - Convection : Q_flow = Gc (T_a - T_b) avec un coefficient Gc pilote par signal.
- [ConvectiveResistor](acausal_thermal/ConvectiveResistor.md) - Resistance convective : Q_flow = (T_a - T_b) / Rc avec un Rc pilote par signal.
- [FixedHeatFlow](acausal_thermal/FixedHeatFlow.md) - Flux thermique constant Q dans le port connecte.
- [FixedTemperature](acausal_thermal/FixedTemperature.md) - Frontiere a une temperature fixe T.
- [HeatCapacitor](acausal_thermal/HeatCapacitor.md) - Capacite thermique concentree : C dT/dt = Q_flow (port reference a 0).
- [HeatFlowSensor](acausal_thermal/HeatFlowSensor.md) - Mesure le flux thermique a travers la connexion.
- [PrescribedHeatFlow](acausal_thermal/PrescribedHeatFlow.md) - Flux thermique dans le port pilote par le signal d entree.
- [PrescribedTemperature](acausal_thermal/PrescribedTemperature.md) - Frontiere de temperature pilotee par le signal d entree.
- [RelTemperatureSensor](acausal_thermal/RelTemperatureSensor.md) - Mesure la difference de temperature T_a - T_b.
- [TemperatureSensor](acausal_thermal/TemperatureSensor.md) - Mesure la temperature absolue d un port.
- [ThermalConductor](acausal_thermal/ThermalConductor.md) - Conducteur thermique : Q_flow = G (T_a - T_b).
- [ThermalResistor](acausal_thermal/ThermalResistor.md) - Resistance thermique : Q_flow = (T_a - T_b) / R.

## Translational (acausal)

Blocs acausals (physiques) a broches non dirigees, simules nativement par le moteur differentiel-algebrique.

### Functions

- [Accelerate](acausal_translational/Accelerate.md) - Mouvement impose : l acceleration de la bride suit le signal d entree.
- [Brake](acausal_translational/Brake.md) - Frein a friction actionne par signal vers la masse : l entree fixe la force de freinage maximale.
- [ConstantForce](acausal_translational/ConstantForce.md) - Force constante sur une bride.
- [ConstantSpeed](acausal_translational/ConstantSpeed.md) - Mouvement impose : la bride se deplace a une vitesse constante v.
- [Damper](acausal_translational/Damper.md) - Amortisseur lineaire en translation : F = d (v_a - v_b).
- [ElastoGap](acausal_translational/ElastoGap.md) - Ressort-amortisseur de contact unilateral : agit uniquement lorsque le jeu est ferme (s_rel < s_rel0).
- [ExpSineForce](acausal_translational/ExpSineForce.md) - Force sinusoidale amortie exponentiellement sur une bride.
- [Fixed](acausal_translational/Fixed.md) - Bride fixee a une position imposee s0.
- [Force](acausal_translational/Force.md) - Force externe sur une bride, pilotee par le signal d entree.
- [Force2](acausal_translational/Force2.md) - Force egale et opposee entre deux brides : +F sur a, -F sur b (pilotee par signal).
- [Friction](acausal_translational/Friction.md) - Frottement de Coulomb regularise (sans evenement) : F = -Fc tanh(v / vEps).
- [Lever](acausal_translational/Lever.md) - Levier (petit angle) : s_a = ratio s_b, le rapport de bras (fusion structurelle).
- [LinearSpeedDependentForce](acausal_translational/LinearSpeedDependentForce.md) - Resistance proportionnelle a la vitesse vers la masse : F = -d v.
- [Mass](acausal_translational/Mass.md) - Masse coulissante avec inertie : m dv/dt = F_net.
- [MassWithWeight](acausal_translational/MassWithWeight.md) - Masse coulissante sous gravite : m dv/dt = F_net - m g (se developpe en Mass + ConstantForce).
- [PositionSensor](acausal_translational/PositionSensor.md) - Mesure la position absolue d une bride.
- [Pulley](acausal_translational/Pulley.md) - Poulie ideale : s_a = ratio s_b (fusion structurelle ; ratio = rapport des rayons).
- [QuadraticSpeedDependentForce](acausal_translational/QuadraticSpeedDependentForce.md) - Resistance quadratique (trainee) vers la masse : F = -d v |v|.
- [RampForce](acausal_translational/RampForce.md) - Force en rampe sur une bride : F = Slope (t - StartTime) pour t >= StartTime, sinon 0.
- [RelPositionSensor](acausal_translational/RelPositionSensor.md) - Mesure la position relative s_a - s_b entre deux brides.
- [RelSpeedSensor](acausal_translational/RelSpeedSensor.md) - Mesure la vitesse relative v_a - v_b entre deux brides.
- [Rod](acausal_translational/Rod.md) - Tige rigide sans masse : s_a = s_b (fusion structurelle ; ratio par defaut 1).
- [SineForce](acausal_translational/SineForce.md) - Force sinusoidale sur une bride : F = Amplitude sin(2 pi Frequency t + Phase).
- [SlidingMass](acausal_translational/SlidingMass.md) - Masse coulissante de longueur L : m dv/dt = F_net (L est geometrique, n affecte pas la dynamique).
- [Speed](acausal_translational/Speed.md) - Mouvement impose : la vitesse de la bride suit le signal d entree.
- [SpeedSensor](acausal_translational/SpeedSensor.md) - Mesure la vitesse absolue d une bride.
- [Spring](acausal_translational/Spring.md) - Ressort lineaire en translation : F = k (s_a - s_b).
- [SpringDamper](acausal_translational/SpringDamper.md) - Ressort et amortisseur en parallele : F = k (s_a - s_b) + d (v_a - v_b).
- [TranslationalEMF](acausal_translational/TranslationalEMF.md) - Convertisseur electromecanique lineaire : force contre-electromotrice v = k v_flange, force F = k i.
- [TrapezoidForce](acausal_translational/TrapezoidForce.md) - Force trapezoidale sur une bride (montee / maintien / descente en rampe continue).

## Blocs continus

Blocs continus avec etat, mis a jour avec le pas de simulation.

### Functions

- [constraint](continuous/constraint.md) - Etat algebrique (differentiel-algebrique) resolu par le solveur DAE.
- [delay](continuous/delay.md) - Retarde un signal avec un tampon circulaire.
- [derivative](continuous/derivative.md) - Estime la derivee temporelle d une entree.
- [hpf](continuous/hpf.md) - Applique un filtre passe-haut du premier ordre.
- [integrator](continuous/integrator.md) - Integre l entree dans le temps avec bornes optionnelles.
- [lpf](continuous/lpf.md) - Applique un filtre passe-bas du premier ordre.
- [pid](continuous/pid.md) - Implemente un controleur PID scalaire avec limites de sortie.
- [stateSpace](continuous/stateSpace.md) - Implemente un modele d etat continu scalaire.
- [tf](continuous/tf.md) - Implemente une approximation de fonction de transfert continue.

## Blocs tableau de bord

Widgets interactifs de tableau de bord lies aux signaux et parametres pour observer ou piloter un modele en cours d execution.

### Functions

- [dashboardCallbackButton](dashboard/dashboardCallbackButton.md) - Execute un rappel et ecrit une valeur lorsqu on clique.
- [dashboardCheckBox](dashboard/dashboardCheckBox.md) - Bascule un parametre lie entre deux valeurs via une case a cocher.
- [dashboardComboBox](dashboard/dashboardComboBox.md) - Selectionne une valeur parmi une liste deroulante.
- [dashboardDisplay](dashboard/dashboardDisplay.md) - Affiche la valeur courante d un signal lie sous forme de texte.
- [dashboardEdit](dashboard/dashboardEdit.md) - Permet de saisir une valeur ecrite dans un parametre lie.
- [dashboardGauge](dashboard/dashboardGauge.md) - Affiche un signal lie sous forme d aiguille sur un cadran circulaire.
- [dashboardHalfGauge](dashboard/dashboardHalfGauge.md) - Affiche un signal lie sur un cadran semi-circulaire de 180 degres.
- [dashboardKnob](dashboard/dashboardKnob.md) - Definit un parametre lie en tournant un bouton rotatif.
- [dashboardLamp](dashboard/dashboardLamp.md) - Affiche un voyant colore qui change selon un signal lie.
- [dashboardLinearGauge](dashboard/dashboardLinearGauge.md) - Affiche un signal lie sur une echelle lineaire droite.
- [dashboardMultiStateImage](dashboard/dashboardMultiStateImage.md) - Affiche une image parmi plusieurs selon un signal lie.
- [dashboardPushButton](dashboard/dashboardPushButton.md) - Ecrit une valeur dans un parametre lie lorsqu on l actionne.
- [dashboardQuarterGauge](dashboard/dashboardQuarterGauge.md) - Affiche un signal lie sur un cadran en quart de cercle de 90 degres.
- [dashboardRadioButton](dashboard/dashboardRadioButton.md) - Selectionne une valeur parmi un groupe de boutons radio.
- [dashboardRockerSwitch](dashboard/dashboardRockerSwitch.md) - Bascule un parametre lie entre deux etats via un interrupteur a bascule.
- [dashboardRotarySwitch](dashboard/dashboardRotarySwitch.md) - Selectionne un etat parmi plusieurs via un selecteur rotatif.
- [dashboardScope](dashboard/dashboardScope.md) - Trace les signaux lies en fonction du temps de simulation.
- [dashboardSlider](dashboard/dashboardSlider.md) - Definit un parametre lie en deplacant un curseur lineaire.
- [dashboardSliderSwitch](dashboard/dashboardSliderSwitch.md) - Bascule un parametre lie entre deux etats via un interrupteur coulissant.
- [dashboardToggleSwitch](dashboard/dashboardToggleSwitch.md) - Bascule un parametre lie entre deux etats via un interrupteur a levier.

## Blocs discrets

Blocs echantillonnes qui stockent des valeurs, historiques ou etats discrets.

### Functions

- [ddelay](discrete/ddelay.md) - Retarde un signal echantillonne d un nombre entier de pas.
- [detectChange](discrete/detectChange.md) - Sort 1 a tout pas ou l entree differe du pas precedent.
- [detectDecrease](discrete/detectDecrease.md) - Sort 1 quand l entree diminue strictement par rapport au pas precedent.
- [detectIncrease](discrete/detectIncrease.md) - Sort 1 quand l entree augmente strictement par rapport au pas precedent.
- [difference](discrete/difference.md) - Produit la difference avec l entree precedente.
- [dstateSpace](discrete/dstateSpace.md) - Implemente un modele d etat discret scalaire.
- [dtf](discrete/dtf.md) - Implemente une fonction de transfert discrete.
- [fallingEdge](discrete/fallingEdge.md) - Sort 1 au pas ou l entree passe de >= 0 a < 0.
- [foh](discrete/foh.md) - Maintien d ordre un pour valeurs d entree echantillonnees.
- [rateTransition](discrete/rateTransition.md) - Rééchantillonne un signal à son propre pas d'échantillonnage (bloqueur d'ordre zéro).
- [risingEdge](discrete/risingEdge.md) - Sort 1 au pas ou l entree passe de <= 0 a > 0.
- [unitDelay](discrete/unitDelay.md) - Retarde l entree d une mise a jour.
- [zoh](discrete/zoh.md) - Echantillonne une entree et conserve la derniere valeur.

## Blocs FMI et Modelica

Blocs pour importer, executer ou compiler des unites de simulation et des modeles.

### Functions

- [fmu](fmi/fmu.md) - Exécute une FMU de co-simulation dans un diagramme NFlow.
- [fmuMe](fmi/fmuMe.md) - Intègre une FMU d'échange de modèle avec le solveur NFlow.
- [modelica](fmi/modelica.md) - Compile un modèle Modelica et l'utilise comme bloc NFlow.

## Blocs logiques

Blocs booleens et de comparaison pour signaux numeriques.

### Functions

- [and](logic/and.md) - Produit le ET logique de deux entrees.
- [bitClear](logic/bitClear.md) - Met a 0 le bit a la position BitIndex de l entree entiere.
- [bitSet](logic/bitSet.md) - Met a 1 le bit a la position BitIndex de l entree entiere.
- [bitwiseOperator](logic/bitwiseOperator.md) - AND/OR/XOR/NAND/NOR/NOT bit-a-bit de l entree avec un BitMask constant.
- [combinatorialLogic](logic/combinatorialLogic.md) - Recherche par table de verite : un vecteur d entree de N bits indexe une TruthTable de 2^N entrees.
- [compareToConstant](logic/compareToConstant.md) - Compare une entree a un seuil constant.
- [compareToZero](logic/compareToZero.md) - Compare une entree a zero.
- [extractBits](logic/extractBits.md) - Extrait NumBitsToExtract bits a partir de StartBit, alignes a droite.
- [if](logic/if.md) - Sélectionne une sortie d'action à partir d'une expression booléenne sur les entrées.
- [intervalTest](logic/intervalTest.md) - Sort 1 quand l entree est dans [LowerLimit, UpperLimit], sinon 0.
- [intervalTestDynamic](logic/intervalTestDynamic.md) - Comme intervalTest mais les bornes proviennent des ports d entree (lo, u, up).
- [logicalOperator](logic/logicalOperator.md) - AND/OR/NAND/NOR/XOR/XNOR/NOT logique configurable des entrees.
- [not](logic/not.md) - Produit la negation logique d une entree.
- [or](logic/or.md) - Produit le OU logique de deux entrees.
- [relationalOperator](logic/relationalOperator.md) - Compare deux signaux d entree.
- [shiftArithmetic](logic/shiftArithmetic.md) - Decalage arithmetique de bits a gauche/droite de ShiftNumber (64 bits signes).
- [switchCase](logic/switchCase.md) - Aiguille un contrôle entier vers l'une de plusieurs sorties d'action.
- [xor](logic/xor.md) - Produit le OU exclusif logique de deux entrees.

## Tables de consultation

Blocs de tables de consultation interpolees et directes (1-D, 2-D, n-D et directe).

### Functions

- [directLookup](lookup/directLookup.md) - Table de consultation directe (n-D) sans interpolation.
- [interpolationPrelookup](lookup/interpolationPrelookup.md) - Interpole une Table statique a partir du couple [k, f] issu d un prelookup.
- [lookup1D](lookup/lookup1D.md) - Table de consultation 1-D interpolee.
- [lookup2D](lookup/lookup2D.md) - Table de consultation 2-D interpolee.
- [lookupDynamic](lookup/lookupDynamic.md) - Recherche 1-D interpolee dont les breakpoints et la table sont pris sur les ports d entree.
- [lookupND](lookup/lookupND.md) - Table de consultation n-D interpolee.
- [prelookup](lookup/prelookup.md) - Calcule l indice d intervalle k et la fraction f pour une recherche de breakpoints partagee.

## Blocs mathematiques

Operations mathematiques scalaires algebriques.

### Functions

- [abs](math/abs.md) - Produit la valeur absolue de son entree.
- [atan2](math/atan2.md) - Arctangente quatre quadrants des deux entrées.
- [bias](math/bias.md) - Ajoute un biais constant a l entree.
- [complexToMagnitudeAngle](math/complexToMagnitudeAngle.md) - Émet le module et l’angle d’un signal complexe.
- [complexToRealImag](math/complexToRealImag.md) - Sépare un signal complexe en sorties réelle et imaginaire.
- [conjugate](math/conjugate.md) - Conjugué complexe du signal d’entrée.
- [crossProduct](math/crossProduct.md) - Produit vectoriel de deux vecteurs a 3 elements.
- [divide](math/divide.md) - Divise l entree 1 par l entree 2.
- [dotProduct](math/dotProduct.md) - Produit scalaire de deux vecteurs d entree.
- [gain](math/gain.md) - Multiplie l entree par un gain scalaire.
- [magnitudeAngleToComplex](math/magnitudeAngleToComplex.md) - Construit un signal complexe à partir d’entrées module et angle.
- [mathFunction](math/mathFunction.md) - Fonction mathématique de l’entrée.
- [matmul](math/matmul.md) - Multiplie deux signaux matriciels ou applique une multiplication élément par élément.
- [max](math/max.md) - Produit le maximum de deux entrees.
- [min](math/min.md) - Produit le minimum de deux entrees.
- [mult](math/mult.md) - Multiplie les entrees connectees.
- [negate](math/negate.md) - Inverse le signe du signal d entree.
- [polynomial](math/polynomial.md) - Evalue un polynome de Coefficients constants (puissance la plus haute d abord).
- [productOfElements](math/productOfElements.md) - Produit des elements d un vecteur d entree.
- [realImagToComplex](math/realImagToComplex.md) - Construit un signal complexe à partir d’entrées réelle et imaginaire.
- [roundingFunction](math/roundingFunction.md) - Arrondit l’entrée à une valeur entière.
- [sign](math/sign.md) - Signe de l’entrée (-1, 0 ou +1).
- [sqrt](math/sqrt.md) - Famille de racines carrées de l’entrée.
- [sum](math/sum.md) - Additionne les entrees connectees avec des signes configurables.
- [sumElements](math/sumElements.md) - Somme des elements d un vecteur d entree.
- [trigFunction](math/trigFunction.md) - Fonction trigonométrique de l’entrée.
- [wrapToZero](math/wrapToZero.md) - Sort 0 quand l entree atteint Threshold, sinon la transmet telle quelle.

## Blocs non lineaires

Blocs avec saturation, seuils, hysteresis ou limites de vitesse.

### Functions

- [backlash](nonlinear/backlash.md) - Modele un jeu avec une bande morte autour de la sortie precedente.
- [coulombViscousFriction](nonlinear/coulombViscousFriction.md) - Friction statique : terme visqueux Gain*u plus terme de Coulomb signe Offset*sign(u).
- [deadZone](nonlinear/deadZone.md) - Supprime les valeurs dans une zone morte.
- [hitCrossing](nonlinear/hitCrossing.md) - Sort 1 au pas ou l entree franchit HitCrossingOffset.
- [hysteresis](nonlinear/hysteresis.md) - Relais : bascule à deux seuils avec mémoire (uHigh, uLow, yHigh, yLow).
- [quantizer](nonlinear/quantizer.md) - Arrondit l entree au plus proche intervalle.
- [rate](nonlinear/rate.md) - Limite les vitesses de montee et de descente du signal.
- [saturation](nonlinear/saturation.md) - Borne l entree entre min et max.

## Blocs recepteurs

Blocs qui consomment, affichent ou nomment les signaux.

### Functions

- [display](sink/display.md) - Stocke la derniere valeur d entree pour affichage.
- [fileSink](sink/fileSink.md) - Represente un recepteur de sortie fichier.
- [labelSink](sink/labelSink.md) - Nomme un signal d entree pour le routage par etiquette.
- [scope](sink/scope.md) - Stocke des series temporelles pour affichage.
- [stopSimulation](sink/stopSimulation.md) - Termine le run a la fin du pas ou son entree devient non nulle pour la premiere fois.
- [terminator](sink/terminator.md) - Consomme un signal intentionnellement inutilise.
- [toWorkspace](sink/toWorkspace.md) - Écrit le signal d'entrée dans une variable du workspace Nelson.
- [xyScope](sink/xyScope.md) - Stocke des paires X/Y pour affichage.
- [xyzScope](sink/xyzScope.md) - Stocke des echantillons X/Y/Z pour affichage 3D.

## Blocs sources

Blocs qui generent des signaux depuis des parametres, le temps, des etiquettes ou des fichiers.

### Functions

- [chirp](source/chirp.md) - Genere un chirp sinusoidal de f0 a f1.
- [clock](source/clock.md) - Produit le temps courant de simulation.
- [constant](source/constant.md) - Produit une valeur numerique constante.
- [counterFreeRunning](source/counterFreeRunning.md) - Compteur incremental libre, replie modulo 2^NumBits.
- [counterLimited](source/counterLimited.md) - Compteur incremental qui revient a 0 des qu il atteint UpperLimit.
- [enumeratedConstant](source/enumeratedConstant.md) - Sort une valeur d enumeration fixe (EnumClass la documente, Value est le nombre).
- [fileSource](source/fileSource.md) - Produit des valeurs depuis les tableaux precharges times et values.
- [fromWorkspace](source/fromWorkspace.md) - Lit un signal depuis une variable du workspace Nelson.
- [impulse](source/impulse.md) - Produit une impulsion a un instant configure.
- [labelSource](source/labelSource.md) - Lit un signal depuis un labelSink correspondant.
- [noise](source/noise.md) - Genere un bruit pseudo-aleatoire deterministe.
- [pulse](source/pulse.md) - Générateur d'impulsions : train d'impulsions périodique (Amplitude, Period, Width, StartTime, Offset).
- [ramp](source/ramp.md) - Genere une rampe commencant a start.
- [repeatingSequenceInterpolated](source/repeatingSequenceInterpolated.md) - Source periodique lineaire par morceaux interpolant une table (TimeValues, OutValues).
- [repeatingSequenceStair](source/repeatingSequenceStair.md) - Escalier periodique : une entree de OutValues par echantillon, en boucle.
- [signalGenerator](source/signalGenerator.md) - Source periodique configurable : sinus, carre ou dent de scie (Amplitude, Frequency).
- [sine](source/sine.md) - Genere un signal sinusoidal.
- [step](source/step.md) - Genere un echelon unitaire a stepTime.

## Blocs fonctions utilisateur

Blocs évaluant des expressions ou des fonctions Nelson fournies par l'utilisateur.

### Functions

- [expression](userdefined/expression.md) - Évalue une expression mathématique restreinte de u, en simulation et dans le code généré.
- [nelsonFunction](userdefined/nelsonFunction.md) - Évalue une fonction Nelson à chaque pas de simulation.

## Blocs utilitaires

Blocs de routage, regroupement, annotation et commutation interactive.

### Functions

- [assignment](utility/assignment.md) - Ecrit des elements dans un signal : out = base avec out[Indices] = valeurs.
- [busAssignment](utility/busAssignment.md) - Remplace des membres choisis d un bus et laisse passer le reste inchange.
- [busCreator](utility/busCreator.md) - Regroupe des signaux hétérogènes (ou des bus imbriqués) en un bus.
- [busSelector](utility/busSelector.md) - Extrait des membres d’un bus par chemin.
- [comment](utility/comment.md) - Ajoute un texte d annotation non execute au diagramme.
- [concatenate](utility/concatenate.md) - Concatène les signaux d'entrée selon une dimension sélectionnée.
- [convert](utility/convert.md) - Convertit un signal vers un type de données sélectionné.
- [dataStoreMemory](utility/dataStoreMemory.md) - Declare une memoire scalaire nommee partagee dans tout le modele (valeur initiale).
- [dataStoreRead](utility/dataStoreRead.md) - Sort la valeur de la memoire de donnees nommee.
- [dataStoreWrite](utility/dataStoreWrite.md) - Ecrit son entree dans la memoire de donnees nommee.
- [demux](utility/demux.md) - Route une entree vers plusieurs ports de sortie.
- [functionCallGenerator](utility/functionCallGenerator.md) - Pilote un sous-système function-call un nombre fixe de fois par pas.
- [functionCallSplit](utility/functionCallSplit.md) - Distribue un function-call à plusieurs callees, dans l'ordre.
- [initialCondition](utility/initialCondition.md) - Force la sortie a InitialValue au premier pas, puis transmet l entree.
- [iteratorCondition](utility/iteratorCondition.md) - porte le prédicat de continuation d'un sous-système While Iterator
- [iteratorNumber](utility/iteratorNumber.md) - fournit l'indice d'itération courant dans un sous-système For/While Iterator
- [merge](utility/merge.md) - Recombine les sorties de sous-systèmes conditionnels mutuellement exclusifs.
- [multiportSwitch](utility/multiportSwitch.md) - Route une des entrees de donnees vers la sortie, selon une entree de controle.
- [mux](utility/mux.md) - Regroupe plusieurs routes d entree vers une route de sortie.
- [reshape](utility/reshape.md) - Modifie les dimensions d'un signal sans changer ses valeurs.
- [selector](utility/selector.md) - Sélectionne des éléments du signal d'entrée avec des indices commençant à un.
- [signalConversion](utility/signalConversion.md) - Passe-plat qui recopie son entree vers sa sortie inchangee (point de conversion).
- [subsystem](utility/subsystem.md) - Execute un diagramme imbrique comme un seul bloc.
- [switch](utility/switch.md) - Selectionne l entree haute ou basse avec une entree de condition.
- [toggleSwitch](utility/toggleSwitch.md) - Produit l une de deux valeurs configurees depuis state.
- [width](utility/width.md) - Sort le nombre d elements (largeur) de son signal d entree, sous forme scalaire.
