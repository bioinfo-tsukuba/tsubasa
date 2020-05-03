using ArgParse

println("####################\n   CLI test\n####################")

function parse_commandline()
    s = ArgParseSettings()
    return parse_args(s)
end


function main()
    parsed_args = parse_commandline()
    println(parsed_args)
    println("Done.")
end

main()

