What is FreeImage ?
-----------------------------------------------------------------------------
FreeImage is an Open Source library project for developers who would like to support popular graphics image formats like PNG, BMP, JPEG, TIFF and others as needed by today's multimedia applications.
FreeImage is easy to use, fast, multithreading safe, and cross-platform (works with Windows, Linux and Mac OS X).

Thanks to it's ANSI C interface, FreeImage is usable in many languages including C, C++, VB, C#, Delphi, Java and also in common scripting languages such as Perl, Python, PHP, TCL, Lua or Ruby.

The library comes in two versions: a binary DLL distribution that can be linked against any WIN32/WIN64 C/C++ compiler and a source distribution.
Workspace files for Microsoft Visual Studio provided, as well as makefiles for Linux, Mac OS X and other systems.


Why do we need this repo?
-----------------------------------------------------------------------------

We in Debian are having a lot of [patches](https://salsa.debian.org/science-team/freeimage/-/tree/debian/sid/debian/patches)
which need to go to upstream. It looks like [original upstream](https://sourceforge.net/p/freeimage/svn/HEAD/tree/) is not so active any more.

Some ToDos:

- Put all patches from Debian
- Add Github-actions to build the library
- Use cmake build system -> remove old makefiles
- Add ideas listed in the [dev-forum](https://sourceforge.net/p/freeimage/discussion/36109/)

Feel free to prepare merge requests.