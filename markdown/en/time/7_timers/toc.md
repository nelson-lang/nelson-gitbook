# toc

Read the stopwatch timer.

## 📝 Syntax

- toc()
- t = toc()
- toc(timer\_value)
- t = toc(timer\_value)

## 📥 Input argument

- timer\_value - a unsigned integer 64 bit: value of internal timer of the tic function.

## 📤 Output argument

- t - a double: number of seconds since last call to tic function (Precision in order of millisecond).

## 📄 Description


The sequence of commands<b>tic(); commands ; t = toc() </b> returns the number of seconds required for the commands. 

Consecutive calls to the toc function with no input return the elapsed since the most recent tic. 

Consecutive calls to the toc function with the same timerVal input return the elapsed time since the tic function call that corresponds to that input.

## 💡 Example



```matlab
tic()
sleep(10)
toc()
sleep(10)
toc()


```


## 🔗 See also

[tic](../../time/1_create_date_time_arrays/datenum.md), [clock](../../time/1_create_date_time_arrays/datevec.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
