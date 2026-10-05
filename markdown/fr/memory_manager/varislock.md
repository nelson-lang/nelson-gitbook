# varislock

Vérifie si une variable est verrouillée.

## 📝 Syntaxe

- state = varislock(scope, variable\_name)

## 📥 Argument d'entrée

- scope - une chaîne : 'global', 'base', 'caller', 'local'.
- variable\_name - une chaîne : nom de la variable.

## 📄 Description


<b>varislock</b> renvoie vrai si<b>variable\_name</b> a été déclarée comme variable verrouillée, et faux sinon.

## 💡 Exemple



```matlab
y = 3;
varislock('local', 'y')
varlock('local', 'y')
varislock('local', 'y')
y = 4
varunlock('local', 'y')
varislock('local', 'y')
y = 4

```


## 🔗 Voir aussi

[varlock](../memory_manager/varlock.md), [varunlock](../memory_manager/varunlock.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
