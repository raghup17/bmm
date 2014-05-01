if { $argc != 2} {
	puts "Two arguments required!"
	exit -1
}

set arg0 [lindex $argv 0]
set arg1 [lindex $argv 1]
puts "arg0 is $arg0"
puts "arg1 is $arg1"
set projPath "${arg0}/${arg1}"
puts "projPath is $projPath"

