# tic

Starts a stopwatch timer.

## 📝 Syntax

- tic()
- t = tic()

## 📤 Output argument

- t - a unsigned integer 64 bit: value of internal timer of the tic function.

## 📄 Description

The sequence of commands <b>tic(); commands ; t = toc() </b> returns the number of seconds required for the commands.

Consecutive <b>tic</b> commands overwrite the tic timer.

## 💡 Example

```matlab
tic()
sleep(10)
toc()

tic()
sleep(10)
t = toc()

```

## 🔗 See also

[toc](../time/toc.md), [sleep](../time/sleep.md), [time](../time/time.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
