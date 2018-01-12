for i= 1:2
    fileName = sprintf("DATA/data%d.txt",i);
    input_data(:,i) = importdata(fileName);
end
input_data
fileID = fopen('DATA/exp.txt','w');
fprintf(fileID,'%d %d\n',input_data);
fclose(fileID);
type exp.txt
