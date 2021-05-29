# Make with Perl.

![Test](https://github.com/philiprbrenan/MakeWithPerl/workflows/Test/badge.svg)

Integrated development environment for
[Geany](https://www.geany.org/download/releases/) or similar editor for
compiling running and documenting programs written in a number of languages.

# Installation

Install from [CPAN](https://metacpan.org/release/MakeWithPerl)

    sudo [CPAN](https://metacpan.org/author/PRBRENAN) [install](https://en.wikipedia.org/wiki/Installation_(computer_programs)) MakeWithPerl

# Configuration

Configure **Geany->Build->Set Build Commands** as shown in the following image: ![image](https://github.com/philiprbrenan/MakeWithPerl/blob/main/Geany.png).

The text to enter is:

    [Perl](http://www.perl.org/) -M"MakeWithPerl" -e"MakeWithPerl::makeWithPerl" -- --compile "%d/%f"

    [Perl](http://www.perl.org/) -M"MakeWithPerl" -e"MakeWithPerl::makeWithPerl" -- --run "%d/%f"

    .+ at (.+) line ([0-9]+).*

    [Perl](http://www.perl.org/) -M"MakeWithPerl" -e"MakeWithPerl::makeWithPerl" --  --doc "%d/%f"

    [Perl](http://www.perl.org/) -M"MakeWithPerl" -e"MakeWithPerl::makeWithPerl" -- --upload "%d/%f"

    [Perl](http://www.perl.org/) -M"MakeWithPerl" -e"MakeWithPerl::makeWithPerl" --  --doc "%d/%f"
