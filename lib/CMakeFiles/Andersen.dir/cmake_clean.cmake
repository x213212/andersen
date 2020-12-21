file(REMOVE_RECURSE
  "libAndersen.pdb"
  "libAndersen.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/Andersen.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
