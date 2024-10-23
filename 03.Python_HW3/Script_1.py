# Scrip_1
input_string = input("Введите строку: ")
uppercase_count = 0
for char in input_string:
    
    if char.isupper():
        uppercase_count += 1


print(f"Количество заглавных букв: {uppercase_count}")
