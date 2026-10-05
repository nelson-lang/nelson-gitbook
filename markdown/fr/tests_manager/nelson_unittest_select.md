# nelson.unittest.select

Filtrer une suite de tests decouverte.

## 📝 Syntaxe

- selected = nelson.unittest.select(suite, Name, Value)

## 📥 Argument d'entrée

- suite - TestSuite retournee par nelson.unittest.discover.
- Name, Value - options de selection : Name, Module, File, Kind, Tags, ExcludeTags, Match et Exclude.

## 📤 Argument de sortie

- selected - TestSuite filtree conservant les metadonnees de filtrage.

## 📄 Description


<b>nelson.unittest.select</b> applique les filtres de selection sans executer les tests. 

<b>Kind</b> accepte <b>test</b>, <b>bug</b>, <b>bench</b>, <b>all\_tests</b> et <b>all</b>.

## 💡 Exemple



```matlab

suite = nelson.unittest.select(suite, 'Tags', {'fast'}, 'ExcludeTags', {'gui'});

```


## 🔗 Voir aussi

[nelson.unittest.discover](../tests_manager/nelson_unittest_discover.md), [nelson.unittest.plan](../tests_manager/nelson_unittest_plan.md).