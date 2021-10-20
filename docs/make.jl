using DemoPackageKaining
using Documenter

DocMeta.setdocmeta!(DemoPackageKaining, :DocTestSetup, :(using DemoPackageKaining); recursive=true)

makedocs(;
    modules=[DemoPackageKaining],
    authors="kalfton <36215989+kalfton@users.noreply.github.com> and contributors",
    repo="https://github.com/kalfton/DemoPackageKaining.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackageKaining.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://kalfton.github.io/DemoPackageKaining.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/kalfton/DemoPackageKaining.jl",
    devbranch="main",
)
