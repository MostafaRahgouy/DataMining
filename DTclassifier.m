clear all
Attributes = xlsread('glass.xlsx');
[~ , ~ , types] = xlsread('class.xlsx' , 1 , 'A1:A214');
TreeResult = ClassificationTree.fit( Attributes , types);
TreeResult.view;
TreeResult.view('mod' , 'graph')
