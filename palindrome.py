import re
import linecache

def is_palindrome(s):
    # Convert string to lowercase and remove non-alphanumeric characters
    s = re.sub(r'[^a-zA-Z0-9]', '', s.lower())
    # Check if the string is equal to its reverse
    return s == s[::-1]

#hello #hello