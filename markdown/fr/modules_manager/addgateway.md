# addgateway

Ajoute dynamiquement des builtins au moment de l'execution.

## 📝 Syntaxe

- addgateway(dyn_lib_path)
- addgateway(dyn_lib_path, mode)
- addgateway(dyn_lib_path, module_name, mode)

## 📥 Argument d'entrée

- dyn_lib_path - chaine : chemin d'une bibliotheque dynamique preparee pour Nelson.
- mode - chaine : <b>auto</b> utilise le cache gateway et le lazy-loading quand c'est possible, <b>loaded</b> force le chargement immediat.

## 📄 Description

<b>addgateway(dyn_lib_path)</b> ajoute dynamiquement des builtins au moment de l'execution.

La bibliotheque dynamique doit fournir <b>GetGatewayDescriptor</b> et <b>AddGateway</b>.

Par defaut, le mode <b>auto</b> enregistre les builtins lazy depuis le cache quand c'est possible. Utiliser <b>loaded</b> force le chargement immediat de la bibliotheque dynamique.

Les descriptors de gateway sont stockes dans un cache unique, <b>prefdir()/gateway_cache.json</b>. Nelson reconstruit automatiquement l'entree du cache quand la bibliotheque dynamique est modifiee.

Definir <b>NELSON_GATEWAY_TRACE=1</b> affiche les decisions de cache et de chargement des gateways. Definir <b>NELSON_GATEWAY_FORCE_LOADED=1</b> force le chargement immediat de toutes les gateways.

Si la gateway est deja chargee, aucune erreur ni avertissement ne sera leve.

## 💡 Exemple

Ajouter la gateway pour le module time :

```matlab
addgateway(modulepath('time', 'builtin'), 'loaded')
```

## 🔗 Voir aussi

[removegateway](../modules_manager/removegateway.md), [gatewayinfo](../modules_manager/gatewayinfo.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
