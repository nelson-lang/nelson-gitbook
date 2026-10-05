# PlanarRelativeTorque


<p align="center">
<img src="PlanarRelativeTorque.svg" width="72"/>
</p>
Couple d actionneur : +tau sur le corps au repere a, -tau sur le corps au repere b (entraine une liaison).

## 📝 Syntaxe

- Type de bloc : PlanarRelativeTorque

## 📥 Argument d'entrée

- broches physiques - 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Planaire (acausal)). Couple d actionneur : +tau sur le corps au repere a, -tau sur le corps au repere b (entraine une liaison). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Planaire (acausal) | 
| Type | <code>PlanarRelativeTorque</code> | 
| Libelle | PlanarRelativeTorque | 
| Solveur | Abaisse vers <code>planarMechanicalIsland</code>. Solveur de reference <code>dae</code> (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_planar/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m</code></summary>

```matlab
  c{end + 1} = pl_entry('PlanarRelativeTorque', 'Forces', {'a', 'b'}, ...
    {{'tau', 0, 'N.m'}}, '', ...
    'Actuator torque: +tau on the body at frame a, -tau on the body at frame b (drives a joint).');
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
