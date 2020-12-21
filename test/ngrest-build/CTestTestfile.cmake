# CMake generated Testfile for 
# Source directory: /home/x213212/softansyis/gnn/andersen/test/ngrest
# Build directory: /home/x213212/softansyis/gnn/andersen/test/ngrest-build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(json "./ngrestjsontest")
set_tests_properties(json PROPERTIES  WORKING_DIRECTORY "/home/x213212/softansyis/gnn/andersen/test/ngrest-build/deploy/tests" _BACKTRACE_TRIPLES "/home/x213212/softansyis/gnn/andersen/test/ngrest/CMakeLists.txt;122;add_test;/home/x213212/softansyis/gnn/andersen/test/ngrest/CMakeLists.txt;0;")
add_test(server_client "./test_server_client")
set_tests_properties(server_client PROPERTIES  WORKING_DIRECTORY "/home/x213212/softansyis/gnn/andersen/test/ngrest-build/deploy/tests" _BACKTRACE_TRIPLES "/home/x213212/softansyis/gnn/andersen/test/ngrest/CMakeLists.txt;123;add_test;/home/x213212/softansyis/gnn/andersen/test/ngrest/CMakeLists.txt;0;")
subdirs("core")
subdirs("tools")
subdirs("services")
subdirs("modules")
subdirs("tests")
subdirs("examples")
