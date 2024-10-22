In Power Query M language, the each keyword is used to create a function that can be applied to each row in a table. It’s a shorthand way to define an anonymous function.

Let’s say you have a table with a column named “Sales” and you want to add a new column ("10% of Sales") that calculates 10% of each sale. You can use the each keyword to create this new column. Here’s how you can do it:

// Sample table
let
    Source = Table.FromRecords({
        [Sales = 100],
        [Sales = 200],
        [Sales = 300]
    }),

    // Add a custom column to calculate 10% of each sale
    AddPercentageColumn = Table.AddColumn(Source, "10% of Sales", each [Sales] * 0.1)
in
    AddPercentageColumn

In this example:

Source is a sample table with a single column “Sales”.
Table.AddColumn(Source, "10% of Sales", each [Sales] * 0.1) adds a new column named “10% of Sales”.
The each keyword is used to define a function that takes a single argument (implicitly the current row of the table) and returns the result of 10% of the value in the “Sales” column in a new  ‘10% of Sales’ column.” .
[Sales] refers to the “Sales” column in the current row.
[Sales] * 0.1 calulates the value in the “Sales” column.
So, each each [Sales] * 0.1 is a concise way to say “for each row, take the value in the ‘Sales’ column, calulate 10% of the value in the “Sales” column, and use that as the value for the new ‘10% of Sales’ column.”
