# fetchNext

Retrieve next unread outputs from FevalFuture array.

## 📝 Syntax

- [idx, y1, ... , ym] = fetchNext(f)
- [idx, y1, ... , ym] = fetchNext(f, timeout)

## 📥 Input argument

- f - FevalFuture object
- timeout - timeout seconds: waits for a maximum of timeout seconds for a result in f to become available.

## 📤 Output argument

- idx - Index of the FevalFuture array, returned as an integer scalar.
- y1, ... , ym - outputs

## 📄 Description

<b>[idx, y1, ... , ym] = fetchNext(f)</b> retrieves index<b>idx</b> of the new readable <b>FevalFuture</b> object in the array<b>f</b> that is finished, and <b>m</b> results from that FevalFuture as<b>Y1, ... , Ym</b>.

## 💡 Example

```matlab

tic()
N = 100;
for idx = N:-1:1
    F(idx) = parfeval(backgroundPool,str2func('rank'),1,magic(idx));
end
results = zeros(1,N);
for idx = 1:N
    [finishedIdx, result] = fetchNext(F);
    results(finishedIdx) = result;
    disp(sprintf('Result: %d', result));
end
toc()

```

## 🔗 See also

[parfeval](../parallel/parfeval.md), [fetchOutputs](../parallel/fetchOutputs.md), [backgroundPool](../parallel/backgroundPool.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
