import sys

mem_size = 30000
mem = [0 for i in range(mem_size)]
ptr = 0
mm = [9999999, -9999999]

if __name__ == "__main__":
    args = sys.argv
    path = args[1]
    with open(path) as f:
        code = f.read()
    code_list = list(code)
    head = 0
    while head < len(code_list):
        if code_list[head] == '+':
            mem[ptr] += 1
            mm[1] = max(mm[1], mem[ptr])
        elif code_list[head] == '-':
            mem[ptr] -= 1
            mm[0] = min(mm[0], mem[ptr])
        elif code_list[head] == '[':
            if mem[ptr] == 0:
                count = 1
                while count != 0:
                    head += 1
                    if head == len(code_list):
                        print("']' is missing")
                        sys.exit(1)
                    if code_list[head] == '[':
                        count += 1
                    elif code_list[head] == ']':
                        count -= 1
        elif code_list[head] == ']':
            if mem[ptr] != 0:
                count = 1
                while count != 0:
                    head -= 1
                    if head < 0:
                        print("'[' is missing")
                    if code_list[head] == ']':
                        count += 1
                    elif code_list[head] == '[':
                        count -= 1
        elif code_list[head] == '.':
            print(chr(mem[ptr]),end = "")
        elif code_list[head] == ',':
            mem[ptr] = ord(sys.stdin.buffer.read(1))
        elif code_list[head] == '>':
            ptr += 1
            if ptr > mem_size:
                print("overflow!")
                sys.exit(1)
        elif code_list[head] == "<":
            if ptr == 0:
                print("Can't decrement anymore")
            ptr -= 1
        head += 1

print("[INFO] メモリの値の最小/最大値:", mm)
