# unsetenv

Supprime une variable d'environnement.

## 📝 Syntaxe

- unsetenv(env_name)

## 📥 Argument d'entrée

- env_name - chaine scalaire ou vecteur de caracteres : nom de la variable d'environnement.

## 📄 Description

<b>unsetenv</b> supprime la variable d'environnement <b>env_name</b> de l'environnement du processus courant.

Si la variable n'existe pas, <b>unsetenv</b> n'a aucun effet.

## 💡 Exemple

```matlab
setenv('MY_ENV_VAR', 'funvalue')
isenv('MY_ENV_VAR')
unsetenv('MY_ENV_VAR')
isenv('MY_ENV_VAR')
```

## 🔗 Voir aussi

[setenv](../os_functions/setenv.md), [getenv](../os_functions/getenv.md), [isenv](../os_functions/isenv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
