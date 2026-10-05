# SlidingMass


<p align="center">
<img src="SlidingMass.svg" width="192"/>
</p>
Masse coulissante de longueur L : m dv/dt = F\_net (L est geometrique, n affecte pas la dynamique).

## 📝 Syntaxe

- Type de bloc : SlidingMass

## 📥 Argument d'entrée

- broches physiques - 1 broche(s) physique(s) non dirigee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Translation (acausal)). Masse coulissante de longueur L : m dv/dt = F\_net (L est geometrique, n affecte pas la dynamique). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Translation (acausal) | 
| Type | <code>SlidingMass</code> | 
| Libelle | SlidingMass | 
| Solveur | Abaisse vers <code>mechanicalTranslationalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_translational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('SlidingMass', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'mass', {{'flange', 'node'}}, ...
    {{'m', 'm', 1, 'kg'}, {'L', 'L', 0, 'm'}, {'s0', 's0', 0, 'm'}, {'v0', 'v0', 0, 'm/s'}}, '', '', ...
    'Sliding mass of length L: m dv/dt = F_net (L is geometric, does not affect the dynamics).');
```

</details>



## 🔗 Voir aussi

[TranslationalEMF](../../nflow_blocks/acausal_translational/TranslationalEMF.md), [Mass](../../nflow_blocks/acausal_translational/Mass.md), [MassWithWeight](../../nflow_blocks/acausal_translational/MassWithWeight.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
