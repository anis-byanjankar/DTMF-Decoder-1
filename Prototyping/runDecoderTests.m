% Script to test the DTMF Decoder using the test data generated by 'generateTestData.m'

disp('This WILL take a while');
disp('Starting with the -1dBm to 0dBm files');
results = 'Results:';
% filepaths to the different power folders

power1 = 'Test Data/-1dBm to 0dBm/';
power2 = 'Test Data/-3dBm to -1dBm/';
power3 = 'Test Data/-10dBm to -3dBm/';
power4 = 'Test Data/-27dBm to -10dBm/';

% decode first folder (power1)

folderDIR = dir(strcat(power1,'*.wav'));

for file = 1:numel(folderDIR) % for each .wav file inside the folder
    filename = strcat(power1,folderDIR(file).name);
    result = testDecoder(filename);
    results = char(results,result);
end

disp('Testing the -3dBm to -1dBm');

folderDIR = dir(strcat(power2,'*.wav'));

for file = 1:numel(folderDIR) % for each .wav file inside the folder
    filename = strcat(power2,folderDIR(file).name);
    result = testDecoder(filename);
    results = char(results,result);
end

disp('Testing the -10dBm to -3dBm');

folderDIR = dir(strcat(power3,'*.wav'));

for file = 1:numel(folderDIR) % for each .wav file inside the folder
    filename = strcat(power3,folderDIR(file).name);
    result = testDecoder(filename);
    results = char(results,result);
end

disp('Testing the -27dBm to -10dBm');

folderDIR = dir(strcat(power4,'*.wav'));

for file = 1:numel(folderDIR) % for each .wav file inside the folder
    filename = strcat(power4,folderDIR(file).name);
    result = testDecoder(filename);
    results = char(results,result);
end