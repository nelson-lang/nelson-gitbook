# PlanarRollingWheel


<p align="center">
<img src="PlanarRollingWheel.svg" width="72"/>
</p>
La roue au repere a roule sans glisser sur la ligne de surface fixe (px,py)+(dx,dy), en restant a la hauteur radius.

## 📝 Syntaxe

- Type de bloc : PlanarRollingWheel

## 📥 Argument d'entrée

- broches physiques - 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Planaire (acausal)). La roue au repere a roule sans glisser sur la ligne de surface fixe (px,py)+(dx,dy), en restant a la hauteur radius. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Planaire (acausal) | 
| Type | <code>PlanarRollingWheel</code> | 
| Libelle | PlanarRollingWheel | 
| Solveur | Abaisse vers <code>planarMechanicalIsland</code>. Solveur de reference <code>dae</code> (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_planar/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m</code></summary>

```matlab
  c{end + 1} = pl_entry('PlanarRollingWheel', 'Joints', {'a'}, ...
    {{'dx', 1, '1'}, {'dy', 0, '1'}, {'px', 0, 'm'}, {'py', 0, 'm'}, {'radius', 1, 'm'}}, '', ...
    'Wheel at frame a rolls without slipping on the fixed surface line (px,py)+(dx,dy), staying at height radius.');
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
