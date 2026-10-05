# getfullname

Renvoie le chemin complet d'un bloc ou d'un modèle depuis son handle.

## 📝 Syntaxe

- path = getfullname(handle)

## 📥 Argument d'entrée

- handle - un handle numérique (bloc ou modèle), un chemin de bloc (char), ou un tableau de cellules de handles.

## 📤 Argument de sortie

- path - le chemin complet : 'modèle/NomDeBloc' pour un handle de bloc, 'modèle' pour un handle de modèle. Un tableau de cellules de handles renvoie un tableau de cellules de chemins.

## 📄 Description


<b>getfullname</b> renvoie le chemin complet qui identifie le bloc ou le modèle désigné par un handle. Un handle de bloc donne <b>'modèle/NomDeBloc'</b> ; un handle de modèle donne <b>'modèle'</b>. 

C'est l'inverse de <b>getNFlowBlockHandle</b>. Un chemin (char) est déjà un nom complet et est renvoyé tel quel. Un tableau de cellules de handles renvoie un tableau de cellules de chemins de même forme. 

Un handle inconnu lève une erreur.

## 💡 Exemple



```matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
h = getNFlowBlockHandle('demo/Gain');
path = getfullname(h)
bdclose('demo');
```


## 🔗 Voir aussi

[getNFlowBlockHandle](../nflow_engine/getNFlowBlockHandle.md), [get_param](../nflow_engine/get_param.md), [find_system](../nflow_engine/find_system.md), [bdroot](../nflow_engine/bdroot.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
