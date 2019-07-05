marks = [92 55 60 80 85 79];
CGPA = zeros(size(marks));
weight = [0.5 0.5 0.5 0.5 0.5 0.5]

for k = 1:length(marks)
    if (marks(k) >= 90)
        CGPA(k) = 4.0;
    elseif(marks(k) < 90) && (marks(k) >= 85)
        CGPA(k) = 4.0;
    elseif(marks(k) < 80) && (marks(k) >= 85)
        CGPA(k) = 3.7;
    elseif(marks(k) < 80) && (marks(k) >= 77)
        CGPA(k) = 3.3;
    elseif(marks(k) < 77) && (marks(k) >= 73)
        CGPA(k) = 3.0;
    elseif(marks(k) < 73) && (marks(k) >= 70)
        CGPA(k) = 2.7;
    elseif(marks(k) < 70) && (marks(k) >= 67)
        CGPA(k) = 2.3;
    elseif(marks(k) < 67) && (marks(k) >= 63)
        CGPA(k) = 2.0;
    elseif(marks(k) < 63) && (marks(k) >= 60)
        CGPA(k) = 1.7;
    elseif(marks(k) < 60) && (marks(k) >= 53)
        CGPA(k) = 1.0;
    elseif(marks(k) < 53) && (marks(k) >= 50)
        CGPA(k) = 0.7;
    else 
        CGPA(k) = 0;
    end
end
   
CSGPA = sum(CGPA.*weight)/sum(weight);

if CSGPA >= 1.3
    fprintf('Orange Scholarship for Chirag \n')
end

if CSGPA >= 2.2
    fprintf('Blue Scholarship for Chirag \n')
end

yellow = zeros(size(marks));

for i=1:length(marks)
    if marks(i) >= 67
        yellow(i) = 1;
    else
        yellow(i) = 0;
    end
end

yellowsum = sum(yellow)
if yellowsum >= 3
    fprintf('Yellow Scholarship for Chirag \n')
end
    