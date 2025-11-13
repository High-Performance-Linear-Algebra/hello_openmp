cmake_minimum_required(VERSION 3.23)

# Fortran + OpenMP hello world
project(hello-openmp LANGUAGES Fortran)

# Find OpenMP for Fortran
find_package(OpenMP REQUIRED COMPONENTS Fortran)

# Executable from the single source file
add_executable(hello-openmp hello-openmp.f90)

# Link OpenMP (this adds the right compile/link flags)
target_link_libraries(hello-openmp PRIVATE OpenMP::OpenMP_Fortran)