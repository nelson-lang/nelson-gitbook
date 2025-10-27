# addgateway

Ajoute dynamiquement un builtin au moment de l'exécution.

## 📝 Syntaxe

- addgateway(dyn_lib_path)

## 📥 Argument d'entrée

- dyn_lib_path - chaîne : chemin d'une bibliothèque dynamique préparée pour Nelson.

## 📄 Description

<b>addgateway(dyn_lib_path)</b> ajoute dynamiquement un builtin au moment de l'exécution.

La bibliothèque dynamique chargée doit fournir au minimum un point d'entrée C nommé <b>AddGateway</b>.

Si la gateway est déjà chargée, aucune erreur ni avertissement ne sera levé.

## 💡 Exemple

Ajouter la gateway pour le module time :

```matlab
addgateway(modulepath('time', 'builtin'))
```

## 🔗 Voir aussi

[removegateway](../dynamic_link/removegateway.md), [gatewayinfo](../dynamic_link/gatewayinfo.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
