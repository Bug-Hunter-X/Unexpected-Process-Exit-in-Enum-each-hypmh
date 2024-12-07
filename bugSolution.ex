```elixir
list = [1, 2, 3, 4, 5]

# Using Enum.map to avoid premature termination
Enum.map(list, fn x ->
  if x == 3 do
    # Instead of exiting, handle the condition differently
    {:error, x}
  else
    {:ok, x}
  end
end)
|> Enum.each(fn
  {:ok, x} -> IO.puts(x)
  {:error, x} -> IO.puts("Error encountered: #{x}")
end)

#Alternatively using a loop for more explicit control
for x <- list do
  if x == 3 do
    IO.puts("Encountered 3. Skipping...")
  else
    IO.puts(x)
  end
end
```