# winqueryreg

Lire le registre Windows (Windows seulement).

## Syntaxe

- c = winqueryreg ('name', rootkey, subkey)
- v = winqueryreg (rootkey, subkey, value_name)
- v = winqueryreg (rootkey, subkey)

## Argument d'entrée

- rootkey - une chaîne : clé racine.
- subkey - une chaîne : chemin de la sous-clé.
- value_name - une chaîne : nom de la valeur.

## Argument de sortie

- c - une cellule de chaînes.
- v - une chaîne ou un int32.

## Description

<p>c = winqueryreg ('name', rootkey, subkey) renvoie une cellule de chaînes contenant les noms des clés dans rootkey\subkey.</p>

<p>v = winqueryreg (rootkey, subkey, value_name) renvoie la valeur associée à value_name dans rootkey\subkey.</p>

<p>Si la valeur est un entier 32 bits, winqueryreg renvoie la valeur en int32. Si la valeur est une chaîne, elle est renvoyée en tant que chaîne.</p>

<p>v = winqueryreg (rootkey, subkey) renvoie la valeur dans rootkey\subkey qui n'a pas de propriété value name.</p>

<p>Clés racines supportées :</p>

<p>'HKEY_CLASSES_ROOT', 'HKCR',</p>

<p>'HKEY_CURRENT_USER', 'HKCU',</p>

<p>'HKEY_LOCAL_MACHINE', 'HKLM',</p>

<p>'HKEY_USERS', 'HKU',</p>

<p>'HKEY_CURRENT_CONFIG', 'HKCC'</p>

## Exemple

```matlab
winqueryreg('name', 'HKEY_LOCAL_MACHINE', 'HARDWARE\DESCRIPTION\System')
winqueryreg('HKLM', 'HARDWARE\DESCRIPTION\System\CentralProcessor\1\', 'ProcessorNameString')
```

## Voir aussi

[winopen](../os_functions/winopen.md), [searchenv](../os_functions/searchenv.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
