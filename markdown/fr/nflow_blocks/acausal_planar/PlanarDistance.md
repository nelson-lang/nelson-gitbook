# PlanarDistance


<p align="center">
<img src="PlanarDistance.svg" width="72"/>
</p>
Tige rigide : maintient une distance fixe L entre les points aux reperes a et b.

## 📝 Syntaxe

- Type de bloc : PlanarDistance

## 📥 Argument d'entrée

- broches physiques - 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Planaire (acausal)). Tige rigide : maintient une distance fixe L entre les points aux reperes a et b. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Planaire (acausal) | 
| Type | <code>PlanarDistance</code> | 
| Libelle | PlanarDistance | 
| Solveur | Abaisse vers <code>planarMechanicalIsland</code>. Solveur de reference <code>dae</code> (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_planar/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m</code></summary>

```matlab
  c{end + 1} = pl_entry('PlanarDistance', 'Joints', {'a', 'b'}, ...
    {{'length', 1, 'm'}}, '', ...
    'Rigid rod: holds a fixed distance L between the points at frames a and b.');
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
