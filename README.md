# Subtle Memory Leak in Objective-C with ARC

This repository demonstrates a common, yet subtle, memory leak scenario in Objective-C when using Automatic Reference Counting (ARC).  The leak stems from improper management of a strong property, where allocated objects are retained but never released.

The `bug.m` file contains the faulty code. The `bugSolution.m` file provides a corrected version, showcasing the best practice to prevent this type of memory leak.

## How to Reproduce

1. Clone the repository.
2. Open the project in Xcode.
3. Run the application (observe memory usage).