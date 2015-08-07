alpha = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
class cryption:
    def __init__(self, s):
        self.s = s
        
    def encrypt(self):
        arr = []
        for char in self.s:
            if char >= 'a' and char <= 'p':
                arr.append(alpha[alpha.index(char) + 10])
            if char >= 'q' and char <= 'z':    
                arr.append(alpha[alpha.index(char) - 16])
        st = ''
        for i in arr:
            st += i
        print st 
            
    def decrypt(self):
        arr = []
        for char in self.s:
            if char >= 'a' and char <= 'j':
                arr.append(alpha[16 + alpha.index(char)])
            if char >= 'k' and char <= 'z':    
                arr.append(alpha[alpha.index(char) - 10])
        st = ''
        for i in arr:
            st += i
        print st
