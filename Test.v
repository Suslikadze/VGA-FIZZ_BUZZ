`timescale 1ns / 1ps
module char_ROM(
    input some_value,
    input en,
    output 
);
////////////////////////////////////////////////////////// 




//На вход подаем значение в двоичном коде. 
//В процессе этого модуля переводим его в десятичное представление, смотрим каждый разряд и перебираем все цифры,
//присваивая нужный адрес в chars.v, его всовываем в выделенное место на экране (сделать в ROM отдельно)
//Также для теста сделаю счетчик до 15, значение которого и буду передавать на ROM