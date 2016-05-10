# When you just want to write a quick script—a few commands stuffed in a file and executed. It’s sometimes 
# more convenient to write method definitions at the top level of your script and then call them on top-level objects 
# than to wrap everything in class definitions. When you do this, you’re coding in the context of the top-level default
# object, main, which is an instance of Object brought into being automatically for the sole reason that something has
# to be self, even at the top level.

