prime=$1
t=$2
alpha=$(sage find_alpha.sage $prime)
echo "Using alpha: $alpha"
round_numbers=$(python3 calc_round_numbers.py $prime $t $alpha)
RF=$(python3 extract.py "$round_numbers" 0)
RP=$(python3 extract.py "$round_numbers" 1)
echo "RF=$RF, RP=$RP"
field_size=$(sage find_field_size.sage $prime)
sage generate_parameters_grain.sage 1 0 $field_size $t $RF $RP $prime
