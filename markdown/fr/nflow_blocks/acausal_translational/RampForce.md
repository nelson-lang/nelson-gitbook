# RampForce


<p align="center">
<img src="RampForce.svg" width="192"/>
</p>
Force en rampe sur une bride : F = Slope (t - StartTime) pour t >= StartTime, sinon 0.

## 📝 Syntaxe

- Type de bloc : RampForce

## 📥 Argument d'entrée

- broches physiques - 1 broche(s) physique(s) non dirigee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Translation (acausal)). Force en rampe sur une bride : F = Slope (t - StartTime) pour t >= StartTime, sinon 0. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Translation (acausal) | 
| Type | <code>RampForce</code> | 
| Libelle | RampForce | 
| Solveur | Abaisse vers <code>mechanicalTranslationalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_translational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('RampForce', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'force', {{'flange', 'node'}}, ...
    {{'Slope', 'slope', 1, 'N/s'}, {'StartTime', 'start', 0, 's'}}, ...
    '', '', 'Ramp force on a flange: F = Slope (t - StartTime) for t >= StartTime, else 0.');
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
