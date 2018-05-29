mkdir -p "${PREFIX}"/bin
mv chromedriver/chromedriver "${PREFIX}"/bin/chromedriver-binary
if [[ ${target_platform} == osx-64 ]]; then
  ${INSTALL_NAME_TOOL:-install_name_tool} -change /usr/lib/libc++.1.dylib @rpath/libc++.1.dylib "${PREFIX}"/bin/chromedriver-binary
fi
