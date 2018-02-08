//*******************************************************
//  Gauss-Seidel iterative method                   ****
//  for solving the system of linear equations      **** 
//                     AX = b                       ****      
//  NPDE-TCA  UG-Level Workshop at IMA Bhubaneshwar ****
//     By Manas,FOSSEE,IITB                         ****
//*******************************************************
format('e',20)
A=input("Enter the coeffiecient matrix of nxn: ")
b=input("Enter the right-hand side matrix nx1: ")
x0=input("Initial approximation nx1: ")
MaxIter=input("Maximum no. of iterations: ")
tol=input("Enter the convergence tolerance :")//stop if norm change in x < tol

        function [ solution ] = GaussSeidel( A, b, x0, MaxIter, tol )

// This function solves the system Ax = b with the Gauss-Seidel iterative method.
// Matrix A and right-hand side b must be provided, with an initial 
// approximation x0 of the solution, the maximum number of iterations
// MaxIter and a convergence criterion epsilon. 
// Diagonal elements of the matrix A must be non zero.

// Check that the matrix is square
            [m, n] = size( A )
            if ( m ~= n )
                error( "The input matrix is not square" )
            end

// Check that the initial vector is of the same size
            if ( length(x0) ~= n )
                error( "Sizes of input matrix and input vector do not match" )
            end
            
//Starts with initial approximation
            xk = x0
            xkp1 = zeros( xk )
            for k = 1 : 1 : MaxIter

// Computes the Gauss-Seidel update
                for i = 1 : n
                    xkp1( i ) = (b(i) - A(i, 1:i-1)*xkp1(1:i-1) - A(i,i+1:n)*xk(i+1:n)) / A(i,i) 
                                     // x^{k+1}
                end
// Applies the relaxation
                RelativeError = norm( xkp1 - xk, 'inf' ) / norm( xkp1, 'inf' )
                printf( "iter = %d, Relative Error = %g\n", k, RelativeError )
                xk = xkp1
                if ( RelativeError < tol )
                    break
                end
            end

            solution = xkp1

        endfunction
