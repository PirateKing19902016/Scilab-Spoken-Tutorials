//*************************************************************
//  Gauss-Jordan Elimination Method                        ****
//  for solving the system of linear equations             **** 
//                     AX = b                              ****      
//  NPDE-TCA  UG-Level Workshop at IMA Bhubaneshwar        ****
//     By Manas,FOSSEE,IITB                                ****
//*************************************************************
format('e',20)

A=input("Enter the coeffiecient matrix : ")
b=input("Enter the right-hand side matrix : ")

        function [x] = GaussJordanElimination( A, b )

// This function solves the system Ax = b by using Gauss-Jordan elimination.
//    Input: 
//A - matrix of real numbers
//b - a right-hand side column vector.
//    output:
//x - the solution to the given equation.
//Remark: No check are done on the pivot to ensure that it is not null.

// Retrieve the size of matrix A and vector b
            [m, n] = size( A )
            [r, s] = size( b )

// Check that size of A and size of b are compatible
            if ( m <> r ) then
                error("Error: matrix A and vector b are incompatible sizes")
            end

// Create the augmented system C
            C = [ A b ]

// Dimension of the augmented system C are [m, n]
            [m, n] = size( C )

// Compute the Gauss-Jordan elimination
// Loop over the rows for pivoting. I name this index k,
// we are "pivoting" column k, that the pivot is at index 
// C(k,k) and we want zeros below and above C(k,k) in column k.

            for k = 1 : 1 : m
                indices = [ 1 : 1 : k-1,  k+1 : 1 : m ]

// For all rows below and above the pivot, subtract a multiple
// of the pivoting row to get a zero
                for i = indices
                    multiplier = C(i, k) / C(k,k)
                    for j = k+1 : n
                        C(i, j) = C(i, j) - multiplier * C(k, j)
                    end
                end
            end
        print(6, C)

// Create a zero solution
        x = zeros( m, s )

// Solve for all the s right-hand sides
        for i = 1 : 1 : m
            for j = 1 : 1 : s
                x(i, j) = C(i, m+j) / C(i, i)
            end
        end

        return x
        endfunction
