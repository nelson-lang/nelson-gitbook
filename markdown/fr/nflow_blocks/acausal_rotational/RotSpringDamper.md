# RotSpringDamper


<p align="center">
<img src="RotSpringDamper.svg" width="192"/>
</p>
Ressort et amortisseur en rotation en parallele : tau = c (phi\_a - phi\_b) + d (w\_a - w\_b).

## 📝 Syntaxe

- Type de bloc : RotSpringDamper

## 📥 Argument d'entrée

- broches physiques - 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Rotation (acausal)). Ressort et amortisseur en rotation en parallele : tau = c (phi\_a - phi\_b) + d (w\_a - w\_b). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Rotation (acausal) | 
| Type | <code>RotSpringDamper</code> | 
| Libelle | RotSpringDamper | 
| Solveur | Abaisse vers <code>mechanicalTranslationalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_rotational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('RotSpringDamper', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'spring', {{'a', 'a'}, {'b', 'b'}}, {{'c', 'c', 1, 'N.m/rad'}, {'d', 'd', 1, 'N.m.s/rad'}}, '', '', ...
    'Parallel rotational spring and damper: tau = c (phi_a - phi_b) + d (w_a - w_b).');
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
