# Elixir Enum.each and Process.exit

This example demonstrates a subtle issue that can arise when using `Process.exit` inside an `Enum.each` callback in Elixir.  The program intends to print the elements of a list; however, it terminates prematurely when it encounters the number 3. This is because `Process.exit` terminates the current process, interrupting the `Enum.each` iteration.

The solution provides safer alternatives to handle such scenarios.