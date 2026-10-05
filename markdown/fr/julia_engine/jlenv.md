# jlenv

Modifier l'environnement par défaut de l'interpréteur Julia.

## 📝 Syntaxe

- jlenv
- je = jlenv('Version', julia\_path)
- je = jlenv(...)

## 📥 Argument d'entrée

- julia\_path - une chaîne ou un vecteur de caractères : nom du fichier exécutable de Julia.

## 📤 Argument de sortie

- je - objet JuliaEnvironment.

## 📄 Description


Utilisez<b>jlenv</b> pour modifier la version par défaut ou le mode d'exécution de l'interpréteur Julia, en veillant à ce que ces ajustements persistent entre les différentes sessions Nelson. 

La valeur définie par<b>jlenv</b> est persistante entre les sessions Nelson. 

 

Properties: 

<b>Version</b>: string: Julia version 

<b>Executable</b>: string: Name of Julia executable file 

<b>Library</b>: string: Shared library file 

<b>Home</b>: string: Home folder 

<b>Status</b>: Process status: "NotLoaded" (default), "Loaded", "Terminated" 

<b>ExecutionMode</b>: Execution mode: "InProcess" (default) or "OutOfProcess" 

 

Utilisez des variables d'environnement pour forcer l'environnement Julia au démarrage (utile pour les distributions snapcraft ou docker) : 

 

<b>\_\_NELSON\_JULIA\_VERSION\_\_</b>: exemple "1.11" 

<b>\_\_NELSON\_JULIA\_EXECUTABLE\_\_</b>: exemple "/usr/bin/julia" 

<b>\_\_NELSON\_JULIA\_LIBRARY\_\_</b>: exemple "libjulia.so" 

<b>\_\_NELSON\_JULIA\_HOME\_\_</b>: exemple "/usr" 

Toutes les variables d'environnement doivent exister et être valides pour être prises en compte. 



## 💡 Exemples



```matlab
je = jlenv
```
Définir le chemin de l'exécutable Julia

```matlab
jlenv('Version', ''C:\WindowsTools\Julia-1.11.6\bin\julia.exe'')
```


## 🔗 Voir aussi

[jlrun](../julia_engine/jlrun.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.12.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
