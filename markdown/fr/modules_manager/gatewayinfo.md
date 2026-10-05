# gatewayinfo

Retourne des informations sur une gateway.

## 📝 Syntaxe

- [gateway\_name, builtin\_list] = gatewayinfo(dyn\_lib\_path)
- [gateway\_name, builtin\_list, state] = gatewayinfo(dyn\_lib\_path)

## 📥 Argument d'entrée

- dyn\_lib\_path - chaine : chemin d'une bibliotheque dynamique preparee pour Nelson.

## 📤 Argument de sortie

- gateway\_name - chaine : nom de la gateway
- builtin\_list - cellule de chaines : liste des builtin presents dans cette gateway
- state - chaine : etat courant de la gateway, <b>loaded</b>, <b>lazy</b> ou <b>not\_loaded</b>

## 📄 Description


<b>[gateway\_name, builtin\_list] = gatewayinfo(dyn\_lib\_path)</b> recupere des informations sur une gateway. 

La bibliotheque dynamique doit fournir un point d'entree C nomme <b>GetGatewayDescriptor</b>. 

La troisieme sortie optionnelle indique si la gateway est chargee, enregistree en lazy-loading ou non enregistree. 

Les metadonnees de descriptor peuvent etre reutilisees depuis le cache unique <b>prefdir()/gateway\_cache.json</b>; l'entree du cache est reconstruite automatiquement quand la bibliotheque dynamique est modifiee. 

Si le fichier n'existe pas, une erreur est levee.

## 💡 Exemple



```matlab
[gateway_name, builtin_list, state] = gatewayinfo(modulepath('time', 'builtin'))

```


## 🔗 Voir aussi

[addgateway](../modules_manager/addgateway.md), [removegateway](../modules_manager/removegateway.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
