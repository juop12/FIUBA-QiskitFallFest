OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[4];

x q[1];
h q[0];
h q[1];
barrier q[0];
barrier q[1];
barrier q[0];
barrier q[1];
h q[0];
barrier q; // @phaseDisk
measure q[0] -> c[0];

// @columns [0,1,1,2,2,6,6,7,8,9]
