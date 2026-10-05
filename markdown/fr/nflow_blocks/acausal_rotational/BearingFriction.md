# BearingFriction


<p align="center">
<img src="BearingFriction.svg" width="192"/>
</p>
Frottement de palier regularise (sans evenement) : tau = -tau\_c tanh(w / w\_eps).

## 📝 Syntaxe

- Type de bloc : BearingFriction

## 📥 Argument d'entrée

- broches physiques - 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Rotation (acausal)). Frottement de palier regularise (sans evenement) : tau = -tau\_c tanh(w / w\_eps). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Rotation (acausal) | 
| Type | <code>BearingFriction</code> | 
| Libelle | BearingFriction | 
| Solveur | Abaisse vers <code>mechanicalTranslationalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_rotational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('BearingFriction', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'friction', {{'flange', 'node'}}, {{'tau_c', 'Fc', 1, 'N.m'}, {'w_eps', 'vEps', 0.001, 'rad/s'}}, '', '', ...
    'Regularised bearing friction (event-free): tau = -tau_c tanh(w / w_eps).');
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
