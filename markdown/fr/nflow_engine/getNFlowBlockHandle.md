# getNFlowBlockHandle

Renvoie le handle d'un bloc par chemin, ou -1 si introuvable.

## 📝 Syntaxe

- h = getNFlowBlockHandle(path)
- h = getNFlowBlockHandle(path, load)

## 📥 Argument d'entrée

- path - un chemin de bloc ('modèle/NomDeBloc'), ou un tableau de cellules de chemins de blocs.
- load - booléen optionnel ; si vrai, un modèle non chargé est chargé au préalable s'il peut être trouvé.

## 📤 Argument de sortie

- h - le handle numérique du bloc, ou <b>-1</b> s'il est introuvable. Pour un tableau de cellules de chemins, un tableau numérique de même forme.

## 📄 Description


<b>getNFlowBlockHandle</b> renvoie le handle numérique d'un bloc à partir de son chemin, ou <b>-1</b> lorsque le bloc n'existe pas (aucune erreur n'est levée). 

Le handle est égal à <b>get\_param(path, 'Handle')</b> et peut être passé à <b>get\_param</b> et <b>set\_param</b> à la place du chemin. Un chemin qui ne désigne qu'un modèle (sans bloc) vaut <b>-1</b>. 

Avec un tableau de cellules de chemins, le résultat est un tableau numérique de handles de même forme, chaque élément étant le handle ou <b>-1</b>. 

Lorsque <b>load</b> vaut vrai et que le modèle n'est pas chargé, il est chargé au préalable s'il peut être trouvé ; sinon le résultat reste <b>-1</b>.

## 💡 Exemple



```matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
h = getNFlowBlockHandle('demo/Gain')
missing = getNFlowBlockHandle('demo/None')
get_param(h, 'BlockType')
bdclose('demo');
```


## 🔗 Voir aussi

[getfullname](../nflow_engine/getfullname.md), [get_param](../nflow_engine/get_param.md), [set_param](../nflow_engine/set_param.md), [find_system](../nflow_engine/find_system.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
