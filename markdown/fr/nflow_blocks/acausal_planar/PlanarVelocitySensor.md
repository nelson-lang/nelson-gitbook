# PlanarVelocitySensor


<p align="center">
<img src="PlanarVelocitySensor.svg" width="72"/>
</p>
Vitesse absolue du point du repere a selon l axe choisi (x, y) ou la vitesse angulaire (omega).

## 📝 Syntaxe

- Type de bloc : PlanarVelocitySensor

## 📥 Argument d'entrée

- broches physiques - 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 1 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Planaire (acausal)). Vitesse absolue du point du repere a selon l axe choisi (x, y) ou la vitesse angulaire (omega). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Planaire (acausal) | 
| Type | <code>PlanarVelocitySensor</code> | 
| Libelle | PlanarVelocitySensor | 
| Solveur | Abaisse vers <code>planarMechanicalIsland</code>. Solveur de reference <code>dae</code> (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_planar/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m</code></summary>

```matlab
  c{end + 1} = pl_entry('PlanarVelocitySensor', 'Sensors', {'a'}, ...
    {{'axis', 'x', 'x|y|omega'}}, 'output', ...
    'Absolute velocity of the frame-a point along the chosen axis (x, y) or the angular velocity (omega).');
```

</details>



## 🔗 Voir aussi

[PlanarWorld](../../nflow_blocks/acausal_planar/PlanarWorld.md), [PlanarFixed](../../nflow_blocks/acausal_planar/PlanarFixed.md), [PlanarBody](../../nflow_blocks/acausal_planar/PlanarBody.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
