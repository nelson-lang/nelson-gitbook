# maxNumCompThreads

Set/Get maximum number of computational threads.

## 📝 Syntax

- T = maxNumCompThreads()
- PREVIOUS_T = maxNumCompThreads(T)
- PREVIOUS_T = maxNumCompThreads('automatic')

## 📥 Input argument

- T - an integer value: number of threads used by Nelson for computations.

## 📤 Output argument

- T - an integer value: number of threads used by Nelson for computations.
- PREVIOUS_T - an integer value: previous number of threads used by Nelson for computations.

## 📄 Description

<b>maxNumCompThreads</b> returns the number of threads used by Nelson for computations.

<b>maxNumCompThreads(T)</b> sets the maximum number of computational threads. This modification is only available for current session.

By default, maxNumCompThreads uses OMP_NUM_THREADS environment variable or numbers of detected physical cores on Windows and logical cores on others platforms.

Limitation: On Windows 32 bits, due to MKL and OpenMP,<b>maxNumCompThreads</b> returns 4 max even if there is more core.

## 💡 Example

```matlab
maxNumCompThreads
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
