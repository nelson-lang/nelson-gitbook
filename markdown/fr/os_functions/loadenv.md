# loadenv

Charger les variables d'environnement définies dans des fichiers .env ou des fichiers texte ordinaires.

## 📝 Syntaxe

- loadenv(filename)
- D = loadenv(filename)

## 📥 Argument d'entrée

- filename - chaine de caractères: nom du fichier d'environnement.

## 📤 Argument de sortie

- s - dictionnaire: les variables d'environnement et leurs valeurs.

## 📄 Description

<b>loadenv(filename)</b> charge les variables d'environnement à partir d'un fichier .env ou texte brut en analysant une paire clé-valeur par ligne et les définit comme variables d'environnement dans l'environnement Nelson.

<b>D = loadenv(filename)</b> renvoie un dictionnaire contenant les paires clé-valeur analysées. Lorsqu'un argument de sortie est spécifié, loadenv ne modifie pas l'environnement Nelson.

## 💡 Exemple

```matlab
env_file = [modulepath('os_functions', 'tests'), '/sample.env'];
D = loadenv(env_file)
getenv('Key1')
loadenv(env_file)
getenv('Key1')
```

## 🔗 Voir aussi

[setenv](../os_functions/setenv.md), [getenv](../os_functions/getenv.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
