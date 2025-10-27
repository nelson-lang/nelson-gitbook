# afterEach

Run function after each function finish running in the background.

## 📝 Syntax

- B = afterEach(F, fcn, n)

## 📥 Input argument

- F - Input Future object (scalar or array).
- fcn - Function handle: Function to run after all input futures.
- n - Number of output arguments.

## 📤 Output argument

- B - AfterEachFuture object.

## 📄 Description

<b>B = afterEach(F, fcn, n)</b> returns a AfterEachFuture object <b>B</b>.

Function <b>fcn</b> is automatically runned after each element in the Future array <b>F</b> was finished.

If any of the elements in <b>F</b> encounters an error, the <b>Error</b> property of <b>B</b> contains an error.

## 💡 Example

```matlab
pool = backgroundPool()
fptrRand = str2func('rand')
fptrMax = str2func('@(r) max(r)')
fptrMin = str2func('@(r) min(r)')
for idx= 1:10
    f(idx) = parfeval(pool, fptrRand, 1, 1000, 1);
end
maxFuture = afterEach(f, fptrMax, 1);
minFuture = afterAll(maxFuture, fptrMin, 1);
fetchOutputs(minFuture)
fetchOutputs(maxFuture)
```

## 🔗 See also

[backgroundPool](../parallel/backgroundPool.md), [fetchOutputs](../parallel/fetchOutputs.md), [afterAll](../parallel/afterAll.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
