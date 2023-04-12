<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/html" xmlns:th="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords"
          content="​Автоматизированный алгоритм выбора антидепрессанта для терапии депрессивного эпизода у больных ишемической болезнью сердца​">
    <meta name="description" content="">
    <#--    <link href="//cdn.boot-css.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">-->
    <title>Главная</title>
    <title>Автоматизированный алгоритм выбора антидепрессанта для терапии депрессивного эпизода у больных ишемической
        болезнью сердца</title>
    <link rel="stylesheet" href="../static/my_file.css">
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);

        body {
            background-color: #EDF5E1;
            font-family: "Roboto", helvetica, "Times New Roman", sans-serif;
            text-rendering: optimizeLegibility;
        }

        .table-fill {
            background: white;
            padding: 5px;
            width: 80%;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            animation: float 5s infinite;
        }

        tr {
            border-top: 1px solid #C1C3D1;
            color: #666B85;
        }

        td {
            background: #FFFFFF;
            padding: 10px;
            text-align: left;

        }

    </style>
</head>
<body>


<h1><p align="center" style="font:italic 50px bold " Times New Roman> Автоматизированный алгоритм выбора антидепрессанта
        для терапии депрессивного эпизода у больных ишемической болезнью сердца </p></h1>
<ol class="u-align-justify u-text u-text-2">
    <li><p align="justify" style="font:italic 20px bold " Times New Roman>В первой
            графе («шаги алгоритма») поставьте «да» напротив выбранной Вами группы
            антидепрессантов, а затем и антидепрессанта, с Вашей точки зрения наиболее
            подходящих для конкретного пациента с ишемической болезнью сердца и
            диагностированным депрессивным расстройством.<br>
        </p></li>
    <li><p align="justify" style="font:italic 20px bold " Times New Roman>Далее
            последовательно анализируйте каждый из ниже представленных «шагов алгоритма»,
            отмечая каким-либо образом (например, «V»)
            желаемый эффект для конкретного пациента, а затем – и один, выбранный Вами из
            предложенной группы, антидепрессант.</p></li>
    <li><p align="justify" style="font:italic 20px bold " Times New Roman> Подсчитайте
            количество вариантов «да» для каждого из антидепрессантов. 3 препарата,
            набравших максимальное количество выборов, являются оптимальными для данного
            пациента с ИБС и выявленным депрессивным расстройством.</p></li>
    <li><p align="justify" style="font:italic 20px bold " Times New Roman>Уточните
            для выбранного антидепрессанта относительные противопоказания и взаимодействия
            с другими препаратами, принимаемыми пациентом в соответствии с инструкцией к
            применению.<br></p>
    </li>
</ol>
<br>


<table class="table-fill" border="1" cellspacing="1" cellpadding="5" width="80%" align="center">
    <thead>
    <tr>
        <th></th>
        <th>Эффекты</th>
        <th>Препараты</th>
    </tr>
    </thead>
    <tbody>
    <#list effects as effect>

        <tr class="tableBody" align="center" valign="middle">
            <td><input type="checkbox" name="item1"></td>
            <td width="50%" align="center">${effect.effectOfAntidepresant} </td>
            <td width="50%" align="center">
                <#list effect.preparations as preparations>
                    <span>${preparations.pre_name}</span>
                </#list>
            </td>
        </tr>
    </#list>
    </tbody>
</table>


<br>
<div align="center">
    <button class="btn" id="btn">Рассчитать</button>
</div>

<h2>Список наиболее повторяющихся слов:</h2>
<ul id="wordList"></ul>
<#--<form name="search">-->
<#--    <input type="submit" name="qqq" value="Send"/>-->
<#--</form>-->
<#--    <button onclick = "button_click()" name="qqq">Показать препараты</button>-->
<#--<script src="../static/script.js"></script>-->
<script>
    const button = document.getElementById('btn')
    button.addEventListener('click', filterTable)
    // let enter = button => button.classList.toggle("bg-rose");
    // let leave = button => button.classList.toggle("bg-rose");


    function filterTable() {

        function countSubstring(str, substr) {
            var count = 0;
            var pos = str.indexOf(substr);

            while (pos !== -1) {
                count++;
                pos = str.indexOf(substr, pos + 1);
            }

            return count;
        }

        var table = document.getElementsByTagName('table')[0];
        const allRows = document.getElementsByTagName('table')
        // Получаем все checkbox в таблице
        var checkboxes = document.querySelectorAll('input[type=checkbox]');

        // Создаем массив для хранения помеченных checkbox и данных из второго столбца
        var checked = [];
        var data = [];
        const checkedRows = []

        // Проходимся по всем checkbox и добавляем помеченные в массив
        for (var i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                checkedRows.push(allRows[i].innerText)
                checked.push(checkboxes[i]);
                data.push(checkboxes[i].parentNode.previousSibling.textContent);
            }
        }

        let medicineArray = []
        let medicineString = ''

        for (let i = 0; i < checkedRows.length; i++) {
            checkedRows[i] = checkedRows[i].slice(checkedRows[i].lastIndexOf('\t')).replace('\t', '')
            medicineString += checkedRows[i]
            medicineArray.push(...checkedRows[i].replaceAll(' ', '').split(','))
        }

        console.log('String', medicineString)
        console.log('Array', medicineArray)

        let biggest = {
            name: '',
            count: 0
        }
        let middle = {
            name: '',
            count: 0
        }
        let smallest = {
            name: '',
            count: 0
        }

        for (let i = 0; i < medicineArray.length; i++) {
            const result = countSubstring(medicineString, medicineArray[i])
            if (result > biggest.count) {
                biggest.name = medicineArray[i]
                biggest.count = result
            } else if (result > middle.count) {
                if (biggest.name !== medicineArray[i]) {
                    middle.name = medicineArray[i]
                    middle.count = result
                }
            } else if (result > smallest.count) {
                if (biggest.name !== medicineArray[i] && middle.name !== medicineArray[i]) {
                    smallest.name = medicineArray[i]
                    smallest.count = result
                }
            }
        }

        console.log(biggest)
        console.log(middle)
        console.log(smallest)


        var str = "Hello, world!";
        var substr = "l";
        // var count = countSubstring(str, substr);

        // console.log(count); // 3

        // console.log('rows', checkedRows)

        // Проходимся по всем строкам таблицы
        var rows = document.getElementsByTagName("tr");
        for (var i = 0; i < rows.length; i++) {
            // Если строка содержит checkbox, проверяем, был ли он помечен
            var rowCheckbox = rows[i].getElementsByTagName("input")[0];
            if (rowCheckbox && rowCheckbox.type === "checkbox") {
                if (checked.indexOf(rowCheckbox) === -1) {
                    // Если checkbox не помечен, скрываем строку
                    rows[i].style.display = "none";
                } else {
                    // Если checkbox помечен, показываем строку
                    rows[i].style.display = "";
                }
            }
        }

        // Считаем повторяющиеся слова
        var words = [];
        var wordList = document.getElementById('wordList');
        var rows = table.getElementsByTagName('tr');

        for (var i = 1; i < rows.length; i++) {
            var word = rows[i].getElementsByTagName('td')[1].textContent;
            if (words[word]) {
                words[word]++;
            } else {
                words[word] = 1;
            }
            console.log(words)
        }


        // Сортируем слова по количеству повторений
        var sortedWords = Object.keys(words).sort(function (a, b) {
            return words[b] - words[a];
        });

        // Выводим три наиболее повторяющихся слова
        for (var i = 0; i < 3; i++) {
            for (var i = 0; i < 3; i++) {
                if (sortedWords[i]) {
                    var li = document.createElement('li');
                    li.textContent = biggest.name + ', ' + middle.name + ', ' + smallest.name + '.';

                    // li.textContent = sortedWords[i] + ' (' + words[sortedWords[i]] + ')';
                    wordList.appendChild(li);
                }
            }
        }
    }
</script>
</body>
</html>