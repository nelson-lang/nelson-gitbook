# continue

continuer l'exécution dans une boucle.

## 📝 Syntaxe

- continue

## 📄 Description

L'instruction<b>continue</b> peut être utilisée à l'intérieur d'une boucle <b>for</b> ou <b>while</b>.

L'instruction <b>continue</b> est utilisée pour transférer le contrôle à l'itération suivante d'une boucle.

## 💡 Exemple

```matlab

for i=1:10
  if (i == 5)
    continue;
    disp('never here')
    disp(i)
  else
    disp(i)
  end
end

```

## 🔗 Voir aussi

[for](../interpreter/for.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
