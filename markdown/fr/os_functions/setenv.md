# setenv

Definir ou supprimer une variable d'environnement.

## 📝 Syntaxe

- setenv(env\_name, env\_value)
- setenv(env\_name)

## 📥 Argument d'entrée

- env\_name - une chaine : nom de la variable d'environnement.
- env\_value - une chaine : valeur de la variable d'environnement.

## 📄 Description


<b>setenv</b> definit la valeur d'une variable d'environnement. 

<b>setenv(env\_name)</b> supprime la variable de l'environnement du processus courant. 

<b>setenv(env\_name, '')</b> conserve la variable avec une valeur vide.

## 💡 Exemple



```matlab
setenv('MY_ENV_VAR', 'funvalue')
getenv('MY_ENV_VAR')
setenv('MY_ENV_VAR', '')
getenv('MY_ENV_VAR')
setenv('MY_ENV_VAR')
getenv('MY_ENV_VAR')
```


## 🔗 Voir aussi

[getenv](../os_functions/getenv.md), [searchenv](../os_functions/searchenv.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | suppression de variable d'environnement ajoutee |

<!--
## 👤 Auteur

Allan CORNET
-->
