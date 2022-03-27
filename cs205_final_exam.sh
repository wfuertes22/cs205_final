# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.

BEGIN{print"======== SUMMARY OF POKEMON.DAT ======"}
{
# will check that there is more than one line and checks if the lst field is not True
if (NR != 1 && $NF != "True" )
	{
            # count increments by one
            count+=1
	}

# will see that there is more than one line and checks if the last field is not True
if (NR != 1 && $NF != "True" )
	{
            # HP will increase by the amount in columns 5, sum will increment by 1, def will increase by the amount in column 7
	    hp+=$5
	    sum+=1

	    def+=$7
	}
}
END{
# displays from what instructions said
print "\tTotal Non-Lengendary Pokemon: " count
print "\tAvg. HP: " hp/NR
print "\tAvg. Defense: " def/NR
print "====== END SUMMARY ======="
}

