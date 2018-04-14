cmake_minimum_required(VERSION 3.0)

project(TestAppVeyorFortranCPP)

enable_language(Fortran)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(${PROJECT_SOURCE_DIR}/include)

add_library(foobarbaz SHARED
  ${PROJECT_SOURCE_DIR}/src/foo.cpp
  ${PROJECT_SOURCE_DIR}/src/foo.f90
  )

add_executable(example
  ${PROJECT_SOURCE_DIR}/example/example.cpp
  )

target_link_libraries(example foobarbaz)
