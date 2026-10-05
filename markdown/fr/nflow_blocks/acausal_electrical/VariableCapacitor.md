# VariableCapacitor


<p align="center">
<img src="VariableCapacitor.svg" width="192"/>
</p>
Condensateur dont la capacite C est definie par un signal (formulation exacte en charge Q).

## 📝 Syntaxe

- Type de bloc : VariableCapacitor

## 📥 Argument d'entrée

- broches physiques - 2 broche(s) physique(s) non orientee(s) ; 1 entree(s) signal.

## 📤 Argument de sortie

- ports signal - 0 sortie(s) signal (lectures de capteur).

## 📄 Description


Composant acausal (Electrique (acausal)). Condensateur dont la capacite C est definie par un signal (formulation exacte en charge Q). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Electrique (acausal) | 
| Type | <code>VariableCapacitor</code> | 
| Libelle | VariableCapacitor | 
| Solveur | Abaisse vers <code>physicalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('VariableCapacitor', 'Electrical', 'electrical', 'physicalIsland', ...
    'variableCapacitor', {{'p', 'a'}, {'n', 'b'}}, {{'q0', 'ic', 0, 'C'}}, 'C', '', ...
    'Capacitor whose capacitance C is set by a signal (exact charge Q formulation).');
```

</details>



## 🔗 Voir aussi

[Ground](../../nflow_blocks/acausal_electrical/Ground.md), [Resistor](../../nflow_blocks/acausal_electrical/Resistor.md), [HeatingResistor](../../nflow_blocks/acausal_electrical/HeatingResistor.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
