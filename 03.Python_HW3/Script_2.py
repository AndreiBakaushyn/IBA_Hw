import os
response = os.system("ping -c 1 google.com")
if response == 0:
    print("success")
else:
    print("doesn't work")
