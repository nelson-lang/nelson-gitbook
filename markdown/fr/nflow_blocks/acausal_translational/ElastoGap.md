# ElastoGap


<p align="center">
<img src="ElastoGap.svg" width="192"/>
</p>
Ressort-amortisseur de contact unilateral : agit uniquement lorsque le jeu est ferme (s\_rel < s\_rel0).

## 📝 Syntaxe

- Type de bloc : ElastoGap

## 📥 Argument d'entrée

- broches physiques - 2 broche(s) physique(s) non dirigee(s) ; 0 entree(s) de signal.

## 📤 Argument de sortie

- ports de signal - 0 sortie(s) de signal (lectures de capteur).

## 📄 Description


Composant acausal (Translation (acausal)). Ressort-amortisseur de contact unilateral : agit uniquement lorsque le jeu est ferme (s\_rel < s\_rel0). 

| Champ | Valeur |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Bibliotheque | Translation (acausal) | 
| Type | <code>ElastoGap</code> | 
| Libelle | ElastoGap | 
| Solveur | Abaisse vers <code>mechanicalTranslationalIsland</code>. Solveur de reference <code>dae</code> (differentiel-algebrique) ; la boucle a pas fixe et les solveurs explicites natifs (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) sont egalement pris en charge (un ilot multicorps articule necessite <code>dae</code>). | 

  

<b>Sources d implementation</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_translational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('ElastoGap', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'elastoGap', {{'a', 'a'}, {'b', 'b'}}, ...
    {{'c', 'c', 100, 'N/m'}, {'d', 'd', 1, 'N.s/m'}, {'s_rel0', 's_rel0', 0, 'm'}}, '', '', ...
    'One-sided contact spring-damper: acts only while the gap is closed (s_rel < s_rel0).');
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
