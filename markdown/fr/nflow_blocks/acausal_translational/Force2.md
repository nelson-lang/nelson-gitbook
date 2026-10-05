# Force2


<p align="center">
<img src="Force2.svg" width="192"/>
</p>
Force egale et opposee entre deux brides : +F sur a, -F sur b (pilotee par signal).

## 📝 Syntaxe

- Type de bloc : Force2

## 📥 Argument d'entrée

- broches physiques - 2 broche(s) physique(s) non dirigee(s) ; 1 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Translation (acausal)). Force egale et opposee entre deux brides : +F sur a, -F sur b (pilotee par signal). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Translation (acausal) | 
| Type | <code>Force2</code> | 
| Libelle | Force2 | 
| Solveur | Abaisse vers <code>mechanicalTranslationalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_translational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('Force2', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'force2', {{'a', 'a'}, {'b', 'b'}}, {}, 'F', '', ...
    'Equal and opposite force between two flanges: +F on a, -F on b (signal-driven).');
```

</details>



## 🔗 Voir aussi

[TranslationalEMF](../../nflow_blocks/acausal_translational/TranslationalEMF.md), [Mass](../../nflow_blocks/acausal_translational/Mass.md), [SlidingMass](../../nflow_blocks/acausal_translational/SlidingMass.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
