# ssdelete

Remove inputs, outputs and states from state-space system.

## 📝 Syntax

- sysOut = ssselect(sysIn, INPUTS, OUTPUTS)
- sysOut = ssselect(sysIn, INPUTS, OUTPUTS, STATES)

## 📥 Input argument

- sysIn - state-space model
- INPUTS - indexes into the system inputs
- OUTPUTS - indexes into the system outputs
- STATES - states removed from the system.

## 📤 Output argument

- sysOut - state-space model: subsystem with removed inputs, outputs and states.

## 📄 Description

<b>ssdelete</b> removes inputs, outputs and states from state-space system.

## 💡 Example

```matlab
A = [33,2,5; 23,200,2; 9,2,45];
B = [4,5; 12,5; 82,1];
C = [34,56,2; 6,2,112];
D = [2,0; 0,19];
sys1 = ss(A, B, C, D);
inputs = 1;
outputs = 1;

R = ssdelete(sys1, inputs, outputs)
```

## 🔗 See also

[ssselect](../control_system/ssselect.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
