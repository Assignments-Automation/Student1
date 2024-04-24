def test_palindrome_success():
  assert is_palindrome("racecar") == True
  assert is_palindrome("noon") == True

def test_palindrome_failure():
  assert is_palindrome("hello") == False
  assert is_palindrome("A man, a plan, a canal: Panama") == True  # Case-insensitive and punctuation removal

# Assuming your palindrome checking function is named 'is_palindrome' in palindrome.py
from palindrome import is_palindrome
