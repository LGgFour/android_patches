#!/bin/bash
######################################################################################################
#
# Author & Copyright: 2022-2023 steadfasterX - AT | gmail -DOT- com
#
######################################################################################################
set -e

for p in $(find external/patches -type f -name '*.diff' -exec grep -H project {} \; | tr ' ' '#'); do
    P=$(echo "$p" | sed 's#^#-i '$(pwd)'/#g;s/:project#/ -d /g')
    echo -e "\n******************************************\nPATCH FILE DETECTED\napplying: ${p/*#}...\n\n"
    repo forall "${p/*#}" -c 'git reset --hard' && echo "git reset hard finished for $p"
    patch -r - --no-backup-if-mismatch --forward --ignore-whitespace --verbose -p1 $P
    [ $? -eq 2 ] && echo "ERROR occured!!!" && exit 3
    echo -e "******************************************\n"
done
