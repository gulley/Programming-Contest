# Programming-Contest

This repo manages an automatically graded MATLAB programming contest. As a contestant, 
you are trying to solve a Knapsack optimization problem. You are given a vector `x` and
a limit `lim`. Your job is to write a function called `solver` that will
find elements in `x` that, when added together,
get as close as possible to `lim` without exceeding it. The output `ix` should
return the indices to elements that you select. 

The function signature should look like this:

```
function ix = solver(x,lim)
  ix = [];
end
```

When a new solver.m file is submitted, a GitHub action automatically 
evaluates it against the test suite and stores the result.

# The Contest Machinery

This section is about building the contest machinery itself.

- Make a plot showing the score as it improves.
- Hide the test suite from the contestants.
- Separate the contest machinery from the actual individual contest
- Move to a model based on pull requests instead of direct commits to main.
- How to manage a queue of submissions?
- How to manage automatic handling of pull requests?
- Port to GitLab

