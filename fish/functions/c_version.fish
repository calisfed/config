function c_version
gcc -dM -E - < /dev/null | grep __STDC_VERSION__ | awk '{ print $2 " --> " $3 }'
end
