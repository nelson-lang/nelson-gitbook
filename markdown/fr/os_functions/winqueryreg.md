# winqueryreg

Lire le registre Windows (Windows seulement).

## 📝 Syntaxe

- c = winqueryreg ('name', rootkey, subkey)
- v = winqueryreg (rootkey, subkey, value\_name)
- v = winqueryreg (rootkey, subkey)

## 📥 Argument d'entrée

- rootkey - une chaîne : clé racine.
- subkey - une chaîne : chemin de la sous-clé.
- value\_name - une chaîne : nom de la valeur.

## 📤 Argument de sortie

- c - une cellule de chaînes.
- v - une chaîne ou un int32.

## 📄 Description


<b>c = winqueryreg ('name', rootkey, subkey)</b> renvoie une cellule de chaînes contenant les noms des clés dans rootkey\\subkey. 

<b>v = winqueryreg (rootkey, subkey, value\_name)</b> renvoie la valeur associée à value\_name dans rootkey\\subkey. 

Si la valeur est un entier 32 bits,<b>winqueryreg</b> renvoie la valeur en int32. Si la valeur est une chaîne, elle est renvoyée en tant que chaîne. 

<b>v = winqueryreg (rootkey, subkey)</b> renvoie la valeur dans rootkey\\subkey qui n'a pas de propriété value name. 

Clés racines supportées : 

'HKEY\_CLASSES\_ROOT', 'HKCR', 

'HKEY\_CURRENT\_USER', 'HKCU', 

'HKEY\_LOCAL\_MACHINE', 'HKLM', 

'HKEY\_USERS', 'HKU', 

'HKEY\_CURRENT\_CONFIG', 'HKCC'

## 💡 Exemple



```matlab
winqueryreg('name', 'HKEY_LOCAL_MACHINE', 'HARDWARE\DESCRIPTION\System')
winqueryreg('HKLM', 'HARDWARE\DESCRIPTION\System\CentralProcessor\1\', 'ProcessorNameString')
```


## 🔗 Voir aussi

[winopen](../os_functions/winopen.md), [searchenv](../os_functions/searchenv.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
