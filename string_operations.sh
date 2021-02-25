#!/bin/bash/

# expands into the length of the string contained by parameter
${#parameter}
foo="This string is long."
echo "'$foo' is ${#foo} characters long."

# extract a portion of the string contained in parameter
${parameter:offset}
${parameter:offset:length}
foo="This string is long."
echo ${foo:5}
echo ${foo:5:6}
# If the value of offset is negative, it is taken to mean it starts from the end of the string rather than the beginning
foo="This string is long."
echo ${foo: -5}
echo ${foo: -5:2}

# remove a leading portion of the string contained in parameter defined by pattern
# pattern is a wildcard pattern like those used in pathname expansion
# # form removes the shortest match, while the ## form removes the longest match
${parameter#pattern}
${parameter##pattern}
foo=file.txt.zip
echo ${foo#*.}
echo ${foo##*.}

# remove text from the end of the string contained in parameter
${parameter%pattern}
${parameter%%pattern}
foo=file.txt.zip
echo ${foo%.*}
echo ${foo%%.*}

# search-and-replace upon the contents of parameter (wildcard pattern)
# In the normal form, only the first occurrence of pattern is replaced
${parameter/pattern/string}
# In the // form, all occurrences are replaced
${parameter//pattern/string}
# The /# form requires that the match occur at the beginning of the string
${parameter/#pattern/string}
# /% form requires the match to occur at the end of the string
${parameter/%pattern/string}
