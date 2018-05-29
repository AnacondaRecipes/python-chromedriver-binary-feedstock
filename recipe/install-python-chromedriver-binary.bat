:: We would like to support symlinks correctly but too much is broken for us to be
:: able to do that (os.symlink, os.path.realpath
:: See: https://bugs.python.org/file38057/issue9949-v4.patch for a os.path.realpath fix)

:: Add chromedriver to PATH so chromedriver_binary install can find it
:: It is not clear to me if this is best here or in chromedriver-binary itself!
:: pushd %LIBRARY_BIN%
::   mklink chromedriver.exe chromedriver-binary.exe
::  dir /s
:: popd
:: Embeds _h_env into the Windows launcher 'Scripts'.
:: python -m pip install --no-deps --ignore-installed --verbose --no-build-isolation .
python setup.py install --single-version-externally-managed --record=record.txt
dir %SP_DIR%\chromedriver_binary\chromedriver.exe
del %SP_DIR%\chromedriver_binary\chromedriver.exe
