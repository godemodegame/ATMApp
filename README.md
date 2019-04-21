<p align="center">
    <img src="https://user-images.githubusercontent.com/1342803/36623515-7293b4ec-18d3-11e8-85ab-4e2f8fb38fbd.png" width="320" alt="API Template">
    <br>
    <br>
    <a href="http://docs.vapor.codes/3.0/">
        <img src="http://img.shields.io/badge/read_the-docs-2196f3.svg" alt="Documentation">
    </a>
    <a href="https://discord.gg/vapor">
        <img src="https://img.shields.io/discord/431917998102675485.svg" alt="Team Chat">
    </a>
    <a href="LICENSE">
        <img src="http://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
    </a>
    <a href="https://circleci.com/gh/vapor/api-template">
        <img src="https://circleci.com/gh/vapor/api-template.svg?style=shield" alt="Continuous Integration">
    </a>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-4.1-brightgreen.svg" alt="Swift 4.1">
    </a>
</p>

Для запуска нужен linux или macos c установленными swift (минимум v4.1) и vapor(v3.0)

    git clone https://github.com/godemodegame/atmapp.git
    cd ./atmapp
    rm -rf .build Package.resolve && vapor build
    vapor run
    
<b>Возможности:</b> 
<br><b>post</b>-запрос /api/atms добавляет в базу данных информацию об 1 банкомате
<br><b>get</b>-запрос /api/atms возвращает json с информацией о всех банкоматахБ которые есть в бд
<br><b>get</b>-запрос /api/atms/id , где id любое integer число, вернет информацию о банкомате, которому присвоено это id (если банкомата с таким id нет, то вернется json с ошибкой, в которой будет написано, что такого id нет)
<br><b>put</b>-запрос /api/atms/id обновит ифнормацию банкомата с заданным id
<br><b>delete</b>-запрос /api/atms/id удалит банкомат с заданным id
<br><br><b>Пример:</b>
<br>К моему проекту можно обращаться по адресу http://80.211.90.93:8080/ (работают только get запросы, остальные отключены в целях безопасности бд)
