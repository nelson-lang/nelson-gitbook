# PlanarPointMass


<p align="center">
<img src="PlanarPointMass.svg" width="72"/>
</p>
Masse ponctuelle (sans orientation) : quatre etats (xc, yc, vx, vy) ; attachez les liaisons a son point.

## 📝 Syntaxe

- Type de bloc : PlanarPointMass

## 📥 Argument d'entrée

- broches physiques - 1 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Planaire (acausal)). Masse ponctuelle (sans orientation) : quatre etats (xc, yc, vx, vy) ; attachez les liaisons a son point. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Planaire (acausal) | 
| Type | <code>PlanarPointMass</code> | 
| Libelle | PlanarPointMass | 
| Solveur | Abaisse vers <code>planarMechanicalIsland</code>. Solveur de reference <code>dae</code> (algebro-differentiel) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_planar/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m</code></summary>

```matlab
  c{end + 1} = pl_entry('PlanarPointMass', 'Parts', {'com'}, ...
    {{'m', 1, 'kg'}, {'x0', 0, 'm'}, {'y0', 0, 'm'}, {'vx0', 0, 'm/s'}, {'vy0', 0, 'm/s'}}, '', ...
    'Point mass (no orientation): four states (xc, yc, vx, vy); attach joints at its point.');
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
