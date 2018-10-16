function phpversion() {
main_domain=$(uapi DomainInfo list_domains 2>/dev/null | awk '$1 ~ "main_domain:" {print $2}') #not needed in proserve .bashrc, already there.
cur_dir=$(pwd)
   if [[ $cur_dir == *"public_html"* ]]; then
   echo "<? phpinfo(INFO_GENERAL); ?>" > phpinfo.php
            if [[ ! -f /var/cpanel/users/$user ]]; then
            echo No access to user "'$user'"!
            else
            cur_dir=$(pwd)
               curl -s $main_domain"${cur_dir#*public_html}/phpinfo.php" | grep -oP "PHP Version \d.\d.\d+"
            fi
               rm -rf phpinfo.php
         else
               echo "Please run in public_html or deeper, you are in ${cur_dir}"
    fi
            }
