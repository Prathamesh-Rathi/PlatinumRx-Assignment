# 02_Remove_Duplicates.py

input_string = input("Enter a string: ")

result = ""

for char in input_string:
    if char not in result:
        result += char

print("String after removing duplicates:", result)