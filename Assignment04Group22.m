% Note: The first function listed is executed. main() is not a special function in Matlab/Octave.
%function main()
% MATH GROUP 22
% OBED ADU-GYAMFI - 8597421
% MACCARTHY MARIAMA - 8605121
% YEMANYI DERRICK - 8610721
% MUNTAKA ISSAH - 8606021
% YANKEY GEORGE - 8610521
nStds = input('Enter a value for nStds: ');
passMark = 40;
nPass = 0;
nFail = 0;
sumPass = 0;
sumTrail = 0;
initTrail = false;
initPass = false;
for k = 1 : nStds
    stdMark = input('Enter a value for stdMark: ');
    if stdMark >= passMark
        nPass = nPass + 1;
        sumPass = sumPass + stdMark;
        if initPass == false
            minPass = stdMark;
            maxPass = stdMark;
            initPass = true;
        else
            if stdMark >= maxPass
                maxPass = stdMark;
            end
            if stdMark <= minPass
                minPass = stdMark;
            end
        end
    else
        nFail = nFail + 1;
        sumTrail = sumTrail + stdMark;
        if initTrail == true
            if stdMark >= maxTrail
                maxTrail = stdMark;
            end
            if stdMark <= minTrail
                minTrail = stdMark;
            end
        else
            minTrail = stdMark;
            maxTrail = stdMark;
            initTrail = true;
        end
    end
end
if nPass ~= 0 && nFail ~= 0
    meanPass = sumPass / nPass;
    meanTrail = sumTrail / nFail;
    disp(['Class Size: ', num2str(nStds), char(13), 'Number of Passes: ', num2str(nPass), char(13), 'Number of Trails:  ', num2str(nFail), char(13), 'Min/Max Trails: ', num2str(minTrail), '/', num2str(maxTrail), char(13), 'Min/Max', num2str(minPass), '/', num2str(maxPass), char(13), 'Mean Pass Mark: ', num2str(meanPass), char(13), 'Mean Trail Mark: ', num2str(meanTrail)]);
    if nPass ~= 0
        meanPass = sumPass / nPass;
        disp(['Class Size: ', num2str(nStds), char(13), 'Number of Passes: ', num2str(nPass), char(13), 'Number of Trails: ', num2str(nFail), char(13), 'Min/Max Trails:  ', 'Not Applicable.', char(13), 'Min/Max Pass: ', num2str(minPass), '/', num2str(maxPass), char(13), 'Mean Pass Mark: ', num2str(meanPass), char(13), 'Mean Trail Mark: ', 'Not Applicable']);
    else
        meanTrail = sumTrail / nFail;
        disp(['Class Size: ', num2str(nStds), char(13), 'Number of Passes: ', num2str(nPass), char(13), 'Number of Trails: ', num2str(nFail), char(13), 'Min/Max Trails:  ', num2str(minTrail), '/', num2str(maxTrail), char(13), 'Min/Max Pass: ', 'Not Applicable', char(13), 'Mean Pass Mark: ', 'Not Applicable', char(13), 'Mean Trail Mark: ', num2str(meanTrail)]);
    end
end
%end
