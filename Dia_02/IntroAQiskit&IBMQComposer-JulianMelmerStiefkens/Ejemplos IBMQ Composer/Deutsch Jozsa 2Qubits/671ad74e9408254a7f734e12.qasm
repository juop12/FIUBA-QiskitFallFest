OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[4];

x q[2];
h q[0];
h q[1];
h q[2];
barrier q[0];
barrier q[1];
barrier q[2];
z q[1];
barrier q[0];
barrier q[1];
barrier q[2];
h q[0];
h q[1];
barrier q; // @phaseDisk
measure q[0] -> c[0];
measure q[1] -> c[1];

// @columns [0,1,1,1,2,2,2,4,6,6,6,7,7,8,9,10]
