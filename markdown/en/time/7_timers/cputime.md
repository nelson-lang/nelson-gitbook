# cputime

Return the CPU time used by your Nelon session.

## 📝 Syntax

- t = cputime()

## 📤 Output argument

- t - a double: time in seconds.

## 📄 Description


<b>cputime()</b> returns the CPU time used by Nelson session. 

To measure performance, it is better to use tic and toc functions.

## 💡 Example



```matlab
t1 = cputime;
sleep(10);
t2 = cputime;
t2 - t1

% versus tic toc
tic()
sleep(10);
toc()
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
