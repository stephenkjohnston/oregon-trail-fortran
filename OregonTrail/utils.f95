module utils
    implicit none

    contains
        !   ==============================
        !   Changes a string to upper case
        !   Source: https://stackoverflow.com/a/10807829
        !   ==============================
        pure function to_upper (str) result (string)
            implicit none
            character(*), intent(In) :: str
            character(len(str))      :: string

            Integer :: ic, i

            character(26), parameter :: cap = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
            character(26), parameter :: low =  "abcdefghijklmnopqrstuvwxyz"

            ! Capitalize each letter if it is lowecase
            string = str
            do i = 1, len_trim(str)
                ic = index(low, str(i:i))
                if (ic > 0) string(i:i) = cap(ic:ic)
            end do
        end function to_upper
end module utils
