set -x
echo PATH=$PATH
find .
mkdir -p "${LIBRARY_BIN}"
if [[ ${target_platform} =~ win.* ]]; then
  mv chromedriver/chromedriver.exe "${LIBRARY_BIN}"/chromedriver-binary.exe
else
  mv chromedriver/chromedriver "${LIBRARY_BIN}"/chromedriver-binary.exe
fi
if [[ ${target_platform} == osx-64 ]]; then
  ${INSTALL_NAME_TOOL:-install_name_tool} -change /usr/lib/libc++.1.dylib @rpath/libc++.1.dylib "${PREFIX}"/bin/chromedriver-binary
fi
exit 1
