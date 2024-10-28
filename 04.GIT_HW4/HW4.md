## HW4

```bash
User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT
$ git clone git@github.com:AndreiBakaushyn/02.C.git
Cloning into '02.C'...
remote: Enumerating objects: 12, done.
remote: Counting objects: 100% (12/12), done.
remote: Compressing objects: 100% (9/9), done.
remote: Total 12 (delta 1), reused 9 (delta 1), pack-reused 0 (from 0)
Receiving objects: 100% (12/12), 18.97 KiB | 9.48 MiB/s, done.
Resolving deltas: 100% (1/1), done.

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT
$ ls -la
total 28
drwxr-xr-x 1 User 197121 0 Oct 28 20:21 ./
drwxr-xr-x 1 User 197121 0 Oct 27 13:23 ../
drwxr-xr-x 1 User 197121 0 Oct 28 20:21 02.C/
drwxr-xr-x 1 User 197121 0 Oct 28 20:13 My_DevOps/

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT
$ cd 02.C/

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ echo "*.txt" >> .gitignore

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        .gitignore

nothing added to commit but untracked files present (use "git add" to track)

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ git add .gitignore
warning: LF will be replaced by CRLF in .gitignore.
The file will have its original line endings in your working directory

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ git commit -m "Add .gitignore to exclude .txt files"
[main a06aaca] Add .gitignore to exclude .txt files
 1 file changed, 1 insertion(+)
 create mode 100644 .gitignore

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ git push
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 309 bytes | 309.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To github.com:AndreiBakaushyn/02.C.git
   d2298d0..a06aaca  main -> main

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ git checkout -b feature-branch
Switched to a new branch 'feature-branch'

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (feature-branch)
$ echo "New feature" > feature.txt

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (feature-branch)
$ git add feature.txt && git commit -m "Add feature in feature-branch"
The following paths are ignored by one of your .gitignore files:
feature.txt
hint: Use -f if you really want to add them.
hint: Turn this message off by running
hint: "git config advice.addIgnoredFile false"

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (feature-branch)
$ git add feature && git commit -m "Add feature in feature-branch"
fatal: pathspec 'feature' did not match any files

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (feature-branch)
$ echo "New feature" > feature.txt

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (feature-branch)
$ echo "New feature" > feature

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (feature-branch)
$ git add feature && git commit -m "Add feature in feature-branch"
warning: LF will be replaced by CRLF in feature.
The file will have its original line endings in your working directory
[feature-branch 193677f] Add feature in feature-branch
 1 file changed, 1 insertion(+)
 create mode 100644 feature

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (feature-branch)
$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ git log --oneline
a06aaca (HEAD -> main, origin/main, origin/HEAD) Add .gitignore to exclude .txt files
d2298d0 Initial commit

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ git branch -a
  feature-branch
* main
  remotes/origin/HEAD -> origin/main
  remotes/origin/dev
  remotes/origin/main

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ git chekout feature-branch
git: 'chekout' is not a git command. See 'git --help'.

The most similar command is
        checkout

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ git checkout feature-branch
Switched to branch 'feature-branch'

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (feature-branch)
$ git log --oneline
193677f (HEAD -> feature-branch) Add feature in feature-branch
a06aaca (origin/main, origin/HEAD, main) Add .gitignore to exclude .txt files
d2298d0 Initial commit

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (feature-branch)
$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ git cherry-pick 193677f
[main 9257e18] Add feature in feature-branch
 Date: Mon Oct 28 20:25:04 2024 +0300
 1 file changed, 1 insertion(+)
 create mode 100644 feature

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ git submodule add https://github.com/AndreiBakaushyn/07.k8s.git
Cloning into 'C:/Users/Екатерина/Desktop/GIT/02.C/07.k8s'...
remote: Enumerating objects: 34, done.
remote: Counting objects: 100% (34/34), done.
remote: Compressing objects: 100% (17/17), done.
remote: Total 34 (delta 4), reused 29 (delta 3), pack-reused 0 (from 0)
Receiving objects: 100% (34/34), 5.47 KiB | 1.37 MiB/s, done.
Resolving deltas: 100% (4/4), done.
warning: LF will be replaced by CRLF in .gitmodules.
The file will have its original line endings in your working directory

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$ ^C

User@DESKTOP-8NO2UDP MINGW64 ~/Desktop/GIT/02.C (main)
$
   ```
###
cherry-pick позволяет выбрать один или несколько коммитов из одной ветки и применить 
их к другой ветке. Например, если в ветке feature есть коммит, который нужен в main,
можно использовать git cherry-pick и написать ХЕШ комита.

Разница между git rebase и git merge
git merge: объединяет изменения двух веток, создавая новый коммит слияния.
git rebase: применяет коммиты одной ветки поверх другой, изменяя историю .
Разница между git pull и git fetch
git fetch: загружает коммиты с удаленного репозитория, но не обновляет текущую ветку.
git pull: это сочетание fetch и merge (или fetch и rebase), которое обновляет локальную ветку с изменениями из удаленной.
git submodule: позволяет добавлять один репозиторий Git внутри другого как подмодуль. Это полезно для управления зависимостями между проектами.
стратегии ветвления, Git Flow, GitHub Flow, GitLab Flow, Trunk Based Development.
1. Git Flow
Описание: Эта модель ветвления, предложенная Винсентом Дриессеном, особенно популярна для проектов с регулярными релизами.
Основные ветки:
main (или master): стабильная ветка, используется только для релизов.
develop: основная ветка для разработки.
Дополнительные ветки:
feature/*: ветки для разработки новых функций, ответвляются от develop.
release/*: ветки для подготовки релиза, ответвляются от develop и после готовности мержатся в main и develop.
hotfix/*: ветки для срочных исправлений, создаются от main, после завершения мержатся в main и develop.
Плюсы: Четкая структура, позволяет легко управлять релизами и багфиксами.
Минусы: Может быть избыточной для небольших проектов или непрерывной интеграции.
2. GitHub Flow
Описание: Простая стратегия, популяризированная GitHub, часто используется для непрерывной интеграции и деплоя.
Основная ветка:
main (или master): единственная стабильная ветка, из которой деплоится код.
Ветки для изменений:
Новые фичи и багфиксы разрабатываются в отдельных ветках от main.
Все ветки проходят через пулл-реквесты перед мержем в main.
Плюсы: Легкость и простота, идеально подходит для непрерывной доставки.
Минусы: Нет встроенной структуры для релизов; подходит не всем проектам.
3. GitLab Flow
Описание: Это модификация GitHub Flow, ориентированная на интеграцию с окружениями (например, staging, production).
Основные модели:
Production Branches: main (или master) для production, дополнительные ветки могут быть для staging и других окружений.
Environment Branches: отдельные ветки для каждого окружения, например staging, pre-production, production.
Release Branches: отдельные ветки для подготовки и релиза версий, похожие на подход в Git Flow.
Плюсы: Более гибкая модель, чем GitHub Flow, поддерживает работу с несколькими окружениями.
Минусы: Может быть сложнее в настройке, чем GitHub Flow.
4. Trunk-Based Development
Описание: Эта стратегия подразумевает работу в одной основной ветке (trunk или main) и минимизацию использования длинных веток.
Основной процесс:
Все разработчики регулярно коммитят изменения в main, избегая долгоживущих веток.
Краткоживущие ветки для фичей мержатся в main сразу после завершения работы.
Плюсы: Идеально для непрерывной интеграции, простота ветвления, быстрое обнаружение ошибок.
Минусы: Требует хорошей системы тестирования и автоматизации для предотвращения нестабильности main.
Каждая стратегия имеет свои плюсы и минусы, и выбор зависит от нужд команды и проекта.
Trunk-Based Development чаще всего используется в CI/CD с коротким циклом релизов, Git Flow
удобен для больших проектов с редкими релизами,а GitHub Flow и GitLab Flow — более легкие модели
для команд, предпочитающих непрерывную интеграцию и доставку.
