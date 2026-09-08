# Medium
# Topics
# premium lock icon
# Companies
# Given two integers a and b, return the sum of the two integers without using the operators + and -.

 

# Example 1:

# Input: a = 1, b = 2
# Output: 3
# Example 2:

# Input: a = 2, b = 3
# Output: 5

class Soluton():
    def sumOFInt(self, a:int,b:int)->int:
        while b!=0:
            carry=(a&b)<<1
            a=a^b
            b=carry
        return a

sol=Soluton()
print(sol.sumOFInt(-1,1))