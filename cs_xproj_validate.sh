# /bin/bash 

#Usage: $ ./cs_xproj_validate.sh path/to/xcode/project/file/theproject.xcodeproj
#More info: http://stackoverflow.com/q/13962341/89035

PROJECT_FILE="$1/project.pbxproj"

PREVIOUS_LINE=-1

for LINE in `cat "$PROJECT_FILE" | grep -n CODE_SIGN_IDENTITY | grep -o -E '^([0-9]*)'`
do
  TEMP=`expr $PREVIOUS_LINE + 1`
	
	if [  $TEMP -eq $LINE ] ; then
		echo "There is a Code Signing Identity (CODE_SIGN_IDENTITY) issue in $PROJECT_FILE at line $PREVIOUS_LINE."
		exit 1
	fi
	
	PREVIOUS_LINE=$LINE
	
done

exit 0