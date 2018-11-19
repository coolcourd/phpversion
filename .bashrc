function phpversion() {
main_domain=$(uapi DomainInfo list_domains 2>/dev/null | awk '$1 ~ "main_domain:" {print $2}') #not needed in proserve .bashrc, already there.
cur_dir=$(pwd)
               if [[ $cur_dir == *"public_html"* ]]; then
                  if [ -e proservephpinfo.php ]
                  then  echo "proservephpinfo.php exists"
                  else
                  echo  
                  echo "<? phpinfo(INFO_GENERAL); ?>" > proservephpinfo.php
                  curl -s $main_domain"${cur_dir#*public_html}/proservephpinfo.php" | grep -oP "PHP Version \d.\d.\d+"
                  rm -f proservephpinfo.php
                  fi
                else
                  echo "Please run in public_html or deeper, you are in ${cur_dir}"
               fi
             }
