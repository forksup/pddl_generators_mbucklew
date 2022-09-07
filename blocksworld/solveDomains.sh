path=/mnt/watchandhelp/PycharmProjects/pddl-generators/blocksworld/data/data-4blocks-10goals-4ops
domain=/mnt/watchandhelp/PycharmProjects/pddl-generators/blocksworld/3ops/domain.pddl
domain=/mnt/watchandhelp/PycharmProjects/pddl-generators/blocksworld/4ops/domain.pddl

cd $path
 for file in *;
 do
  python /home/mitch/PycharmProjects/diverse-plan-rec/pyperplan/src/pyperplan.py "$domain" "$path/$folder/$file" -s astar
done


:'
cd $path
for folder in *;
 do
   cd $folder
   for file in *;
   do
     if [[ "$folder" == *"3ops"* ]];
     then
        domain=/mnt/watchandhelp/PycharmProjects/pddl-generators/blocksworld/3ops/domain.pddl
    else
      domain=/mnt/watchandhelp/PycharmProjects/pddl-generators/blocksworld/4ops/domain.pddl
    fi
    python /home/mitch/PycharmProjects/diverse-plan-rec/pyperplan/src/pyperplan.py "$domain" "$path/$folder/$file" -s astar
  done
  cd ../
done'
# python /home/mitch/PycharmProjects/diverse-plan-rec/pyperplan/src/pyperplan.py "$domain" "$path/$file" -s astar
# python /home/mitch/PycharmProjects/diverse-plan-rec/pyperplan/src/pyperplan.py "$domain" "$path/$folder/$file" -s astar