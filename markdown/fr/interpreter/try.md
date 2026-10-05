# try

instruction try/catch.

## 📝 Syntaxe

- try, statements\_1, catch, statements\_2, end
- try, statements\_1, catch exception, statements\_2, end

## 📄 Description


Les instructions <b>try</b> et<b>catch</b> sont utilisées pour la gestion des erreurs et le contrôle dans les fichiers. 

<b>exception</b> est un objet<b>MException</b> qui permet d'identifier l'erreur. 

Le bloc catch assigne l'objet exception courant à la variable dans exception.

## 💡 Exemples

try/catch dans un script

```matlab
try
error('an error')
catch
  disp('error catched')
end
```
try/catch dans un script

```matlab
try
error('an error')
catch ME
  ME
end
```


## 🔗 Voir aussi

[run](../core/run.md), [execstr](../core/execstr.md), [MException](../error_manager/MException.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
