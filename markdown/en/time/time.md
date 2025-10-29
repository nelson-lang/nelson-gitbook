# time

Return the current time as the number of seconds or nanoseconds since the epoch.

## 📝 Syntax

- t_s = time()
- t_s = time('s')
- t_ns = time('ns')

## 📤 Output argument

- t_s - a double: value of current time as the number of seconds since the epoch.
- t_ns - a unsigned integer 64 bit: value of current time as the number of nanoseconds since the epoch.

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

[tic](../time/tic.md), [sleep](../time/sleep.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
