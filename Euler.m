% Note: The first function listed is executed. main() is not a special function in Matlab/Octave.
%function main()
x = input('Enter a value for x: ');
n = input('Enter a value for n: ');
lasTerm = 1;
expX = lasTerm;
for k = 1 : n
    upTerm = lasTerm * (x / k);
    expX = expX + upTerm;
    lasTerm = upTerm;
end
disp(['ExpX : ', num2str(expX)]);
%end
