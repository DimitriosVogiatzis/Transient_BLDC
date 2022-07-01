## Transient_BLDC
![image](https://user-images.githubusercontent.com/65401171/176868961-775bb28f-a0ea-4a3b-b20e-d1a5d3bf6f3e.png)
![image](https://user-images.githubusercontent.com/65401171/176868988-558b6a59-4447-45cd-bd6e-a453fc3ac6d8.png)

| requirements         | os        |
| -------------------- | --------- |
| matlab2018 Simulink or greater | W8 or greater |

## Model Description
A 6-step commutation, surface mounted permanent magnet, Brushless Direct Current Electric Motor (BLDC EM) simulation model with speed control for driving transient load cycles. 

This models simulates:
1. a BLDC electric motor model,
2. the 6-step commutation and power electronics
3. an equivalent circit battery model

## Detailed model explanation
See ModelInstructions.pdf for a step-by-step guide through the creation of the simulation model and the equations being solved.

## How to run the model
1. Open "transient_bldc.m"
2. Select input data of BLDC, Shaft, Power electronics or run with defaults
3. Run the script and select Load cycle between "Max_Power Ramp-Up" and "Transient Load cycle"
4. Run the Siimulink model
![image](https://user-images.githubusercontent.com/65401171/176876168-1eb74365-61e6-42e2-9305-d6392d845884.png)

## Contributors:
1. [Dimitrios Vogiatzis]

## References - Acknowledgements
This work was initialized as an Academic project for Technical University of Graz, Electrical Engineering Department, Electric Drives and Machines Institute and the course of "SIMULATION OF ELECTRIC MACHINE & DRIVES" of [Krischan, Klaus], [Seebacher, Roland] and continued as an individual research project for my PhD in TU Graz.

## Copyrights
[Creative Commons]
<br />
<br />
## License
[Creative Commons Licence]
<br />
<br />

>(C) 2022,Dimitrios Vogiatzis<br />
>jimmyvog@gmail.com

[//]: # "links"

[Creative Commons]: <https://creativecommons.org/licenses/by-nc-nd/4.0/>
[Creative Commons Licence]: <https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode>
[Dimitrios Vogiatzis]: <http://www.linkedin.com/in/dimitrios-vogiatzis95>
[Krischan, Klaus]: <https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=7A8033D288397C36&pPersonenGruppe=3>
[Seebacher, Roland]: <https://online.tugraz.at/tug_online/visitenkarte.show_vcard?pPersonenId=8376A9517F1DF3F3&pPersonenGruppe=3>

