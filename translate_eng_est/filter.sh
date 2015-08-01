# Exclude lines with weird characters and sort
egrep -v "[^A-Za-z0-9 ,.?!]|[õäöüÕÄÖÜ]" |\
# Exclude sentences with variables
egrep -v "(A[0-9]|X|Y|Z)" |\
egrep -v " [B-Z][0-9]?[^a-z]" |\
# Normalize whitespace
sed "s/  */ /g" |\
sort --ignore-leading-blanks --ignore-case --unique
