program write_to_console
    implicit none
    character(len=:), allocatable :: chars

    chars = 'Fortran is 💪, 😎, 🔥!'
    write(*,*) chars
end program