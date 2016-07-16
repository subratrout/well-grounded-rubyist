# Ruby keeps file and I/O operations object-oriented
# Any file handle, standard input streams are objects
# puts is only procedural when it’s operating on the standard output stream
# 
# The memory space of a Ruby program is a kind of idealized space, where objects come into existence
# and talk to each other.Given the fact that I/O and system command execution involve stepping outside 
# this idealized space, Ruby does a lot to keep objects in the mix.
# 
# 
# IO objects represent readable and/or writable connections to disk files, keyboards, screens, and other devices.
# Upon sending message to IO object it execute the method and return the results
# 
# When a Ruby program fires up, it is aware of standard input, output and error streams which are encapsulated in
# instances of IO
# 
p STDERR.class

STDERR.puts("Problem!")

STDERR.write("Problem!\n")


#IO Objects as Enumerables
# IO objects iterate based on the global input record separator, which is stored in the global variable $/
# 