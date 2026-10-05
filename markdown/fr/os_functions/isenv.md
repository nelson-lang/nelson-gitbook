# isenv

Determine si une variable d'environnement existe.

## 📝 Syntaxe

- tf = isenv(env\_name)

## 📥 Argument d'entrée

- env\_name - chaine scalaire, vecteur de caracteres, tableau de chaines, tableau de cellules de vecteurs de caracteres : nom de la variable d'environnement.

## 📤 Argument de sortie

- tf - logique : true si la variable d'environnement est definie, false sinon.

## 📄 Description


<b>isenv</b> renvoie <b>true</b> si la variable d'environnement <b>env\_name</b> est definie dans l'environnement du processus courant, meme si sa valeur est vide. 

Si <b>env\_name</b> est un tableau de chaines ou un tableau de cellules non scalaire, alors <b>tf</b> a les memes dimensions que <b>env\_name</b>.

## 💡 Exemple



```matlab
setenv('MY_ENV_VAR', 'funvalue')
isenv('MY_ENV_VAR')
isenv('A_VARIABLE_THAT_DOES_NOT_EXIST')
isenv(["MY_ENV_VAR", "A_VARIABLE_THAT_DOES_NOT_EXIST"])

```


## 🔗 Voir aussi

[getenv](../os_functions/getenv.md), [setenv](../os_functions/setenv.md), [unsetenv](../os_functions/unsetenv.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
