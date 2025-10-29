# whos

Liste les variables en mémoire ou dans un fichier .nh5 ou .mat avec tailles et types.

## 📝 Syntaxe

- whos
- s = whos()
- whos(scope)
- s = whos(scope)
- whos('-file', filename)
- s = whos('-file', filename)
- whos(... , var1, ..., varN)
- s = whos(... , var1, ..., varN)

## 📥 Argument d'entrée

- scope - une chaîne : 'global', 'base', 'caller', 'local'.
- var1, ..., varN - une chaîne : nom de la variable.
- filename - chaîne : nom d'un fichier existant .nh5 ou .mat.

## 📤 Argument de sortie

- st - contient des informations sur les variables dans le tableau de structures st.

## 📄 Description

<b>whos</b> affiche les variables courantes en mémoire ou dans un fichier .nh5 ou .mat.

## 💡 Exemple

```matlab
clear
whos
A = 3
b= 3
whos
s = whos()
save([tempdir(), 'example_who.nh5'], 'A', 'b')
whos([tempdir(), 'example_who.nh5'])

```

## 🔗 Voir aussi

[what](../functions_manager/what.md), [clear](../memory_manager/clear.md), [who](../memory_manager/who.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
