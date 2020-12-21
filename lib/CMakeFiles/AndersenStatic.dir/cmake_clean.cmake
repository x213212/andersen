file(REMOVE_RECURSE
  "libAndersenStatic.a"
  "libAndersenStatic.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/AndersenStatic.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
