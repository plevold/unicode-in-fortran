program file_io
    implicit none

    ! Write to file
    block
        character(len=:), allocatable :: chars
        integer :: unit

        chars = 'Fortran is 💪, 😎, 🔥!'
        open(newunit=unit, file='file.txt')
        write(unit, '(a)') chars
        write(*, '(a)') ' Wrote line to file: "' // chars // '"'
        close(unit)
    end block

    ! Read back from the file
    block
        character(len=100) :: chars
        integer :: unit

        open(newunit=unit, file='file.txt', action='read')
        read(unit, '(a)') chars
        write(*,'(a)') 'Read line from file: "' // trim(chars) // '"'
        close(unit)
        if (trim(chars) /= 'Fortran is 💪, 😎, 🔥!') error stop
    end block

end program

