# sioemit

Émettre un événement vers le client web.

## 📝 Syntaxe

- sioemit(name, message)
- sioemit(name)

## 📥 Argument d'entrée

- name - une chaîne : nom de l'événement
- message - une chaîne : message à émettre

## 📄 Description

<b>sioemit</b> émet un événement vers le client.

## 💡 Exemple

```matlab
sioemit('event_demo', jsonencode(eye(3,3)))
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
