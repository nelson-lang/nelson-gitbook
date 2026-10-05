# Resistor


<p align="center">
<img src="Resistor.svg" width="192"/>
</p>
Resistance lineaire ideale : i = (v\_p - v\_n) / R.

## 📝 Syntaxe

- Type de bloc : Resistor

## 📥 Argument d'entrée

- broches physiques - 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) signal.

## 📤 Argument de sortie

- ports signal - 0 sortie(s) signal (lectures de capteur).

## 📄 Description


Composant acausal (Electrique (acausal)). Resistance lineaire ideale : i = (v\_p - v\_n) / R. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Electrique (acausal) | 
| Type | <code>Resistor</code> | 
| Libelle | Resistor | 
| Solveur | Abaisse vers <code>physicalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('Resistor', 'Electrical', 'electrical', 'physicalIsland', ...
    'resistor', {{'p', 'a'}, {'n', 'b'}}, {{'R', 'R', 1000, 'ohm'}}, '', '', ...
    'Ideal linear resistor: i = (v_p - v_n) / R.');
```

</details>



## 🔗 Voir aussi

[Ground](../../nflow_blocks/acausal_electrical/Ground.md), [HeatingResistor](../../nflow_blocks/acausal_electrical/HeatingResistor.md), [Conductor](../../nflow_blocks/acausal_electrical/Conductor.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
