Id      EmployeeName    JobTitle        BasePay  OvertimePay     OtherPay  TotalPay  TotalPayBenefits          >
1       NATHANIEL       GM              167411    0              400184     567595   567595                    >
2       GARY            CAPTAIN         155966    245131         137811     538909   538909                    >
3       ALBERT          CAPTAIN         212739    106088         16452      335279   335279                    >
4       CHRISTOPHER     MECHANIC        77916     56120          198306     332343   332343                    >
5       PATRICK         DEPUTYCHIEF     134401    9737           182234     326373   326373                    >
6       DAVID           ASSTDEPUTY      118602    8601           189082     316285   316285                    >
7       ALSON           BATTALIONCHIEF  92492     89062          134426     315981   315981                    >
8       DAVID           DEPUTYDIRECTOR  256576    0              51322      307899   307899                    >
10      JOANNE          CHIEF           285262    0              17115      302377   302377                    >
12      PATRICIA        CAPTAIN         99722     87082          110804     297608   297608                    >
13      EDWARD          EXECUTIVE       294580    0              0          294580   294580                    

#basepay > 10000
awk'{if($4>10000){print}}'dataawk.sh

#print emp name and totalpay
awk'{print $2""$7}'dataawk.sh

#print the CAPTAIN in column jobtitle
awk'{$3=="CAPTAIN"}{print}'dataawk.sh

#totoalpay calculate sum
awk'{sum+=$7}END{print sum}'dataawk.sh

#overtimepay between 7000<10000
awk'{if($5<=7000 $$ $5>=10000){print $3""$5}'dataawk.sh

#average of basepay
awk'{sum+=$4}end{print sum/13}'dataawk.sh

