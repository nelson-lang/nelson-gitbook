# EMF


<p align="center">
<img src="EMF.svg" width="192"/>
</p>
Convertisseur electromecanique (moteur/generateur) : force contre-electromotrice v = k w, couple tau = k i.

## 📝 Syntaxe

- Type de bloc : EMF

## 📥 Argument d'entrée

- broches physiques - 3 broche(s) physique(s) non orientee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Rotation (acausal)). Convertisseur electromecanique (moteur/generateur) : force contre-electromotrice v = k w, couple tau = k i. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Rotation (acausal) | 
| Type | <code>EMF</code> | 
| Libelle | EMF | 
| Solveur | Abaisse vers <code>mechanicalTranslationalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_rotational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('EMF', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'force', {{'p', 'a'}, {'n', 'b'}, {'flange', 'node'}}, {{'k', 'k', 1, 'N.m/A'}}, '', '', ...
    'Electro-mechanical converter (motor/generator): back-emf v = k w, torque tau = k i.');
```

</details>



## 🔗 Voir aussi

[Inertia](../../nflow_blocks/acausal_rotational/Inertia.md), [RotSpring](../../nflow_blocks/acausal_rotational/RotSpring.md), [RotDamper](../../nflow_blocks/acausal_rotational/RotDamper.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
