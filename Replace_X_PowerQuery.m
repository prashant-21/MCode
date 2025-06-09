let
    // Sample table
    Source = Table.FromRecords({
        [Value="x"],
        [Value=" x "],
        [Value="OD355 x OD315"],
        [Value="hello"],
        [Value="testx"],
        [Value="x test"]
    }),

    // Replace "x" only when it does not have spaces before and after
    TransformedTable = Table.TransformColumns(Source, {"Value", each 
        if Text.Contains(_, " x ") then _ // Keep if already has spaces
        else Text.Replace(_, "x", " x ") // Replace only when "x" is standalone or attached
    })
    
in
    TransformedTable
