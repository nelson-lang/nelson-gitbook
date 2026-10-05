# gcbh

Renvoie le handle du bloc courant.

## 📝 Syntaxe

- h = gcbh()

## 📥 Argument d'entrée

-  - 

## 📤 Argument de sortie

- h - un handle numérique du bloc courant, ou la matrice vide <b>[]</b> lorsqu'aucun bloc n'est sélectionné.

## 📄 Description


<b>gcbh</b> renvoie un handle numérique du bloc courant, le bloc sélectionné dans l'éditeur (le même bloc que <b>gcb</b> renvoie sous forme de chemin). 

Le handle est une valeur de type référence que l'on peut passer à <b>get\_param</b> et <b>set\_param</b> à la place du chemin du bloc. Il reste valide jusqu'à ce que le bloc soit supprimé ou que son modèle soit fermé. 

<b>gcbh</b> renvoie la matrice vide <b>[]</b> lorsqu'aucun bloc n'est sélectionné ou qu'aucun éditeur n'est actif, à l'image de <b>gcb</b> qui renvoie la chaîne vide dans ce cas.

## 💡 Exemple



```matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
set_param('demo/Gain', 'Gain', '2');
% Dans l'editeur, gcbh() renvoie le handle du bloc selectionne.
% Le meme handle s'obtient par chemin avec get_param(chemin, 'Handle') :
h = get_param('demo/Gain', 'Handle')
get_param(h, 'Gain')
bdclose('demo');
```


## 🔗 Voir aussi

[getNFlowBlockHandle](../nflow_engine/getNFlowBlockHandle.md), [getfullname](../nflow_engine/getfullname.md), [get_param](../nflow_engine/get_param.md), [set_param](../nflow_engine/set_param.md), [find_system](../nflow_engine/find_system.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
