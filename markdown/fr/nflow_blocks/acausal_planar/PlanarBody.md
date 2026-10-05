# PlanarBody


<p align="center">
<img src="PlanarBody.svg" width="72"/>
</p>
Corps rigide : masse m, inertie centrale I ; six etats (xc, yc, phi, vx, vy, w). Les reperes nommes sont des decalages fixes au corps par rapport au centre de masse.

## 📝 Syntaxe

- Type de bloc : PlanarBody

## 📥 Argument d'entrée

- broches physiques - 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Planaire (acausal)). Corps rigide : masse m, inertie centrale I ; six etats (xc, yc, phi, vx, vy, w). Les reperes nommes sont des decalages fixes au corps par rapport au centre de masse. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Planaire (acausal) | 
| Type | <code>PlanarBody</code> | 
| Libelle | PlanarBody | 
| Solveur | Abaisse vers <code>planarMechanicalIsland</code>. Solveur de reference <code>dae</code> (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_planar/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m</code></summary>

```matlab
  c{end + 1} = pl_entry('PlanarBody', 'Parts', {'com', '<named frames>'}, ...
    {{'m', 1, 'kg'}, {'I', 1, 'kg.m2'}, {'x0', 0, 'm'}, {'y0', 0, 'm'}, ...
     {'phi0', 0, 'rad'}, {'vx0', 0, 'm/s'}, {'vy0', 0, 'm/s'}, {'w0', 0, 'rad/s'}}, '', ...
    'Rigid body: mass m, central inertia I; six states (xc, yc, phi, vx, vy, w). Named frames are body-fixed offsets from the COM.');
```

</details>



## 🔗 Voir aussi

[PlanarWorld](../../nflow_blocks/acausal_planar/PlanarWorld.md), [PlanarFixed](../../nflow_blocks/acausal_planar/PlanarFixed.md), [PlanarPointMass](../../nflow_blocks/acausal_planar/PlanarPointMass.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
