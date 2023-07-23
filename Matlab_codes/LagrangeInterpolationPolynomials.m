% Flowgorithm currently doesn't generate code for file IO.
% Note: The first function listed is executed. main() is not a special function in Matlab/Octave.
function main()
    params = cell(2, 1);
    
    readParameters(params);
    xvals = cell(params{index(0)}, 1);
    yvals = cell(params{index(0)}, 1);
    
    readInterpData4x(xvals, params);
    readinterpData4y(yvals, params);
    interpolate(params, xvals, yvals);
end

function interpolate(params, xvals, yvals)
    sum = 0;
    product = 1;
    disp('Enter x to interpolate: ');
    x = input('Enter a value for x');
    for i = 0 : params{index(0)} - 1
        for j = 0 : params{index(0)} - 1
            if i ~= j
                lasTerm = (x - xvals{index(j)}) / (xvals{index(i)} - xvals{index(j)});
                product = lasTerm * product;
            end
        end
        sum = sum + yvals{index(i)} * product;
        if j == params{index(0)}
            product = 1;
        end
    end
    disp(['Sum: ', num2str(sum)]);
end

function readInterpData4x(xvals, params)
    open "interpData4x.txt" to read
    for j = 0 : params{index(0)} - 1
        Read interpData4x
        xvals{index(j)} = interpData4x;
    end
    close
end

function readinterpData4y(yvals, params)
    open "interpData4y.txt" to read
    for j = 0 : params{index(0)} - 1
        Read interpData4y
        yvals{index(j)} = interpData4y;
    end
    close
end

function readParameters(params)
    open lagrParams.txt to read
    for j = 0 : 1
        Read lagrParams
        params{index(j)} = lagrParams;
    end
    close
end

% Note: MATLAB uses 1-indexing for arrays. This function converts from zero-based to 1-based.
function i = index(n)
    i = n + 1;
end
