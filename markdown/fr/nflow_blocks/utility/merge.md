# merge

Recombine les sorties de sous-systèmes conditionnels mutuellement exclusifs.

## 📝 Syntaxe

- Type de bloc : merge

## 📥 Argument d'entrée

- ports d'entrée - Chaque entrée est pilotée par un sous-système conditionnel (action).

## 📤 Argument de sortie

- ports de sortie - 1 sortie : la valeur de la branche qui s'est exécutée à ce pas.

## 📄 Description

Recombine les sorties de sous-systèmes conditionnels mutuellement exclusifs.

Les entrées sont pilotées directement par des sous-systèmes conditionnels, dont un seul s'exécute à un pas donné. La sortie prend la valeur de l'entrée dont le sous-système source s'est exécuté à ce pas ; si aucune source ne s'est exécutée, elle conserve sa valeur précédente (à partir de <code>InitialOutput</code>). Si deux sources s'exécutent au même pas, le dernier port d'entrée l'emporte.

<b>Paramètres</b>

| Paramètre                  | Valeur par défaut |
| -------------------------- | ----------------- |
| <code>InitialOutput</code> | 0                 |

<b>Caractéristiques du bloc</b>

| Champ        | Valeur            |
| ------------ | ----------------- |
| Type de bloc | merge             |
| Famille      | Blocs utilitaires |
| Phases       | INIT, ALGEBRAIC   |

<b>Capacites etendues</b>

Generation de code : prise en charge pour C et Rust.

## 🔗 Voir aussi

[if](../../nflow_blocks/logic/if.md), [switchCase](../../nflow_blocks/logic/switchCase.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
