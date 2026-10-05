# lasterr

Retourne ou definit le dernier message d'erreur.

## 📝 Syntaxe

- msg = lasterr()
- [msg, id] = lasterr()
- previous = lasterr(msg)
- previous = lasterr(msg, id)

## 📥 Argument d'entrée

- msg - message d'erreur : chaine de caracteres.
- id - identifiant d'erreur : chaine de caracteres.

## 📤 Argument de sortie

- msg - dernier message d'erreur : chaine de caracteres.
- id - dernier identifiant d'erreur : chaine de caracteres.

## 📄 Description


<b>msg = lasterr()</b> retourne le message de la derniere erreur enregistree. 

<b>[msg, id] = lasterr()</b> retourne aussi l'identifiant de l'erreur. 

<b>lasterr(msg)</b> et <b>lasterr(msg, id)</b> definissent le dernier message d'erreur (et l'identifiant), et retournent le message precedent.

## 💡 Exemple



```matlab
try
  error('MyPkg:boom', 'exploded');
catch
end
[msg, id] = lasterr()
```


## 🔗 Voir aussi

[lasterror](../error_manager/lasterror.md), [error](../error_manager/error.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
