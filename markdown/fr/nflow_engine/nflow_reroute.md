# nflow\_reroute

Recalcule le tracé des fils d'un (sous-)système nflow.

## 📝 Syntaxe

- nflow\_reroute(sys)
- nflow\_reroute(sys, width)
- nflow\_reroute(sys, width, height)

## 📥 Argument d'entrée

- sys - une chaîne : nom d'un modèle chargé (<code>'modele'</code>) pour tracer les fils de son diagramme racine, ou chemin d'un sous-système (<code>'modele/Sub'</code>, <code>'modele/Sub/Inner'</code>) pour tracer ceux de ce sous-système ; ou un handle numérique de modèle.
- width - un scalaire : largeur de la zone de tracé, en unités du diagramme. Par défaut : 4000.
- height - un scalaire : hauteur de la zone de tracé, en unités du diagramme. Par défaut : 4000.

## 📄 Description


<b>nflow\_reroute</b> calcule un nouveau tracé pour chaque connexion d'un (sous-)système et l'enregistre sur la connexion sous forme de liste de points de passage. Les tracés sont orthogonaux et contournent les blocs, du port de sortie au port d'entrée. 

Les blocs ne bougent pas : appelez d'abord <b>nflow\_layout</b> pour les disposer, puis <b>nflow\_reroute</b> pour tracer les fils selon les nouvelles positions. La position des ports est estimée à partir du nombre de ports déclaré par chaque type de bloc. 

Seul le niveau ciblé est tracé : appelez <b>nflow\_reroute</b> sur le chemin de chaque sous-système pour le tracer aussi. Seule la géométrie des fils change, le résultat de simulation ne change donc pas. 

Le modèle doit être chargé (<b>new\_system</b> ou <b>load\_system</b>). Un chemin de sous-système inconnu, ou un échec du tracé, provoque une erreur. Le modèle est marqué comme modifié ; utilisez <b>save\_system</b> pour conserver les tracés.

## 💡 Exemple

Disposer un modèle, tracer ses fils et lire le tracé enregistré.

```matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/S');
add_block('nflow/math/gain', 'demo/G', 'Gain', 2);
add_line('demo', 'S/1', 'G/1');
nflow_layout('demo');
nflow_reroute('demo');
f = [tempname(), '.nflow'];
save_system('demo', f);
m = jsondecode(fileread(f));
w = m.connections(1).waypoints;
[[w.x]', [w.y]']
bdclose('demo');
rmfile(f);
```


## 🔗 Voir aussi

[nflow_layout](../nflow_engine/nflow_layout.md), [add_line](../nflow_engine/add_line.md), [save_system](../nflow_engine/save_system.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
