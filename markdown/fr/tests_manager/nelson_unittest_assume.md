# nelson.unittest.assume

Sauter un test quand une precondition runtime n'est pas satisfaite.

## 📝 Syntaxe

- nelson.unittest.assume(condition)
- nelson.unittest.assume(condition, reason)

## 📥 Argument d'entrée

- condition - scalaire logique qui doit etre vrai pour continuer le test courant.
- reason - texte optionnel expliquant pourquoi le test est ignore.

## 📄 Description


<b>nelson.unittest.assume</b> marque le test courant comme ignore quand une precondition runtime est fausse.

## 💡 Exemple



```matlab
nelson.unittest.assume(ispc(), 'Requires Windows');
```


## 🔗 Voir aussi

[nelson.unittest.skip](../tests_manager/nelson_unittest_skip.md), [skip_testsuite](../tests_manager/test_skip_testsuite.md).