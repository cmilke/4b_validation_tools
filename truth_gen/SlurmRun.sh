main_dir=$PWD
tail -n+2 ../param_list.dat |
while read -s -r c2v kl kv; do
    cd $main_dir
    param_str=$( echo "l${kl}cvv${c2v}cv${kv}" | sed 's/\./p/g' )
    echo $param_str
    param_dir="slurm_$param_str"
    cd $param_dir
    sbatch -J "TruthGen_${param_str}" -p standard-mem-s --mem=16G ../SlurmScript.sh
    cd $main_dir
done
