# Гайд по установке и локальному развертыванию проекта на MacOs

## Установка Ruby через RVM

### Установка RVM

Если RVM не установлен, установите его с помощью следующих команд:

```bash
\curl -sSL https://get.rvm.io | bash -s stable
```
После установки перезагрузите терминал, чтобы RVM заработал

### Установка Ruby 3.1.2

С помощью RVM установите нужную версию Ruby:

```bash
rvm install 3.1.2
```
Затем выберите её как текущую версию:

```bash
rvm use 3.1.2 --default
```

## Установка Rails
Теперь установите Rails версии 7.0.8.5:

```bash
gem install rails -v 7.0.8.5
```
Проверьте версию:

```bash
rails -v
```
Ожидаемый вывод:

```bash
Rails 7.0.8.5
```

## Установка PostgreSQL 14 через Homebrew

Установите [brew](https://brew.sh/).

Чтобы установить PostgreSQL версии 14 с помощью Homebrew, выполните следующую команду в терминале:

```bash
brew install postgresql@14
```
И запустите:

```bash
brew services start postgresql@14
```

## Клонирование репозитория проекта
Склонируйте проект, в терминале выполните команду:

```bash
git clone https://github.com/rinatcher/gaming_buddy.git
```
Перейдите в папку проекта:

```bash
cd gaming_buddy
```

## Установка зависимостей и настройка БД
Для установки зависимостей Ruby:
```bash
bundle install
```
Создайте и мигрируйте базу данных:

```bash
rails db:create
rails db:migrate
```
Запустите сервер командой:
```bash
rails server
```
Теперь проект должен быть доступен по адресу http://localhost:3000.


