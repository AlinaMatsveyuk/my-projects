#!/bin/bash

echo "Создать папку? (Y/n)"
read item
case "$item" in
    Y ) mkdir FolderName_1;;
    n ) exit 0;;
    * ) echo "Неизвестная команда. Выходим!" && exit 0;;
esac

echo "Войти в папку 1? (Y/n)"
read item
case "$item" in
    Y ) cd FolderName_1;;
    n ) exit 0;;
    * ) echo "Неизвестная команда. Выходим!" && exit 0;;
esac
 
echo "Создать 3 папки? (Y/n)"
read item
case "$item" in
    Y ) mkdir FolderName_2 FolderName_3 FolderName_4;;
    n ) exit 0;;
    * ) echo "Неизвестная команда. Выходим!" && exit 0;;
esac

echo "Войти в папку 3? (Y/n)"
read item
case "$item" in
    Y ) cd FolderName_3;;
    n ) exit 0;;
    * ) echo "Неизвестная команда. Выходим!" && exit 0;;
esac

echo "Создать 5 файлов (3 txt, 2 json)? (Y/n)"
read item
case "$item" in
    Y ) touch 1.txt 2.txt 3.txt 4.json 5.json;;
    n ) exit 0;;
    * ) echo "Неизвестная команда. Выходим!" && exit 0;;
esac

echo "Создать 3 папки? (Y/n)"
read item
case "$item" in
    Y ) mkdir FolderName_5 && mkdir FolderName_6 && mkdir FolderName_7;;
    n ) exit 0;;
    * ) echo "Неизвестная команда. Выходим!" && exit 0;;
esac

echo "Вывести список содержимого папки? (Y/n)"
read item
case "$item" in
    Y ) ls -la;;
    n ) exit 0;;
    * ) echo "Неизвестная команда. Выходим!" && exit 0;;
esac

echo "Переместить 2 файла? (Y/n)"
read item
case "$item" in
    Y ) mv ./{2.txt,4.json} ./FolderName_5;;
    n ) exit 0;;
    * ) echo "Неизвестная команда. Выходим!" && exit 0;;
esac 
