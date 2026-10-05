# Brake


<p align="center">
<img src="Brake.svg" width="192"/>
</p>
Frein a friction actionne par signal vers la masse : l entree fixe la force de freinage maximale.

## 📝 Syntaxe

- Type de bloc : Brake

## 📥 Argument d'entrée

- broches physiques - 1 broche(s) physique(s) non dirigee(s) ; 1 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Translation (acausal)). Frein a friction actionne par signal vers la masse : l entree fixe la force de freinage maximale. 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Translation (acausal) | 
| Type | <code>Brake</code> | 
| Libelle | Brake | 
| Solveur | Abaisse vers <code>mechanicalTranslationalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_translational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('Brake', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'brake', {{'flange', 'node'}}, {{'vEps', 'vEps', 0.001, 'm/s'}}, 'f', '', ...
    'Signal-actuated friction brake to ground: the input sets the peak braking force.');
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
