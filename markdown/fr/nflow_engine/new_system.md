# new_system

Crée et charge un modèle nflow vide.

## 📝 Syntaxe

- h = new_system()
- h = new_system(name)

## 📥 Argument d'entrée

- name - une chaîne : un identifiant de modèle valide. Sans argument, un nom automatique est généré (<b>untitled</b>, <b>untitled1</b>, ...).

## 📤 Argument de sortie

- h - un double : un handle vers le modèle chargé.

## 📄 Description

<b>new_system</b> crée un modèle nflow vide et l'enregistre comme chargé. Le modèle est désigné ensuite par son handle ou par son nom.

Les blocs s'ajoutent avec <b>add_block</b>, se connectent avec <b>add_line</b> ou <b>NFlow.connectBlocks</b>, se configurent avec <b>set_param</b>, se sauvegardent avec <b>save_system</b> et s'ouvrent dans l'éditeur avec <b>open_system</b>.

## 💡 Exemple

```matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
add_block('nflow/sink/scope', 'demo/Scope');
add_line('demo', 'Sine/1', 'Gain/1');
add_line('demo', 'Gain/1', 'Scope/1');
set_param('demo', 'StopTime', 10);
save_system('demo', [tempdir(), 'demo.nflow']);
bdclose('demo');
```

## 🔗 Voir aussi

[add_block](../nflow_engine/add_block.md), [add_line](../nflow_engine/add_line.md), [set_param](../nflow_engine/set_param.md), [save_system](../nflow_engine/save_system.md), [close_system](../nflow_engine/close_system.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
