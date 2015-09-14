1. В домашнем каталоге создать каталог Text и сделать его текущим.

  ```sh
  $ mkdir Text
  $ cd Text/
  ```

2. Используя редактор `vim`, создайте в каталоге `Text` файл `hello.txt`.

  ```sh
  $ vim hello.txt
  ```

3.  При помощи команды `cat` вывести содержимое файла `hello.txt`.

  `$ cat hello.txt `

4. Создайте копии файла `hello.txt` в текущем каталоге при помощи команд `cp` и `cat`, назвав новые файлы `hello_cp.txt` и `hello_cat.txt` соответственно.

  ```sh
  $ cp hello.txt hello_cp.txt
  $ cat hello.txt >> hello_cat.txt
  ```

5. Отмените у владельца-пользователя право на запись в файл ```hello_cp.txt```, а всем остальным пользователям отмените право на запись в файл ```hello_cat.txt```.

  ```sh
  $ chmod u-w hello_cp.txt
  $ chmod g-w,o-w hello_cat.txt
  ```

6. Последовательно при помощи одной команды допишите к концу файла `hello_cat.txt` содержимое всех файлов из каталога `/etc`, именя которых заканчиваются словом "release" или "version". Выведите содержимое файла `hello_cat.txt` на экран при помощи команды `less`.

  ```sh
  $ sudo find /etc -name '*version' -o -name '*release' -type f -exec cat {} >> hello_cat.txt \;
  ```

  С помощью `xargs`

  ```sh
  $ sudo find /etc -name '*version' -o -name '*release' -type f | xargs cat >> hello_cat.txt
  $ less hello_cat.txt
  ```

7. В каталоге `Text` создайте каталоги `backup` и `temp`.

  ```sh
  $ mkdir backup temp
  ```

8. Выполнить копирование одной командой сразу всех раннее созданых текстовых фалов в каталог `backup`.

  ```sh
  $ cp *.txt backup/
  ```

9. Выполнить копирование каталога `backup` со всем его содержимым в каталог `temp`. Удалите файл `hello_cp.txt` из каталога `backup`, расположенного в каталоге `temp`.

  ```sh
  $ cp -R backup/ temp/
  $ cd temp/backup/
  $ rm hello_cp.txt
  ```

10. Выполните команду `ps -ef`, при этом перенаправьте её вывод в файл `ps_result.txt`, который должен быть размещен в каталоге `Text`.

  ```sh
  $ cd ..
  $ cd ..
  $ ps -ef > ps_result.txt
  ```

11. Переименуйте файл `./Text/hello.txt` на `./Text/h.txt`.

  ```sh
  $ mv hello.txt h.txt
  ```


