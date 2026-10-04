# withtol

Time tolerance for timetable row subscripting.

## 📝 Syntax

- S = withtol(rowTimes, tol)

## 📥 Input argument

- rowTimes - datetime or duration vector, or text converted to datetime.
- tol - Nonnegative scalar duration.

## 📤 Output argument

- S - Timetable row subscript.

## 📄 Description

<b>withtol</b> creates a row subscript that selects the rows of a timetable whose row times are within <b>tol</b> of the times in <b>rowTimes</b> (bounds included). The rows are listed time by time, in the order of <b>rowTimes</b>.

It can be used in <b>TT(S, vars)</b>, <b>TT{S, vars}</b>, <b>TT.name(S)</b>, and in assignments and deletions.

The tolerance must be less than half the smallest interval between distinct times of <b>rowTimes</b>, so that no row is selected twice. The times must have the same type as the row times of the timetable.

## 💡 Example

```matlab
TT = timetable(seconds([1; 2; 2.05; 3; 4]), (1:5)', 'VariableNames', {'A'});
S = withtol(seconds([2 3.9]), seconds(0.2))
TT(S, :)
TT.A(withtol(seconds(2), seconds(0.1)))

```

## 🔗 See also

[timerange](../../table/timerange.md), [timetable](../../table/timetable.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
