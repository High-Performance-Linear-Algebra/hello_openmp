program hello
    use, intrinsic :: iso_fortran_env, only: output_unit
    use omp_lib
    integer :: tid, nthreads
    nthreads = omp_get_max_threads()
    !$omp parallel private(tid)
    tid = omp_get_thread_num()
    write (output_unit, '("Hello, world! from thread ", I0)') tid
    !$omp end parallel
end program hello