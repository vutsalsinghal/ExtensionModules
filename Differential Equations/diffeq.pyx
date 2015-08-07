
# In[ ]:

import sympy,numpy, sys
from sympy import pprint, dsolve, Function, Eq, Symbol, sin, cos
#print "\t\tMenu\n1. 1st Order Differential Equation\n2. 2nd Order Differnetial Equation\n3. Exit"
#choice = raw_input("\nEnter your choice: ")
    
def one():
    print "\n\tTypes\n\t1.g(x) = sin(x)\n\t2.g(x) = cos(x)\n\t3.g(x) = K(constant)"
    ch = raw_input("\nEnter your choice: ")
    f = Function('f')
    g = Function('g')
    x = Symbol('x')
    a = Symbol('a')
    b = Symbol('b')
    c = Symbol('c')
    k = Symbol('k')

    def onea():
        print "Differential Equation of the form: "
        pprint(Eq(a*f(x).diff(x) + b*f(x), sin(x)))
        av = int(raw_input("Enter 'a': "))
        bv = int(raw_input("Enter 'b': "))
        diffeq = Eq(av*f(x).diff(x) + bv*f(x), sin(x))
        print "\nThe equation is: "
        pprint(diffeq)
        print "\nThe solution is: "
        pprint(dsolve(diffeq,f(x)))
            
    def oneb():
        print "Differential Equation of the form: "
        pprint(Eq(a*f(x).diff(x) + b*f(x), cos(x)))
        av = int(raw_input("Enter 'a': "))
        bv = int(raw_input("Enter 'b': "))
        diffeq = Eq(av*f(x).diff(x) + bv*f(x), cos(x))
        print "\nThe equation is: "
        pprint(diffeq)
        print "\nThe solution is: "
        pprint(dsolve(diffeq,f(x)))    
            
    def onec():
        print "Differential Equation of the form: "
        pprint(Eq(a*f(x).diff(x) + b*f(x), k))
        av = int(raw_input("Enter 'a': "))
        bv = int(raw_input("Enter 'b': "))
        kv = int(raw_input("Enter 'K': "))
        diffeq = Eq(av*f(x).diff(x) + bv*f(x), kv)
        print "\nThe equation is: "
        pprint(diffeq)
        print "\nThe solution is: "
        pprint(dsolve(diffeq,f(x)))
            
            
    op = {'1':onea, '2':oneb, '3':onec}
    
    if ch == '1':
        op[ch]()
    if ch == '2':
        op[ch]()
    elif ch == '3':
        op[ch]()        
            
        
def two():
    print "\n\tTypes\n\t1.g(x) = sin(x)\n\t2.g(x) = cos(x)\n\t3.g(x) = K(constant)"
    ch = raw_input("\nEnter your choice: ")
    f = Function('f')
    g = Function('g')
    x = Symbol('x')
    a = Symbol('a')
    b = Symbol('b')
    c = Symbol('c')
    k = Symbol('k')
        
    def twoa():
        print "Differential Equation of the form: "
        pprint(Eq(a*f(x).diff(x, x) + b*f(x).diff(x) + c*f(x), sin(x)))
        av = int(raw_input("Enter 'a': "))
        bv = int(raw_input("Enter 'b': "))
        cv = int(raw_input("Enter 'c': "))
        diffeq = Eq(av*f(x).diff(x, x) + bv*f(x).diff(x) + cv*f(x), sin(x))
        print "\nThe equation is: "
        pprint(diffeq)
        print "\nThe solution is: "
        pprint(dsolve(diffeq,f(x)))
            
            
    def twob():
        print "Differential Equation of the form: "
        pprint(Eq(a*f(x).diff(x, x) + b*f(x).diff(x) + c*f(x), cos(x)))
        av = int(raw_input("Enter 'a': "))
        bv = int(raw_input("Enter 'b': "))
        cv = int(raw_input("Enter 'c': "))
        diffeq = Eq(av*f(x).diff(x, x) + bv*f(x).diff(x) + cv*f(x), cos(x))
        print "\nThe equation is: "
        pprint(diffeq)
        print "\nThe solution is: "
        pprint(dsolve(diffeq,f(x)))
            
    def twoc():
        print "Differential Equation of the form: "
        pprint(Eq(a*f(x).diff(x, x) + b*f(x).diff(x) + c*f(x), k))
        av = int(raw_input("Enter 'a': "))
        bv = int(raw_input("Enter 'b': "))
        cv = int(raw_input("Enter 'c': "))
        kv = int(raw_input("Enter 'K'(constant): "))
        diffeq = Eq(av*f(x).diff(x, x) + bv*f(x).diff(x) + cv*f(x), kv)
        print "\nThe equation is: "
        pprint(diffeq)
        print "\nThe solution is: "
        pprint(dsolve(diffeq,f(x)))        
                
            
    op = {'1':twoa, '2':twob, '3':twoc}
    
    if ch == '1':
        op[ch]()
    if ch == '2':
        op[ch]()
    elif ch == '3':
        op[ch]()
            

def three():
    print 'Exiting...'
    sys.exit

option = {'1':one, '2':two, '3':three}    
cont = 'y'

print '\t\tMenu\n1. 1st Order Differential Equation\n2. 2nd Order Differnetial Equation\n3. Exit'
while True:
    choice = raw_input("\nEnter your choice: ")
    if choice == '1':
        option[choice]()
           
    elif choice == '2':
        option[choice]()
            
    elif choice == '3':
        option[choice]()
        break
    else:
        print "Invalid choice!!!"
        
    cont = raw_input("Do you want to continue?")
    if cont == 'n'or cont == 'N':
        print 'Exiting...'
        break    
    print '\t\tMenu\n1. 1st Order Differential Equation\n2. 2nd Order Differnetial Equation\n3. Exit'

