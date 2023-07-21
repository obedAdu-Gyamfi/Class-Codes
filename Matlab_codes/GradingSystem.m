% Note: The first function listed is executed. main() is not a special function in Matlab/Octave.
%function main()
    maxNumAtmps = 3;
    courseCode = input('Enter text for courseCode: ', 's');
    numAtmps = 1;
    while true
        markCA = input('Enter a value for markCA: ');
        numAtmps = numAtmps + 1;
        
        if ~(numAtmps <= maxNumAtmps && ~ (markCA >= 0 && markCA <= 30)) break; end  %Exit loop
    end
    if markCA >= 0 && markCA <= 30
        numAtmps = 1;
        while true
            markExam = input('Enter a value for markExam: ');
            numAtmps = numAtmps + 1;
            
            if ~(numAtmps <= maxNumAtmps && ~ (markCA >= 0 && markExam <= 70)) break; end  %Exit loop
        end
        if markExam >= 0 && markExam <= 70
            markTotal = markCA + markExam;
            if markTotal >= 70
                status = 'Pass';
                grade = 'A';
            else
                if markTotal >= 60
                    status = 'Pass';
                    grade = 'B';
                else
                    if markTotal >= 50
                        status = 'Pass';
                        grade = 'C';
                    else
                         if markTotal >= 40
                            status = 'Pass';
                            grade = 'D';
                        else
                            status = 'Trail';
                            grade = 'F';
                        end
                    end
                end
            end
            disp(['====================', char(13), 'Course: ', courseCode, char(13), 'Total Score: ', num2str(markTotal), char(13), 'Grade: ', grade, char(13), 'Status', status, char(13), '========================']);
        else
            disp(['An Invalid Exam Mark for ', courseCode, char(13), 'Number of Allowable Trails For Marks Exceeded', courseCode, char(13), '0 <= markExam <=70']);
        end
    else
        disp(['An Invalid Cont. Assessment Mark for ', courseCode, char(13), 'Number of Allowable Trails For Marks Exceeded ', courseCode, char(13), '0 <= markCA <= 30']);
    end
%end
