:: We would like to support symlinks correctly but too much is broken for us to be
:: able to do that (os.symlink, os.path.realpath
:: See: https://bugs.python.org/file38057/issue9949-v4.patch for a os.path.realpath fix)

:: Add chromedriver to PATH so chromedriver_binary install can find it
:: It is not clear to me if this is best here or in chromedriver-binary itself!
:: pushd %LIBRARY_BIN%
::   mklink chromedriver.exe chromedriver-binary.exe
::  dir /s
:: popd
python -m pip install --no-deps --ignore-installed --verbose --no-build-isolation .
dir %SP_DIR%\chromedriver_binary\chromedriver.exe
del %SP_DIR%\chromedriver_binary\chromedriver.exe
