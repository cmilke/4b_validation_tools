dir_type=$1
main_dir=$PWD
tail -n+2 ../param_list.dat |
while read -s -r c2v kl kv; do
    cd $main_dir
    param_str=$( echo "l${kl}cvv${c2v}cv${kv}" | sed 's/\./p/g' )
    echo $param_str
    param_dir="${dir_type}_$param_str"
    mkdir $param_dir
    cd $param_dir

    job_options="450044/mc.MGPy8EG_NNPDF23LO_hh_bbbb_vbf_${param_str}.py"
    param_replacements="-e s/PARAMETER_CV/$kv/ -e s/PARAMETER_C2V/$c2v/ -e s/PARAMTER_C3/$kl/"
    mkdir 450044
    sed $param_replacements ../template_VBF_JO.py > $job_options
done
