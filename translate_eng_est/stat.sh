file=tests.gold.tsv

echo "Parse errors:"
cat $file | cut -f3 | grep "\-1" | wc -l

echo "Function not linearized:"
cat $file | cut -f2 | grep "]" | wc -l

echo "Fully translated"
cat $file | cut -f2 | grep -v '^$' | grep -v "]" | wc -l

echo "Untranslated functions"
cat tests.gold.tsv | cut -f2 | tr ' ' '\012' | grep "]" | sort | uniq -c | sort -nr

#diff tests.gold.tsv tests.out.tsv
cat tests.gold.tsv | cut -f1,2 | sed "s/* //g" > tests.gold.col12.tsv
