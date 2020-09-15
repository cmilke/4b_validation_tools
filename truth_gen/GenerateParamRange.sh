dir_type=$1
main_dir='/scratch/users/cmilke/dihiggs/vbf_validation'
input_file='evgen.root'
tail -n+2 ../param_list.dat |
while read -s -r c2v kl kv; do
    cd $main_dir/truth_gen
    param_str=$( echo "l${kl}cvv${c2v}cv${kv}" | sed 's/\./p/g' )
    echo $param_str
    param_dir="${dir_type}_$param_str"
    mkdir $param_dir
    cd $param_dir

    ln -s $main_dir/evnt_gen/$param_dir/$input_file
done
