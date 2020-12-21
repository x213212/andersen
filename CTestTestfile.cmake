# CMake generated Testfile for 
# Source directory: /root/andersen
# Build directory: /root/andersen
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(AndersTest "/root/andersen/unittest/AndersTest")
set_tests_properties(AndersTest PROPERTIES  _BACKTRACE_TRIPLES "/root/andersen/CMakeLists.txt;33;add_test;/root/andersen/CMakeLists.txt;0;")
subdirs("lib")
subdirs("unittest")
