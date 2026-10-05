# save\_system

Sauvegarde un modèle nflow dans un fichier .nflow.

## 📝 Syntaxe

- filename = save\_system(model)
- filename = save\_system(model, filename)

## 📥 Argument d'entrée

- args - see the syntaxes above.

## 📤 Argument de sortie

- varargout - see the syntaxes above.

## 📄 Description


<b>save\_system</b> sauvegarde un modèle nflow dans un fichier .nflow.

## 💡 Exemple



```matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
add_line('demo', 'Sine/1', 'Gain/1');
bdclose('demo');
```


## 🔗 Voir aussi

[new_system](../nflow_engine/new_system.md), [add_block](../nflow_engine/add_block.md), [add_line](../nflow_engine/add_line.md), [set_param](../nflow_engine/set_param.md), [get_param](../nflow_engine/get_param.md), [close_system](../nflow_engine/close_system.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
