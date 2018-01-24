function import_data_function(m)
for i= 1:m
    inputFileName = sprintf("DATA/data%d.txt",i);
    input_data(:,i) = importdata(inputFileName);
end
outputFileName = sprintf("DATA/export%d.txt",i);
fileID = fopen(outputFileName,'w');
fprintf(fileID,'%d %d\n',input_data);
fclose(fileID);
end