# ConvectiveResistor


<p align="center">
<img src="ConvectiveResistor.svg" width="192"/>
</p>
Resistance convective : Q\_flow = (T\_a - T\_b) / Rc avec un Rc pilote par signal.

## 📝 Syntaxe

- Type de bloc : ConvectiveResistor

## 📥 Argument d'entrée

- broches physiques - 2 broche(s) physique(s) non orientee(s) ; 1 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Thermique (acausal)). Resistance convective : Q\_flow = (T\_a - T\_b) / Rc avec un Rc pilote par signal. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Thermique (acausal) | 
| Type | <code>ConvectiveResistor</code> | 
| Libelle | ConvectiveResistor | 
| Solveur | Abaisse vers <code>physicalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_thermal/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('ConvectiveResistor', 'Thermal', 'thermal', 'physicalIsland', ...
    'variableResistor', {{'a', 'a'}, {'b', 'b'}}, {}, 'R', '', ...
    'Convective resistor: Q_flow = (T_a - T_b) / Rc with a signal-driven Rc.');
```

</details>



## 🔗 Voir aussi

[HeatCapacitor](../../nflow_blocks/acausal_thermal/HeatCapacitor.md), [ThermalConductor](../../nflow_blocks/acausal_thermal/ThermalConductor.md), [ThermalResistor](../../nflow_blocks/acausal_thermal/ThermalResistor.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
