# ZDiode


<p align="center">
<img src="ZDiode.svg" width="192"/>
</p>
Diode Zener : conduction directe de Shockley plus claquage inverse a -Vz.

## 📝 Syntaxe

- Type de bloc : ZDiode

## 📥 Argument d'entrée

- broches physiques - 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) signal.

## 📤 Argument de sortie

- ports signal - 0 sortie(s) signal (lectures de capteur).

## 📄 Description


Composant acausal (Electrique (acausal)). Diode Zener : conduction directe de Shockley plus claquage inverse a -Vz. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Electrique (acausal) | 
| Type | <code>ZDiode</code> | 
| Libelle | ZDiode | 
| Solveur | Abaisse vers <code>physicalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('ZDiode', 'Electrical', 'electrical', 'physicalIsland', ...
    'zdiode', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'Is', 'Is', 1e-9, 'A'}, {'Vt', 'Vt', 0.04, 'V'}, {'Vz', 'Vz', 5, 'V'}}, '', '', ...
    'Zener diode: forward Shockley conduction plus reverse breakdown at -Vz.');
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
