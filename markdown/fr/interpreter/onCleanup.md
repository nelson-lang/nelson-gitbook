# onCleanup

Tâches de nettoyage à la fin de l'exécution d'une fonction

## 📝 Syntaxe

- onCleanup(function_handle)
- obj = onCleanup(function_handle)

## 📥 Argument d'entrée

- function_handle - un handle de fonction à exécuter lors du nettoyage.

## 📤 Argument de sortie

- obj - un objet onCleanup qui exécute le handle de fonction spécifié lors du nettoyage.

## 📄 Description

<b>onCleanup</b> crée un objet qui exécute un handle de fonction spécifié lorsque l'objet est effacé ou sort de la portée, permettant ainsi d'effectuer automatiquement des tâches de nettoyage à la fin de l'exécution d'une fonction.

<b>cancel(obj)</b> ou <b>obj.cancel()</b> empêche l'exécution de la fonction de nettoyage.

## 💡 Exemples

```matlab
a = onCleanup(@() disp('Cleanup executed'))
clear a
```

```matlab
function cleanupExample(doCancel)
  disp('Display Figure')
  f = figure;
  cleanup = onCleanup(@()atTheEnd(f));
  if doCancel
    cleanup.cancel(); % other syntax: cancel(cleanup);
  end
  sleep(5)
end

function atTheEnd(f)
disp('Close Figure')
close(f)
end

cleanupExample(false);
cleanupExample(true);


```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.16.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
