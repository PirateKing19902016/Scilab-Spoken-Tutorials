//***************************************************************************
// Gauss Elimination Method for solving the system of linear equations   ****
//                     AX = b                                            ****
//     NPDE-TCA  UG-Level Workshop at IMA Bhubaneshwar                   ****
//     By Manas,FOSSEE,IITB                                              ****
//***************************************************************************

format('e',20)
funcprot(0)
A=input("Enter the coeffiecient matrix of nxn: ")
b=input("Enter the right-hand side matrix nx1: ")

        function [x] = naivegaussianelimination(A,b)
            
//This function obtains the solutions to the system of linear equatons 
//A*x=b,given the matrix coefficients A and the right-hand side vector,b
//Gaussian elimination
//     Inputs:
//A - matrix of real numbers of size nxn
//b - a right-hand side column vector.
//    Output: 
//x - the solution to the given equation.

//Retrieve the size of matrix A and vector b
                [n,n1]=size(A);
                [m1,p]=size(b);
    
//Check that size of A and size of b are compatible
            if n ~= n1
                error('gaussianelimination - Matrix A must be square');
            abort;
            elseif n ~= m1 
                error('gaussianelimination - incompatible dimension of A & b');
            abort;
        end;
        
//Create the augmented system C
            C=[A b];
            
//Forward Elimination
            n=size(A,1);
            for k=1:n-1
                for i=k+1:n
                    factor=A(i,k)/A(k,k);
                        for j=k+1:n
                            A(i,j)=A(i,j)-factor*A(k,j);
                        end
                    b(i)=b(i)-factor*b(k);
                end
            end

//Back Substitution
            x(n)=b(n)/A(n,n);
            for i=n-1:-1:1
                sum=0;
                    for j=i+1:n
                        sum=sum+A(i,j)*x(j);
                    end
                x(i)=(b(i)-sum)/A(i,i);
            end
        endfunction
