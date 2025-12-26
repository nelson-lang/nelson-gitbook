# onCleanup

Cleanup tasks upon function completion

## 📝 Syntax

- onCleanup(function_handle)
- obj = onCleanup(function_handle)

## 📥 Input argument

- function_handle - a function handle to execute upon cleanup.

## 📤 Output argument

- obj - an onCleanup object that executes the specified function handle upon cleanup.

## 📄 Description

<b>onCleanup</b> creates an object that executes a specified function handle when the object is cleared or goes out of scope, allowing for cleanup tasks to be performed automatically upon function completion.

<b>cancel(obj)</b> or <b>obj.cancel()</b> prevents the cleanup function from being executed.

## 💡 Examples

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

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
