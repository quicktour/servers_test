# Тесты для лекции №1 - "Императивное программирование"

  ## Тест 1
  Выберете из списка название основных стилей программирования:

  - [x] Императивный
  - [ ] Продвинутый
  - [x] Объектно-ориентированный
  - [x] Функциональный
  ---
&nbsp;

  ## Тест 2
  Выберете определение, верно описывающие переменную:

  - [x] “Переменную можно представить себе как контейнер, куда программа помещает какое-то значение и работает с ним”
  - [ ] “Переменная необходима для изменения данных, передаваемых в нее”
  - [ ] “Переменной звали собаку Никола Тесты”
  ---
&nbsp;

  ## Тест 3
  Какое из нижеприведенных имен переменных неправильно?

  - [x] 4_all_mankind
  - [ ] for_all_mankind
  - [ ] _all_mankind
  - [ ] @for_all_mankind
  ---
&nbsp;

  ## Тест 4
  Напишите результат выполнения метода:

  ```ruby
    def say_something(a)
      puts "Simon says: #{a}"
    end

    say_something('Hello')
  ```
  > **_NOTE:_** Верный ответ “Simon says: Hello”
  ---
&nbsp;

  ## Тест 5
  Какое значение нужно передать в переменную а что бы ответ second_method  был: *“Congratulations, the var is zero"*

  ```ruby
    def first_method(var)
      (23 - var) * 14
    end
 
    def second_method(var)
      raise 'Congratulations, the var is zero' if var == 0
      32/var
 
      rescue => e
        puts "#{e}"
    end
 
    a = '??'
    b = first_method(a)
    second_method(b)
  ```
  
  - [ ] 32
  - [ ] 14
  - [x] 23
  - [ ] 55
  ---
&nbsp;

## Тест 6
  Что вернет вызов переменной **c**?

  ```ruby
    a = 40
    b = 4

    def divide(var_1, var_2)
      c = var_1/var_2
    end
 
    divide(a, b) #=> 10
    c #=> ??
  ```
  
  - [ ] 40
  - [ ] 4
  - [ ] 10
  - [x] NameError: undefined local variable or method `c' …
  ---
&nbsp;

## Тест 7
  Как называются эти выражения?

  ```ruby
    if a < 2
      puts "Two"
    else
      puts "Infinity!!"
    end
 
    phrase = case move
             when 'Terminator'
                "I'll be back"
             when 'Star Wars'
                "These aren't the Droids you're looking for..."
             when 'Pulp fiction'
                "English, mo#$%#&^%&r! Do you speak it?!"
             end
  ```
  
  - [x] Управляющие выражения
  - [ ] Главные выражения
  - [ ] Выражения ветвления
  - [ ] Сложные выражения
  ---
&nbsp;

## Тест 8
  Верно ли утверждение *a == b* ?

  ```ruby
    a = 4
    b = 4
    5.times do |i|
      a += 1
    end
 
    def scope(var)
      5.times do |i|
        var += i
      end
    end
 
    scope(b)
    a == b # => ??
  ```
  
  - [ ] Верно
  - [x] Неверно
  ---
