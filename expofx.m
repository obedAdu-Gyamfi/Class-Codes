% Note: The first function listed is executed. expxofx() is not a special function in Matlab/Octave.
%function expofx()
x = input('Enter a value for x: ');
n = input('Enter a value for n: ');
lasTerm = 1;
expX = lasTerm;
for k = 1 : n
    upTerm = lasTerm * (x / k);
    expX = expX + upTerm;
    lasTerm = upTerm;
end
disp(['Exp(x) = ', num2str(expX)]);
%end
