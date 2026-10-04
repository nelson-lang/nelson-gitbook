# bdroot

Renvoie le modèle de plus haut niveau d'un chemin de bloc.

## 📝 Syntaxe

- root = bdroot(obj)

## 📥 Argument d'entrée

- obj - un nom de modèle ou un chemin de bloc ('modèle' ou 'modèle/NomDeBloc').

## 📤 Argument de sortie

- root - le nom du modèle de plus haut niveau (la partie avant le premier '/').

## 📄 Description

<b>bdroot</b> renvoie le modèle de plus haut niveau d'un chemin de bloc.

<b>bdroot('modele')</b> vaut <b>'modele'</b> ; <b>bdroot('modele/Sub/Blk')</b> vaut <b>'modele'</b>. Le modèle racine doit être chargé.

## 💡 Exemple

```matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
root = bdroot('demo/Gain')
bdclose('demo');
```

## 🔗 Voir aussi

[find_system](../nflow_engine/find_system.md), [new_system](../nflow_engine/new_system.md), [get_param](../nflow_engine/get_param.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
