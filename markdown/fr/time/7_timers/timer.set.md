# timer.set

Definir les valeurs des proprietes de timer.

## 📝 Syntaxe

- set(t, 'PropertyName', PropertyValue, ...)
- set(t, values)
- t.PropertyName = PropertyValue

## 📥 Argument d'entrée

- t - Objet timer ou tableau d'objets timer.
- PropertyName - Nom d'une propriete de timer modifiable.
- PropertyValue - Nouvelle valeur de la propriete.
- values - Structure scalaire dont les champs sont des noms de proprietes de timer. Les champs en lecture seule sont ignores.

## 📄 Description

<b>set</b> modifie les proprietes de timer accessibles en ecriture. Ces proprietes incluent <b>BusyMode</b>, <b>ErrorFcn</b>, <b>ExecutionMode</b>, <b>Name</b>, <b>ObjectVisibility</b>, <b>Period</b>, <b>StartDelay</b>, <b>StartFcn</b>, <b>StopFcn</b>, <b>Tag</b>, <b>TasksToExecute</b>, <b>TimerFcn</b> et <b>UserData</b>.

Ne modifiez pas les proprietes de planification comme <b>BusyMode</b>, <b>ExecutionMode</b>, <b>Period</b> ou <b>StartDelay</b> pendant qu'un timer est en cours d'execution.

## 💡 Exemples

Configurer un timer avec des paires nom de propriete et valeur.

```matlab
t = timer();
set(t, 'Name', 'setExample', ...
  'ExecutionMode', 'fixedSpacing', ...
  'Period', 0.05, ...
  'TasksToExecute', 2, ...
  'TimerFcn', @(src, event) disp(get(src, 'Name')));
start(t);
wait(t);
delete(t);
```

Definir plusieurs proprietes depuis une structure.

```matlab
t = timer('TimerFcn', @(src, event) disp('done'));
values = struct();
values.Tag = 'batch';
values.StartDelay = 0.1;
set(t, values);
get(t, 'Tag')
delete(t);
```

## 🔗 Voir aussi

[timer](../../time/timer.md), [get](../../time/timer.get.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
