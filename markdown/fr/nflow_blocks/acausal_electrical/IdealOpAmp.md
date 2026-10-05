# IdealOpAmp


<p align="center">
<img src="IdealOpAmp.svg" width="192"/>
</p>
Amplificateur operationnel ideal (nullor) : court-circuit virtuel e\_+ = e\_-, courant de sortie libre.

## 📝 Syntaxe

- Type de bloc : IdealOpAmp

## 📥 Argument d'entrée

- broches physiques - 3 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Electrique (acausal)). Amplificateur operationnel ideal (nullor) : court-circuit virtuel e\_+ = e\_-, courant de sortie libre. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Electrique (acausal) | 
| Type | <code>IdealOpAmp</code> | 
| Libelle | IdealOpAmp | 
| Solveur | Abaisse vers <code>physicalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('IdealOpAmp', 'Electrical', 'electrical', 'physicalIsland', ...
    'opAmp', {{'in_p', 'a'}, {'in_n', 'b'}, {'out', 'c'}}, {}, '', '', ...
    'Ideal op-amp (nullor): virtual short e_+ = e_-, output current free.');
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
