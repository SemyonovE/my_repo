import Foundation

/*

 Даны коэффициенты a, b, c квадратного уравнения a * x^2 + b * x + c = 0.
 Необходимо найти корни данного йравнения (x1, x2), используя формулы через вычисление дискриминанта (D).
 Дискриминант может быть вычислен по формуле D=b^2 - 4 * a * c.
 Знак дискриминанта влияет на то, сколько различных вещественных корней будет иметь уравниение. Самый просто случай, когда D < 0. Корней нет, нам не нужно ничего вычислять, просто вывести эту информацию в консоль.
 Если D = 0, в таком случае корень у нас кратный (то есть корня два, но они будут равны, поэтому нам достаточно найти всего 1 значение, которое будет являться и x1 и x2 одновременно), необходимо воспользоваться формулой для расчёта x: x=-b / (2 * a).
 Последний случай, когда D > 0. У нас есть два разный корня и каждый из них находится по своей формуле:
 x1 = (-b + sqrt(D)) / (2 * a), x2 = (-b - sqrt(D)) / (2 * a), где sqrt(D) - это корень из дискриминанта.
 Если у вас нет понимания как в одном коде рассмотреть все 3 случая решения уравнения, рассмотрите последний, он будет самым интересным. Задайте коэффициенты так, чтобы D оказался больше 0, например: a = 1, b = 4, c = 2.


 */


let a: Double = 1
let b: Double = 3
let c = 4.0

let det = pow(b, 2) - 4 * a * c

if det > 0 {
    let x1 = (-b + sqrt(det)) / (2 * a)
    let x2 = (-b - sqrt(det)) / (2 * a)
    print("x1 = \(x1)\n", "x2 = ", x2, separator: "")

} else if det == 0 {
    let x = -b / (2 * a)
    print("x1,2 = \(x)")

} else {
    print("Нет решений")
}

/*

 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

 Катеты можно задать константными знаечниями в коде, а можно вводить с клавиатуры (но в таком случае нужно обработать опционал и привести тип String к какому-то численному).
 Для нахождения площади прямоугольного треугольника можно воспользоваться формулой S = a * b / 2, где "a"и "b" - заданные катеты.
 Для нахождения гипотенузы следует использовать формулу Пифагора
 a^2 + b^2 = c^2. Здесь с - это искомая нами гепотенуза. Найти её можно выразив из формулы Пифагора значение c. Получим c = root(a^2 + b^2).
 Для нахождения перимертра вам нужно сложить все стороны вашего треугольника, как два заданных катета, как и найденную гипотенузу.

 */


let sideA: Double = 3
let sideB: Double = 5

let S = sideA * sideB / 2

let sideC = sqrt(sideA * sideA + pow(sideB, 2))

let P = sideA + sideB + sideC


/*


 3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

 Сумму вклада и процент можно задать так же явно в константе или переменной, в зависимости от того, собираетесь вы в дальнейшем пересчитвать именно это значения или будете считать сумму за 5 лет в отдельной переменной.
 Для количества лет достаточно задать константу, котому как срок у нас меняться не будет.
 Пути два:
 1. Если вы знаете конструкцию - Цикл, используйте её для пересчёта суммы депозита такое количество раз, какой задан год хранения депозита.
 2. Если вы не знаете цикл, вы можете воспользоваться тем, чтобы несколько раз подряд продублировать в коде одни и те же вычисления, изменяющие сумму вашего депозита в конце года.
 3. Если охото зитрее, поищите информацию про так называемую формулу "Сложного процента" и попробуйте применить её в задании.

 */


var deposit: Double = 10_000
var percent: Double = 10
let years: Int = 5

percent /= 100

/*
for _ in 0..<years {
    deposit = deposit + deposit * percent
    // deposit * (1 + percent)
    print(deposit)
}
 */

print(deposit * pow(1 + percent, Double(years)))
// 16105.1


// 1. Github.com - создаешь проект
// 2. `git init` в папке на компьютере
// 3. `git add .` - добавить все изменения в отслеживание
// 4. `git commit -m "Сообщение"` - сохранить изменения
// 5. ``
