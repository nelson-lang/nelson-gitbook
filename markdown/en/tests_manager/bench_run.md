# bench\_run

Run benchmarks

## 📝 Syntax

- status = bench\_run()
- status = bench\_run(targets)
- status = bench\_run(targets, Name, Value)

## 📥 Input argument

- targets - module name, module names, benchmark file, or benchmark files.
- Name, Value - options accepted by nelson.unittest.run.

## 📤 Output argument

- status - logical: true when all selected benchmarks succeed.

## 📄 Description


<b>bench\_run</b> discovers and executes only 'bench\_\*.m' files. 

Benchmarks always run in child processes. One benchmark process is used with up to eight available threads; two benchmark processes are used when more than eight threads are available. 

Use <b>nelson.unittest.run</b> with <b>Kind</b> set to <b>bench</b> to obtain structured results.

## 💡 Example



```matlab
bench_run('string')
```


## 🔗 See also

[test_run](../tests_manager/test_run.md), [nelson.unittest.run](../tests_manager/nelson_unittest_run.md).
<!--
## 👤 Author

Allan CORNET
-->
