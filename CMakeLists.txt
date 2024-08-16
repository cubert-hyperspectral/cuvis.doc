cmake_minimum_required(VERSION 3.20.0)
PROJECT(cuvis_doc C CXX)

set(target_name cuvis_doc)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cuvis.c/")
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cuvis.cpp/")
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

find_package(Cuvis REQUIRED 3.2.0)
find_package(CuvisCpp REQUIRED)

add_subdirectory(cuvis.pyil)

find_package(Sphinx REQUIRED)
set(SPHINX_SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/docs)
set(SPHINX_BUILD ${CMAKE_CURRENT_BINARY_DIR}/doc/sphinx)

add_custom_target(build_sphinx ALL
                  COMMAND
                  ${SPHINX_EXECUTABLE} -b html
		  -Dbreathe_projects.cuvis=${CMAKE_CURRENT_BINARY_DIR}/doc/xml
                  ${SPHINX_SOURCE} ${SPHINX_BUILD}
                  WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
                  COMMENT "Generating documentation with Sphinx")

add_dependencies(build_sphinx cuvis_c_doxygen cuvis_cpp_doxygen)