To compile: gcc -Wall -pthread -o "ResourceAllocator" "ResourceAllocator.c"

ResourceAllocator asks for the running simulation time (in ms), the number
of processes, the number of resources, and the type of strategy you want to use.
It will then generate a 2D matrices with random values that correspond
to the hold, need, max, and request matrices seen in class. In my case,
instead of initializing the hold values to 0 resources, the system begins
with random values. This might cause an issue with the detection algorithm if
the initial random values put the system in an unsafe state in the beginning.
A 1D vector is also initialize randomly to represent the available
resources. The range of resources allocated can be easily change by changing
the hardcoded values from line 385 to line 391. The matrices' values can be printed
with the printResources() method.
All the processes follow the request-run-release-run-... pattern. The run time
is simulated by the function usleep(rand()%10). All the running times for each
process are conserved to determine which algorithm is the more efficient.

Observations
Even though both isDeadlock and isSafe are running at m * n^2 time complexity,
some differences can be seen when running the program with different inputs.
When the size of resources increase, the deadlock algorithm performs
better than the avoidance one, because less deadlocks occurred.
However, if the we increase the simulation time, deadlocks are more likely
to happen, which means that there are more chances for the detection algorithm
to kill a process and to set its running time to 0.
The performance of the detection algorithm compare to the avoidance algorithm is
inversely proportional to the number of deadlocks. In general, the number of deadlocks
increases with the number of different resources types (especially when there are only
a few available) and the number of processes.
