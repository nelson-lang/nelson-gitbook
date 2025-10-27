# break

sortir d'une boucle.

## 📝 Syntaxe

- break

## 📄 Description

L'instruction <b>break</b> est utilisée pour sortir prématurément d'une boucle.

L'instruction <b>break</b> peut être utilisée à l'intérieur d'une boucle <b>for</b> ou <b>while</b>.

## 💡 Exemple

```matlab

for i = 1:10
  if i == 5
   disp('i == 5');
   break;
  end
  disp(i)
end

```

## 🔗 Voir aussi

[return](../interpreter/abort.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
