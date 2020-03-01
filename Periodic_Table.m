
%This code requires an input of some sort (either atomic number, symbol
%name, or element name) from the user, and then provides the rest of the
%details about a periodic element. 

%vector storing Element names
names=["hydrogen" "helium" "lithium" "beryllium" "boron" "carbon" "nitrogen" "oxygen" "fluorine" "neon" "sodium" "magnesium" "aluminum" "silicon" "phosphorus" "sulfur" "chlorine" "argon" "potassium" "calcium" "scandium" "titanium" "vanadium" "chromium" "manganese" "iron" "cobalt" "nickel" "copper" "zinc" "gallium" "germanium" "arsenic" "selenium" "bromine" "krypton" "rubidium" "strontium" "yttrium" "zirconium" "niobium" "molybdenum" "technetium" "ruthenium" "rhodium" "palladium" "silver" "cadmium" "indium" "tin" "antimony" "tellurium" "iodine" "xenon" "cesium" "barium" "lanthanum" "cerium" "praseodymium" "neodymium" "promethium" "samarium" "europium" "gadolinium" "terbium" "dysprosium" "holmium" "erbium" "thulium" "ytterbium" "lutetium" "hafnium" "tantalum" "tungsten" "rhenium" "osmium" "iridium" "platinum" "gold" "mercury" "thallium" "lead" "bismuth" "polonium" "astatine" "radon" "francium" "radium" "actinium" "thorium" "protactinium" "uranium" "neptunium" "plutonium" "americium" "curium" "berkelium" "californium" "einsteinium" "fermium" "mendelevium" "nobelium" "lawrencium" "rutherfordium " "dubnium" "seaborgium" "bohrium" "hassium" "meitnerium" "darmstadtium" "roentgenium" "copernicium" "nihonium" "flerovium" "moscovium" "livermorium" "tennessine" "oganesson" ];    

%vector storing symbol names
symbol_name= [ "H" "He" "Li" "Be" "B" "C" "N" "O" "F" "Ne" "Na" "Mg" "Al" "Si" "P" "S" "Cl" "Ar" "K" "Ca" "Sc" "Ti" "V" "Cr" "Mn" "Fe" "Co" "Ni" "Cu" "Zn" "Ga" "Ge" "As" "Se" "Br" "Kr" "Rb" "Sr" "Y" "Zr" "Nb" "Mo" "Tc" "Ru" "Rh" "Pd" "Ag" "Cd" "In" "Sn" "Sb" "Te" "In" "Xe" "Cs" "Ba" "La" "Ce" "Pr" "Nd" "Pm" "Sm" "Eu" "Gd" "Tb" "Dy" "Ho" "Er" "Tm" "Yb" "Lu" "Hf" "Ta" "W" "Re" "Os" "Ir" "Pt" "Au" "Hg" "Tl" "Pb" "Bi" "Po" "At" "Rn" "Fr" "Ra" "Ac" "Th" "Pa" "U" "Np" "Pu" "Am" "Cm" "Bk" "Cf" "Es" "Fm" "Md" "No" "Lr" "Rf" "Db" "Sg" "Bh" "Hs" "Mt" "Ds" "Rg" "Cn" "Nh" "Fl" "Mc" "Lv" "Ts" "Og"];

%vector storing atomic number 
atomic_number= [1:118];

%vector storing atomic weight
atomic_weight= [ 1.01 4.00 6.94 9.01 10.81 12.01 14.01 15.99 18.99 20.18 22.99 24.31 26.98 28.09 30.98 32.07 35.45 39.95 39.09 40.08 44.96 47.87 50.94 51.97 54.94 55.85 58.93 58.69 63.55 65.39 69.72 72.64 74.92 78.96 79.90 83.8 85.47 87.62 88.91 91.22 92.91 95.94 98.00 101.07 102.91 106.42 107.87 112.41 114.82 118.71 121.76 127.60 126.91 131.29 132.91 137.33 138.91 140.12 140.91 144.24 145.00 150.36 151.96 157.25 158.93 162.50 164.93 167.26 168.93 173.04 174.97 178.49 180.95 183.84 186.21 190.23 196.97 192.22 195.08 200.60 204.38 207.20 208.98 209.00 210.00 222.00 223.00 226.00 227.00 232.04 231.04 238.03 237.00 244.00 243.00 247.00 247.00 251.00 252.00 257.00 258.00 259.00 262.00 261.00 262.00 266.00 264.00 277.00 268.00 261.90 271.80 285.00 286.00 289.00 288.00 293.00 260.90 294.00  ];

%introduction; asking user to enter 1 piece of information about the
%element in order for programme to be able to recognise element and provide
%more information 
disp("Choose a number from 1-3, depending on your choice of input.")

%informing users of the 3 options available 
disp("Enter 1 to obtain information via atomic number."); 
disp("Enter 2 to obtain information via element name.");
disp("Enter 3 to obtain information via element symbol.");

%even though values (1-3) are required, 's' will allow string to be
%inputted so user input errors do not disturb code
options=input("Enter input option: ", 's');

%while loop ensures that if user enters a value not equivalent to 1, 2 or 3, program will
%continuously ask for a correct value until provided with one;
% 'str2double' will convert the string in 'option' to double
% precision values, allowing the string to hold numeric characters as that
% is required for the current conditions of the switch cases
while ~(str2double(options)==1||str2double(options)==2||str2double(options)==3);  %
    disp("Invalid number.");
    options=input("Please choose a valid input option (1, 2, or 3): ",'s');
end

%converted 'options' input to a numerical value, due to conditions in switch cases
options=str2double(options);

%switch cases used due to efficiency and convenience
switch options
       
case (1) 
%ATOMIC NUMBER     

%while loop to ensure that if user input is invalid, program will continuously ask for a valid value until provided one      
while(1)
%takes into consideration any user input errors, allowing string characters
%to be inputted without programme being disturbed    
input_atomicNumber=input("Enter atomic number: ", 's'); 

%string is then converted to numerical values to allow logical operators in 'if' statement to work;
%as variable 'input_atomicNumber' will have numerical value, it will be used to determine  index number for other vectors
input_atomicNumber=str2double(input_atomicNumber); 

%conditional if statement allowing specific index numbers of other vectors to be displayed
%logical operators utilised for specific conditions
 if (input_atomicNumber) >= 1 && (input_atomicNumber) <= 118;
     %Element name, symbol name, and atomic weight displayed - according to
     %atomic number entered by user
    fprintf("Element Name: %s \n", upper(names(input_atomicNumber))); %element name capitalised to stand out
    fprintf("Symbol letters: %s \n", symbol_name(input_atomicNumber));
    fprintf("Atomic weight: %0.2f \n", atomic_weight(input_atomicNumber)); 
    break; %terminates execution of this loop, stops programme from repeating
 else
     %ensures that if invalid value is entered by user, programme will
     %continue to ask for a valid input until given one
     input_atomicNumber=str2double(input_atomicNumber);
     disp("Invalid number. Please enter a valid atomic number, ensuring range of 1 - 118.");
 end
end

case (2)
%ELEMENT NAME

while (1)
input_names=input("Enter name of element: ",'s'); %asking for valid element name

%user input is converted to all lower case letters, as 'names' vector contains all lower case elements
input_names=lower(input_names);
for i=[1:length(names)]
    %input is compared to all variables in 'names' vector, when matched correctly,
    %input number is stored and characters with that input number in other
    %vectors are displayed
    if strcmp(input_names, names(i))  
        %symbol letters, atomic number, and atomic weight are displayed -
        %according to element name entered by user 
        fprintf("Symbol letters: %s \n", symbol_name(i));
        fprintf("Atomic number: %.0d \n", atomic_number(i));
        fprintf("Atomic weight: %0.2f \n",atomic_weight(i));
    end
end
%ensures that if invalid value is inputted by user, programme will
%continuously ask for a valid input until provided one (loop is repeated)
if  ~ismember(input_names, names) 
    disp("Invalid. Please check spelling.");
else
    break  %terminates the execution of this loop, stops programme from repeating 
end
end 

case (3)
%SYMBOL NAME 

while (1)
input_symbolName=input("Enter symbol of element: ",'s');

for i=[1:length(symbol_name)]
    
%input is compared to all variables in 'symbol_name' vector, when matched correctly,
%input number is stored and characters with that input number in other
%vectors are displayed
        if strcmp(input_symbolName, symbol_name(i))
        %element name, atomic number, and atomic weight is displayed -
        %according to symbol name entered by user 
        fprintf ("Element Name: %s\n",(upper(names(i)))); %element name capitalised to stand out
        fprintf("Atomic number: %.0d \n",atomic_number(i));
        fprintf("Atomic weight: %0.2f \n",atomic_weight(i));
    end
end
%ensures that if invalid value is inputted by user, programme will
%continuously ask for a valid input until provided one (loop is repeated)
if ~ismember(input_symbolName, symbol_name)
    disp("Invalid. Please ensure correct capital letters are used.");
else break %terminates the execution of this loop, stops programme from repeating 
end
end
end


