# Freewheel


<p align="center">
<img src="Freewheel.svg" width="192"/>
</p>
Embrayage unidirectionnel : accouple la bride a a b uniquement tant que a depasse b (roue libre sinon).

## 📝 Syntaxe

- Type de bloc : Freewheel

## 📥 Argument d'entrée

- broches physiques - 2 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Rotation (acausal)). Embrayage unidirectionnel : accouple la bride a a b uniquement tant que a depasse b (roue libre sinon). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Rotation (acausal) | 
| Type | <code>Freewheel</code> | 
| Libelle | Freewheel | 
| Solveur | Abaisse vers <code>mechanicalTranslationalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_rotational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('Freewheel', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'freewheel', {{'a', 'a'}, {'b', 'b'}}, {{'d', 'd', 100, 'N.m.s/rad'}, {'w_eps', 'vEps', 0.001, 'rad/s'}}, '', '', ...
    'One-way clutch: couples flange a to b only while a overruns b (freewheels otherwise).');
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
