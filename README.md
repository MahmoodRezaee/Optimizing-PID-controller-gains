# Optimizing-PID-controller-gains-in-MATLAB-SIMULINK
Optimizing PID controller gains to model the performance of a quadcopter:

This project presents an optimization-based method to tune the gains of the PID controller to control the altitude and attitude of a quadcopter using MATLAB and Simulink. The quadcopter model is derived using Newton’s equations of motion and implemented in Simulink. The optimization method used is “random search” and “reduced gradient method”.

The optimization methods are utilized to minimize the quality indicator. It was necessary for this minimization problem to have constraints on PID gains to be solvable and have a minimum. The modeling of the quadcopter and implementation of the optimization methods is done using MATLAB and Simulink which are one of the best modeling programs and have several toolboxes to ensure fast optimization of complex criteria. The optimization results were considered without the input signal or the penalty coefficient.

Comparing results from these two methods shows that the random search method performs accurately in finding the optimal gains.

PLEASE READ report.pdf FOR MORE DETAILS.
