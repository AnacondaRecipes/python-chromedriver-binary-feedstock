# Add chromedriver to PATH so chromedriver_binary install can find it
# It is not clear to me if this is best here or in chromedriver-binary itself!
pushd ${PREFIX}/bin
  ln -s chromedriver-binary chromedriver
popd
# Embeds _h_env into the Windows launcher 'Scripts'.
# python -m pip install --no-deps --ignore-installed --verbose --no-build-isolation .
python setup.py install --single-version-externally-managed --record=record.txt
rm -rf ${SP_DIR}/chromedriver_binary/chromedriver
ln -s ${PREFIX}/bin/chromedriver ${SP_DIR}/chromedriver_binary/chromedriver
