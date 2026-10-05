# QuadraticSpeedDependentTorque


<p align="center">
<img src="QuadraticSpeedDependentTorque.svg" width="192"/>
</p>
Resistance quadratique (trainee) par rapport au bati : tau = -d w \|w\|.

## 📝 Syntaxe

- Type de bloc : QuadraticSpeedDependentTorque

## 📥 Argument d'entrée

- broches physiques - 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Rotation (acausal)). Resistance quadratique (trainee) par rapport au bati : tau = -d w \|w\|. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Rotation (acausal) | 
| Type | <code>QuadraticSpeedDependentTorque</code> | 
| Libelle | QuadraticSpeedDependentTorque | 
| Solveur | Abaisse vers <code>mechanicalTranslationalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_rotational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('QuadraticSpeedDependentTorque', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'quadraticSpeedForce', {{'flange', 'node'}}, {{'d', 'd', 1, 'N.m.s2/rad2'}}, '', '', ...
    'Quadratic (drag) resistance to ground: tau = -d w |w|.');
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
