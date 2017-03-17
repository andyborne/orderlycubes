# Orderly Cubes #

### Info ###
orderlycubes.rb demonstrates a base-10 repeating number pattern where adding the cubes of certain numbers appears to simply concatenate the original bases, as visualized [in this tweet](https://twitter.com/pickover/status/842205064194347008).

![](https://pbs.twimg.com/media/Bt-O94QCcAAnsmr.jpg:large)

### Dependencies ###
* [Ruby](https://www.ruby-lang.org/en/), obviously.
* There is one recommended gem dependency, `colorize`. The script will either detect it and use it or not detect it and not use it.

### Usage ###
* `> ruby orderlycubes.rb`

Or, on a Unix-like shell:

* `> chmod +x orderlycubes.rb; ./orderlycubes.rb`

The script accepts one optional argument, which must consist only of numerical digits, and sets the number of iterations to calculate (default: 33).

* `> ruby orderlycubes.rb 3`
