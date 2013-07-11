import time
 
INPUT_FILE = open('22.txt')
 
LETTER_VALUES = {
    'A': 1, 'B': 2, 'C': 3, 'D': 4, 'E': 5, 'F': 6, 'G': 7, 'H': 8, 'I': 9, \
    'J': 10, 'K': 11, 'L': 12, 'M': 13, 'N': 14, 'O': 15, 'P': 16, 'Q': 17, \
    'R': 18, 'S': 19, 'T': 20, 'U': 21, 'V': 22, 'W': 23, 'X': 24, 'Y': 25, \
    'Z': 26}
 
names = INPUT_FILE.read().replace('"', '').split(',')
names.sort()
 
total_sum = 0
 
for n in range(0, len(names)):
    for letter in names[n]:
        sum_name = LETTER_VALUES[letter]
        total_sum += sum_name * (n + 1)
print total_sum

