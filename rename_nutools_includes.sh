#!/bin/bash
# Program name
prog=${0##*/}
# ======================================================================
function usage() {
    cat 1>&2 <<EOF
usage: $prog [--one-file <file>] <top-dir>
EOF
}

function one_file() {
  local F=$1
  printf "$F ... "
  # Fix most includes
  perl -wapi\~ -f fix-header-locs.pl "${F}" >/dev/null 2>&1 && rm -f "${F}~"
}

# Prepare:
getopt -T >/dev/null 2>&1
if (( $? != 4 )); then
  echo "ERROR: GNU getopt required! Check SETUP_GETOPT and PATH." 1>&2
  exit 1
fi

TEMP=`getopt -n "$prog" --long no-fix-pset -- "${@}"`
eval set -- "$TEMP"
while true; do
  case $1 in
    --one-file)
      file=$2
      shift 2
      ;;
    --)
      shift
      break
      ;;
    *)
      echo "Bad argument \"$OPT\"" 1>&2
      usage
      exit 1
    esac
done

TOP=${1:-nutools}

# ======================================================================
# Run scripts to update

if [[ -n "${file}" ]]; then
  if ! [[ -r "${file}" ]]; then
    echo "ERROR: ${file} does not exist or is not readable." 1>&2
    exit 1
  else
    one_file "$file"
  fi
else

  for F in `find $TOP \( -type d \( -name SoftRelTools -o -name man -o -name bin -o -name tmp -o -name job -o -name .git -o \
    -name .svn -o -name CVS -o -name ups \) -prune \) -o -type f \! \( -name '*_dict.cc' -o -name '*_map.cc' -o -name '*~' \
    -o -name '*.bak' -o -name '*.orig' -o -name '*.new' -o -name '*.gdml' -o -name '*.py' -o -name '*.sh' -o -name '*.o' \
    -o -name '*.so' -o -name '*.os' -o -name '*.root' -o -name 'SConscript' \) -print`;do 
    one_file "$F"
  done

fi
