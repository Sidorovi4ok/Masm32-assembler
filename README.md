# MASM32 Учебные примеры

![Assembly Language](https://img.shields.io/badge/Assembly-MASM32-blue)

## 📝 Описание

Этот репозиторий содержит коллекцию учебных примеров и задач по программированию на ассемблере MASM32. Проект предназначен для изучения основ ассемблера и включает в себя различные практические примеры, от базовых операций до работы с массивами и отладкой.

## 🎯 Содержание

1. **Базовые операции**
   - Вывод значений
   - Работа с регистрами
   - Логические команды
   - Работа с битами данных

2. **Продвинутые темы**
   - Работа с массивами
   - Ветвления
   - Отладка

## 📂 Структура проекта

- `01.Output of values.asm` - Примеры вывода значений
- `02. Working with registers.asm` - Работа с регистрами
- `03. Working with logical commands.asm` - Логические операции
- `04. Working with data bits.asm` - Операции с битами
- `05. Working with arrays.asm` - Базовая работа с массивами
- `06. Working with arrays-2.asm` - Продвинутая работа с массивами
- `07. Working with branching.asm` - Примеры ветвления
- `08. Working in the debugger.asm` - Работа с отладчиком
- `09. Mini tasks.asm` - Набор мини-задач
- `10. Mini tasks-2.asm` - Дополнительные мини-задачи

## 🚀 Как использовать

1. **Необходимые инструменты:**
   - MASM32 SDK
   - Текстовый редактор (рекомендуется Visual Studio Code с расширением для ассемблера)
   - DOSBox или Windows для запуска программ

2. **Установка MASM32:**
   - Скачайте MASM32 SDK с официального сайта
   - Установите SDK, следуя инструкциям установщика
   - Добавьте путь к bin директории MASM32 в переменные среды PATH

3. **Компиляция и запуск:**
   ```batch
   ml /c /Zd /coff filename.asm
   link /subsystem:console filename.obj
   filename.exe
   ```

## 🔧 Советы по отладке

- Используйте отладчик для пошагового выполнения программы
- Следите за значениями регистров
- Проверяйте флаги после выполнения операций
- Используйте комментарии для документирования кода

## 📚 Полезные ресурсы

- [Документация MASM32](http://www.masm32.com/download.htm)
- [Справочник по командам ассемблера](http://www.cs.virginia.edu/~evans/cs216/guides/x86.html)
- [Учебник по MASM32](http://www.asmcommunity.net/board/)