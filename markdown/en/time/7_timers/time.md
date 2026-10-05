# time

Return the current time as the number of seconds or nanoseconds since the epoch.

## 📝 Syntax

- t\_s = time()
- t\_s = time('s')
- t\_ns = time('ns')

## 📤 Output argument

- t\_s - a double: value of current time as the number of seconds since the epoch.
- t\_ns - a unsigned integer 64 bit: value of current time as the number of nanoseconds since the epoch.

## 📄 Description


<b>time</b> returns the current time as the number of seconds or nanoseconds since the epoch. 

The epoch is referenced to 00:00:00 UTC (Coordinated Universal Time) 1 Jan 1970.

## 💡 Example



```matlab
t1=time()
sleep(10)
t2 = time()
t2 - t1

```


## 🔗 See also

[tic](../../time/7_timers/tic.md), [sleep](../../time/7_timers/sleep.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
