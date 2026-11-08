# nflow\_layout

Dispose automatiquement les blocs d'un (sous-)système nflow.

## 📝 Syntaxe

- nflow\_layout(sys)

## 📥 Argument d'entrée

- sys - une chaîne : nom d'un modèle chargé (<code>'modele'</code>) pour disposer son diagramme racine, ou chemin d'un sous-système (<code>'modele/Sub'</code>, <code>'modele/Sub/Inner'</code>) pour disposer ce sous-système ; ou un handle numérique de modèle.

## 📄 Description


<b>nflow\_layout</b> calcule de nouvelles positions pour les blocs d'un (sous-)système à partir de leurs connexions : les sources à gauche, puis une colonne par niveau de connectivité, avec moins de croisements de fils, les boucles de retour prises en compte et les puits regroupés à droite. 

Seul le niveau ciblé est disposé : les blocs des sous-systèmes imbriqués gardent leur position ; appelez <b>nflow\_layout</b> sur le chemin de chaque sous-système pour le disposer aussi. 

Seule la géométrie change (<code>Position</code> des blocs) ; blocs, paramètres et connexions restent identiques, le résultat de simulation ne change donc pas. La disposition est déterministe : la relancer sur le même diagramme donne les mêmes positions. 

Le modèle doit être chargé (<b>new\_system</b> ou <b>load\_system</b>). Un chemin de sous-système inconnu provoque une erreur. Le modèle est marqué comme modifié ; utilisez <b>save\_system</b> pour conserver la nouvelle disposition.

## 💡 Exemples

Construire un modèle par script, puis le disposer.

```matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/S');
add_block('nflow/math/gain', 'demo/G1', 'Gain', 2);
add_block('nflow/math/gain', 'demo/G2', 'Gain', 3);
add_line('demo', 'S/1', 'G1/1');
add_line('demo', 'S/1', 'G2/1');
nflow_layout('demo');
get_param('demo/S', 'Position')
get_param('demo/G1', 'Position')
get_param('demo/G2', 'Position')
bdclose('demo');
```
Disposer un sous-système imbriqué.

```matlab
new_system('demo');
add_block('subsystem', 'demo/Sub');
add_block('nflow/source/sine', 'demo/Sub/S');
add_block('nflow/math/gain', 'demo/Sub/G');
add_line('demo', 'Sub/S/1', 'Sub/G/1');
nflow_layout('demo/Sub');
bdclose('demo');
```


## 🔗 Voir aussi

[add_block](../nflow_engine/add_block.md), [add_line](../nflow_engine/add_line.md), [get_param](../nflow_engine/get_param.md), [nflow_reroute](../nflow_engine/nflow_reroute.md), [save_system](../nflow_engine/save_system.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
