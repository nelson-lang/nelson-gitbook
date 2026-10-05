# lasterror

Renvoie le dernier message d'erreur enregistré.

## 📝 Syntaxe

- last\_err = lasterror()
- lasterror('reset')
- lasterror(error\_struct)

## 📤 Argument de sortie

- last\_err - structure du message d'erreur.

## 📄 Description


<b>l = lasterror()</b> renvoie une structure contenant le dernier message d'erreur et les informations associées. 

<b>lasterror('reset')</b> efface la dernière erreur. 

<b>lasterror(error\_struct)</b> définit la dernière erreur.

## 💡 Exemples



```matlab
state = execstr('xxxxxx', 'errcatch')
if ~state
  l = lasterror()
end
```


```matlab
state = execstr('xxxxxx', 'errcatch')
l = lasterror();
lasterror('reset');
lasterror()
lasterror(l);
lasterror()
```


## 🔗 Voir aussi

[error](../error_manager/error.md), [warning](../error_manager/warning.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
