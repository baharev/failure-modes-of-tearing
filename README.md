# Failure Modes of Tearing and a Novel Robust Approach

The source files in this repo are the Modelica and AMPL source files 
of Examples 1, 2, and 3 of the academic paper:

**A. Baharev, A. Neumaier, H. Schichl. [Failure Modes of Tearing and a Novel Robust Approach](https://github.com/baharev/failure-modes-of-tearing/blob/master/failure_modes_of_tearing.pdf).** Proceedings of the 12th International Modelica Conference, pages 353-362. May 15-17, 2017, Prague, Czech Republic ([DOI 10.3384/ecp17132353](https://doi.org/10.3384/ecp17132353)).

**Examples 1 and 2** demonstrate that applying tearing can lead to 
completely **incorrect results** or to initialization failure. However, 
correct results are obtained for both examples when tearing is turned 
off altogether. 

**Example 3 is about performance**: It shows that tearing can slow down 
the solution process drastically. Dymola can easily hang for minutes on 
problems that are otherwise solvable in milliseconds in AMPL, without
tearing.
