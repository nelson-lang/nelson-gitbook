# throwAsCaller

Lancer une exception comme si elle se produisait dans la fonction appelante.

## 📝 Syntaxe

- throwAsCaller(MException)

## 📥 Argument d'entrée

- MException - objet MException

## 📄 Description


Elle lance une exception comme si elle se produisait dans la fonction appelante.

## 💡 Exemple



```matlab

function test_throwAsCaller()
  ME = MException('n:m', 'your error')
  throwAsCaller(ME)
```


## 🔗 Voir aussi

[MException](../error_manager/MException.md), [rethrow](../error_manager/rethrow.md), [throw](../error_manager/throw.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
