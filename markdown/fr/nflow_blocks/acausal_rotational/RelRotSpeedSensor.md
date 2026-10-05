# RelRotSpeedSensor


<p align="center">
<img src="RelRotSpeedSensor.svg" width="192"/>
</p>
Mesure la vitesse angulaire relative w\_a - w\_b entre deux brides.

## 📝 Syntaxe

- Type de bloc : RelRotSpeedSensor

## 📥 Argument d'entrée

- broches physiques - 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 1 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Rotation (acausal)). Mesure la vitesse angulaire relative w\_a - w\_b entre deux brides. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Rotation (acausal) | 
| Type | <code>RelRotSpeedSensor</code> | 
| Libelle | RelRotSpeedSensor | 
| Solveur | Abaisse vers <code>mechanicalTranslationalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_rotational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('RelRotSpeedSensor', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'relSpeedSensor', {{'a', 'a'}, {'b', 'b'}}, {}, '', 'speed', ...
    'Measures the relative angular velocity w_a - w_b between two flanges.');
```

</details>



## 🔗 Voir aussi

[EMF](../../nflow_blocks/acausal_rotational/EMF.md), [Inertia](../../nflow_blocks/acausal_rotational/Inertia.md), [RotSpring](../../nflow_blocks/acausal_rotational/RotSpring.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
