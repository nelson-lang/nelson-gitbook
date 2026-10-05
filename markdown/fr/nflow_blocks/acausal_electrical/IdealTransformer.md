# IdealTransformer


<p align="center">
<img src="IdealTransformer.svg" width="192"/>
</p>
Transformateur ideal : v1 = n v2, i2 = -n i1 (structurel, sans stockage d etat).

## 📝 Syntaxe

- Type de bloc : IdealTransformer

## 📥 Argument d'entrée

- broches physiques - 4 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Electrique (acausal)). Transformateur ideal : v1 = n v2, i2 = -n i1 (structurel, sans stockage d etat). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Electrique (acausal) | 
| Type | <code>IdealTransformer</code> | 
| Libelle | IdealTransformer | 
| Solveur | Abaisse vers <code>physicalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('IdealTransformer', 'Electrical', 'electrical', 'physicalIsland', ...
    'transformer', {{'p1', 'a'}, {'n1', 'b'}, {'p2', 'c'}, {'n2', 'd'}}, ...
    {{'n', 'n', 1, '1'}}, '', '', ...
    'Ideal transformer: v1 = n v2, i2 = -n i1 (structural, no state storage).');
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
