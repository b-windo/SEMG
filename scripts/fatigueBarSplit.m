%Segment data table by section, plot feature for each muscle and section
muscles = {'LeftBicepsBrachii','LeftExtensorDigitorum','LeftFlexorCarpiUlnaris','LeftFlexorDigitorumSuperficial','LeftTricepsBrachii','RightAnteriorDeltoid','RightBicepsBrachii','RightExtensorDigitorum','RightFlexorCarpiUlnaris','RightFlexorDigitorumSuperficialis','RightMiddleDeltoid','RightPectoralisMajorClavicularHead','RightTricepsBrachii'};
keywC = 'ratioFeatures_one';

muscle = muscles{4};
sections = {'A','B','C','D','E','F','G'};
set(0,'defaulttextinterpreter','none');

for j = 1:length(sections)
    figure;
hold on;
for i = 1:3
    keywR = ['number___',num2str(i),'.*',sections{j},'.*',muscle,'.*EMG'];
    a=getSpecifiedTable(finalTable,'modeRows','include','keywordRows',keywR,'modeCols','include','keywordCols',keywC);
    plot(a{:,:},'DisplayName',['Run ', num2str(i)])
    title(['muscle: ',muscle,', section: ',sections{j},', feature: ', keywC]);
end

legend('-DynamicLegend');
end