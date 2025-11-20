# gatewayinfo

Retourne des informations sur une gateway.

## 📝 Syntaxe

- [gateway\_name, builtin\_list] = gatewayinfo(dyn_lib_path)

## 📥 Argument d'entrée

- dyn_lib_path - chaîne : chemin d'une bibliothèque dynamique préparée pour Nelson.

## 📤 Argument de sortie

- gateway_name - chaîne : nom de la gateway
- builtin_list - cellule de chaînes : liste des builtin présents dans cette gateway

## 📄 Description

<b>[gateway\_name, builtin\_list] = gatewayinfo(dyn_lib_path)</b> récupère des informations sur une gateway.

La bibliothèque dynamique doit fournir au minimum un point d'entrée C nommé<b>GetGatewayInfo</b>.

Si le fichier n'existe pas, une erreur est levée.

## 💡 Exemple

```matlab
[gateway_name, builtin_list] = gatewayinfo(modulepath('time', 'builtin'))

```

## 🔗 Voir aussi

[addgateway](../dynamic_link/addgateway.md), [removegateway](../dynamic_link/removegateway.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
