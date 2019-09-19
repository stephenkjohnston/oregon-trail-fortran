module instructions
    use utils

    implicit none

    character(1) :: instructions_choice

    contains
        recursive subroutine need_instructions()
            print "(a30/)", "DO YOU NEED INSTRUCTIONS (Y/N)"
            read "(a1)", instructions_choice

            if (to_upper(instructions_choice) .EQ. "Y") then
                call display_instructions
            else if (to_upper(instructions_choice) .EQ. "N") then
                continue
            else
                call need_instructions
            end if
        end subroutine need_instructions

        subroutine display_instructions()
            print "(a56)", "THIS PROGRAM SIMULATES A TRIP OVER THE OREGON TRAIL FROM"
            print "(a54)", "INDEPENDENCE, MISSOURI TO OREGON CITY, OREGON IN 1847."
            print "(a57)", "YOUR FAMILY OF FIVE WILL COVER THE 2000 MILE OREGON TRAIL"
            print "(a39//)", "IN 5-6 MONTHS --- IF YOU MAKE IT ALIVE."

            print "(a57)", "YOU HAVE SAVED $900 TO SPEND ON THE TRIP, AND YOU'VE JUST"
            print "(a22)", "PAID $200 FOR A WAGON."
            print "(a52)", "YOU WILL NEED TO SPEND THE REST OF YOUR MONEY ON THE"
            print "(a16/)", "FOLLOWING ITEMS:"

            print "(a48)", "OXEN - YOU CAN SPEND $200-$300 ON YOUR TEAM"
            print "(a52)", "THE MORE YOU SPEND, THE FASTER YOU'LL GO"
            print "(a49/)", "BECAUSE YOU'LL HAVE BETTER ANIMALS"
            print "(a57)", "FOOD - THE MORE FOOD YOU HAVE, THE LESS CHANGE THERE"
            print "(a33/)", " IS OF GETTING SICK"

            print "(a46)", "AMMUNITION - $1 BUYS A BELT OF 50 BULLETS"
            print "(a56)", "YOU WILL NEED BULLETS FOR ATTACKS BY ANIMALS"
            print "(a48/)", "AND BANDITS, AND FOR HUNTING FOOD"

            print "(a57)", "CLOTHING - THIS IS ESPECIALLY IMPORTANT FOR THE COLD"
            print "(a55)", "WEATHER YOU WILL ENCOUNTER WHEN CROSSING"
            print "(a28/)", "THE MOUNTAINS"

            print "(a56)", "MISCELLANEOUS SUPPLIES - THIS INCLUDES MEDICINE AND"
            print "(a54)", "OTHER THINGS YOU WILL NEED FOR SICKNESS"
            print "(a36/)", "AND EMERGENCY REPAIRS"

            print "(a57)",  "YOU CAN SPEND ALL YOUR MONEY BEFORE YOU START YOUR TRIP -"
            print "(a57)",  "OR YOU CAN SAVE SOME OF YOUR CASH TO SPEND AT FORTS ALONG"
            print "(a54)",  "THE WAY WHEN YOU RUN LOW.  HOWEVER, ITEMS COST MORE AT"
            print "(a56)",  "THE FORTS.  YOU CAN ALSO GO HUNTING ALONG THE WAY TO GET"
            print "(a9/)",  "MORE FOOD."
            ! print "()",  "WHENEVER YOU HAVE TO USE YOUR TRUSTY RIFLE ALONG THE WAY,"
            ! print "()",  "YOU WILL SEE THE WORDS: TYPE BANG.  THE FASTER YOU TYPE"
            ! print "()",  "IN THE WORD 'BANG' AND HIT THE 'RETURN' KEY, THE BETTER"
            ! print "()",  "LUCK YOU'LL HAVE WITH YOUR GUN."
            print "(a51/)",  "WHEN ASKED TO ENTER MONEY AMOUNTS, DON'T USE A '$'."
            print "(a12/)",  "GOOD LUCK!!!"
        end subroutine display_instructions
end module
