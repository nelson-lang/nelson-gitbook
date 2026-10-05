# sleep

Suspend code execution.

## 📝 Syntax

- sleep(sec)

## 📥 Input argument

- n - a double: duration of the sleep in seconds (decimal number).

## 📄 Description


<b>sleep</b> stops Nelson processing any instruction for a specified number of seconds. 

CTRL-C interruption stops <b>sleep</b>.

## 💡 Example



```matlab
tic();sleep(1);toc()
tic();sleep(0.1);toc()
tic();sleep(0.01);toc()
```


## 🔗 See also

[tic](../../time/7_timers/tic.md), [toc](../../time/7_timers/toc.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
