# BodyRadiation


<p align="center">
<img src="BodyRadiation.svg" width="192"/>
</p>
Rayonnement (Stefan-Boltzmann) : Q\_flow = Gr (T\_a^4 - T\_b^4).

## 📝 Syntaxe

- Type de bloc : BodyRadiation

## 📥 Argument d'entrée

- broches physiques - 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Thermique (acausal)). Rayonnement (Stefan-Boltzmann) : Q\_flow = Gr (T\_a^4 - T\_b^4). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Thermique (acausal) | 
| Type | <code>BodyRadiation</code> | 
| Libelle | BodyRadiation | 
| Solveur | Abaisse vers <code>physicalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_thermal/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('BodyRadiation', 'Thermal', 'thermal', 'physicalIsland', ...
    'radiation', {{'a', 'a'}, {'b', 'b'}}, {{'Gr', 'Gr', 1, 'W/K4'}}, '', '', ...
    'Radiation (Stefan-Boltzmann): Q_flow = Gr (T_a^4 - T_b^4).');
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
