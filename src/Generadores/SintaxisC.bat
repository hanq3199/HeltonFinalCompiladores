SET JAVA_HOME="C:\Program Files (x86)\Java\jdk1.8.0_281\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
cd C:\Users\jcora\OneDrive\Documents\NetBeansProjects\Proyecto_Final\src\codigo
java -jar C:\Users\jcora\OneDrive\Documents\UMG\Compiladores\java-cup-11a.jar -parser SintacticoC -symbols sym SintaxisC.cup
pause
