program unicode_len
    implicit none
    character(len=:), allocatable :: chars

    chars = 'Fortran is 💪, 😎, 🔥!'
    write(*,*) len(chars)
    if (len(chars) /= 28) error stop
end program