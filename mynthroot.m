% Note: The first function listed is executed. main() is not a special function in Matlab/Octave.
function xNew = mynthroot(n, R, x0, kmax, tol)
    % Estimates the nth root of a positive real number.
    % n: Desired root
    % R: Number whose root is to be determined
    % x0: Initial value
    % kmax: Maximum number of iterations
    % tol: Error of tolerance
    % xOld/ xNew: Previous and Current extimates
    % n = input ("Enter the value of n: "
    % r = input ("Enter the value of  R: "
    % kmax = input ("Enter the value of kmax: "
    % tol = input ("Enter the value of tol: "
    % x0 = input ("Enter the valuer of x0: "
    
    
    k = 0;
    xNew = x0;
    xOld = xNew + 1;
    while abs(xNew - xOld) >= tol && k <= kmax
        xOld = xNew;
        xNew = (1 / n) * ((n - 1) * xOld + R* xOld ^ (1 - n));
        k = k + 1;
    end
    fprintf('Nth root of (%d, %d) = %.2f. \n', n, R, xNew)
    %disp(sprintf('Nth Root of (%d, %d) = %.16f .\n', n, R, xNew))
    %disp(['Nth Root: ', num2str(xNew)])
end
