program unicode_index
    implicit none
    character(len=:), allocatable :: chars
    integer :: i

    chars = '📐: 4.0·tan⁻¹(1.0) = π'
    i = index(chars, 'n')
    write(*,*) i, chars(i:i)
    if (i /= 14) error stop
    i = index(chars, '¹')
    if (i /= 18) error stop
    write(*,*) i, chars(i:i + len('¹') - 1)
end program