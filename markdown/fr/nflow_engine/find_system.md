# find_system

Liste les blocs d'un modèle, éventuellement filtrés par type.

## 📝 Syntaxe

- paths = find_system(sys)
- paths = find_system(sys, 'BlockType', type)

## 📥 Argument d'entrée

- args - voir les syntaxes ci-dessus.

## 📤 Argument de sortie

- paths - un tableau de cellules de chaînes de chemins ('sys' et 'sys/NomDeBloc').

## 📄 Description

<b>find_system</b> liste les blocs d'un modèle, éventuellement filtrés par type.

<b>find_system(sys)</b> renvoie le modèle lui-même et chaque bloc sous lui, sous forme d'un tableau de cellules de chemins ('sys' et 'sys/NomDeBloc').

<b>find_system(sys, 'BlockType', type)</b> renvoie uniquement les chemins des blocs dont le type est <b>type</b> (le modèle lui-même est omis). Une propriété inconnue est une erreur.

## 💡 Exemple

```matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
paths = find_system('demo')
gains = find_system('demo', 'BlockType', 'gain')
bdclose('demo');
```

## 🔗 Voir aussi

[new_system](../nflow_engine/new_system.md), [add_block](../nflow_engine/add_block.md), [get_param](../nflow_engine/get_param.md), [set_param](../nflow_engine/set_param.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
