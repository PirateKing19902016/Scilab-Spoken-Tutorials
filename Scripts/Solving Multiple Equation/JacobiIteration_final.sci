//*******************************************************
//  Jacobi Method                                    ****
//  for solving the system of linear equations       **** 
//                     AX = b                        ****      
//  NPDE-TCA  UG-Level Workshop at IMA Bhubaneshwar  ****
//     By Manas,FOSSEE,IITB                          ****
//*******************************************************
format('e',20)
A=input("Enter the coeffiecient matrix of nxn: ")
b=input("Enter the right-hand side matrix nx1: ")
x0=input("Initial approximation nx1: ")
MaxIter=input("Maximum no. of iterations: ")
tol=input("Enter the convergence tolerance :")//stop if norm change in x < tol

//To check if the matrix is diagonally dominant
[m, n] = size( A )
   if ( m ~= n )
      error( "The input matrix is not square")
   end
   
for i=1:1:m
       sum=0;
       for j=1:1:m
           sum=sum+abs(A(i,j));
       end
   if 2*abs(A(i,i))<sum then
       error("the matrix is not diagonally dominant")
   end
   end

        function [ solution ] = JacobiIteration( A, b, x0, MaxIter, tol )

//JACOBI       approximate the solution of the linear system Ax = b by applying
//             the Jacobi method
//
//     calling sequences:
//             solution = jacobi ( A, b, x0, MaxIter, tol )
//             jacobi ( A, b, x0,MaxIter,tol)
//
//     inputs:
//             A       coefficient matrix for linear system - must be a
//                     square matrix
//             b       right-hand side vector for linear system
//             x0    vector containing initial guess for solution of 
//                     linear system
//             MaxIter    maximum number of iterations to be performed
//             tol     convergence tolerance - applied to maximum norm of
//                     difference between successive approximations
//                     tol=0.001
//
//     output:
//             solution       approximate solution of linear system
   
   
// Check that the matrix is square
           [m, n] = size( A )
           if ( m ~= n )
                error( "The input matrix is not square" )
           end

// Check that the initial vector is of the same size
           if ( length(x0) ~= n )
                error( "Sizes of input matrix and input vector do not match" )
           end
//Implements the Jacobian algorithm
           xk = x0
           for k = 1 : 1 : MaxIter
           for i = 1 : n
                xkp1( i ) = (b(i) - A(i, 1:i-1)*xk(1:i-1) - A(i, i+1:n)*xk(i+1:n)) / A(i,i) //Computes the jacobian updates
           end

                RelativeError = norm( xkp1 - xk, 'inf' ) / norm( xkp1, 'inf' )
                printf( "iter = %d, Relative Error = %g\n", k, RelativeError )
                xk = xkp1

           if ( RelativeError < tol )
                break
           end
           end

                solution = xkp1

endfunction
