# HeatCapacitor


<p align="center">
<img src="HeatCapacitor.svg" width="192"/>
</p>
Capacite thermique concentree : C dT/dt = Q\_flow (port reference a 0).

## 📝 Syntaxe

- Type de bloc : HeatCapacitor

## 📥 Argument d'entrée

- broches physiques - 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Thermique (acausal)). Capacite thermique concentree : C dT/dt = Q\_flow (port reference a 0). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Thermique (acausal) | 
| Type | <code>HeatCapacitor</code> | 
| Libelle | HeatCapacitor | 
| Solveur | Abaisse vers <code>physicalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_thermal/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('HeatCapacitor', 'Thermal', 'thermal', 'physicalIsland', ...
    'capacitor', {{'port', 'a'}}, ...
    {{'C', 'C', 1, 'J/K'}, {'T0', 'ic', 293.15, 'K'}}, '', '', ...
    'Lumped heat capacity: C dT/dt = Q_flow (port referenced to 0).');
```

</details>



## 🔗 Voir aussi

[ThermalConductor](../../nflow_blocks/acausal_thermal/ThermalConductor.md), [ThermalResistor](../../nflow_blocks/acausal_thermal/ThermalResistor.md), [ConvectiveResistor](../../nflow_blocks/acausal_thermal/ConvectiveResistor.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
