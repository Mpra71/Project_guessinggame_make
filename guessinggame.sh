NumberFiles() {
    num_files=$(ls -l . | egrep -c '^-')
}

ValidateNumber(){
validate_number='^[0-9]+$'
input_number=$1
while ! [[ $input_number =~ $validate_number ]];
do
        echo -n "$input_number It is not a valid integer, try again: "
        read input_number
done
return $input_number
}

NumberFiles
echo -e "\n"
echo -n "How many files exist in the current directory: "
read var1
ValidateNumber $var1
var1=$input_number

while [[ $var1 -ne $num_files ]]
do
        if [[ $var1 -gt $num_files ]]
                then
                echo "$var1 is greater than the number of files in the current directory"
                echo -n "try again: "
                read var1
                ValidateNumber $var1
                var1=$input_number
        else
                echo "$var1 is less than the number of files in the current directory"
                echo -n "try again: "
                read var1
                ValidateNumber $var1
                var1=$input_number
        fi
done

echo "$var1 equals the number of files in the current directory"
echo "CONGRATULATIONS YOU HAVE CORRECTLY IDENTIFIED THE NUMBER OF EXISTING FILES"
