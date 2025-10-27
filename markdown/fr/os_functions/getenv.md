# getenv

Obtenir la valeur d'une variable d'environnement.

## 📝 Syntaxe

- s = getenv(env_name)

## 📥 Argument d'entrée

- env_name - scalaire chaîne, vecteur de caractères, tableau de chaînes, cellule de vecteurs de caractères : nom de la variable d'environnement.

## 📤 Argument de sortie

- s - scalaire chaîne, vecteur de caractères, tableau de chaînes, cellule de vecteurs de caractères : valeur de la variable d'environnement.

## 📄 Description

<b>getenv</b> retourne la valeur d'une variable d'environnement si elle existe.

Si la variable d'environnement n'existe pas, elle renverra ''.

Si <b>env_name</b> est une cellule non scalaire de vecteurs de caractères ou un tableau de chaînes, alors <b>s</b> a les mêmes dimensions et le même type que <b>env_name</b>.

Si <b>env_name</b> est une chaîne scalaire, alors <b>s</b> est un vecteur de caractères.

## 💡 Exemple

```matlab
getenv('OS')
getenv('myenvvar')
getenv(["PATH"; "OS"])
getenv({'PATH'; 'OS'})

```

## 🔗 Voir aussi

[setenv](../os_functions/setenv.md), [searchenv](../os_functions/searchenv.md).

## 🕔 Historique

| Version | 📄 Description                                                   |
| ------- | ---------------------------------------------------------------- |
| 1.0.0   | version initiale                                                 |
| 1.4.0   | Récupération des valeurs de plusieurs variables d'environnement. |

## 👤 Auteur

Allan CORNET
