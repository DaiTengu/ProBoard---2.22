# ProBoard 2.22 Source code.

# Setup

You need the following tools installed to compile ProBoard.

* Borland C++ 3.1

Other versions of Borland C++ may work, however Borland C++ 5.0 has known
issues with overlays which may prevent them from working. 

Please make sure that the ```\BORLANDC\BIN``` directory is in your path,
as this is the easiest way.  Otherwise you need to make using the fully
qualified path like: "\BORLANDC\BIN\MAKE.EXE"

# Compiling

These examples assume Proboard source is in ```\PB``` and Borland C++'s bin
director is in  your PATH.

Once you have fetched the source using ```git clone``` you should build it 
as the following:

```
cd \PB 
make all
```

That's it, you should now have a ```ProBoard.exe``` in your ```\PB``` directory.

# Creating a new distribution.

A proboard distribution is what you zip up to share with others as a new release, you
can generate these easily using the borland make commnad.

To create a new distribution, you run the following:

```
cd \PB 
make dist
```


# Cleaning up intermediate files

if you want to clean up everything (delete the derived objects) you can run the 
following command:

```
make clean
```


