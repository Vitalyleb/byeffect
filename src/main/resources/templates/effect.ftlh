<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html" xmlns:th="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Автоматизированный алгоритм выбора антидепрессанта для терапии депрессивного эпизода у больных ишемической болезнью сердца​">
    <meta name="description" content="">
    <link href="//cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <title>Главная</title>
    <title>Автоматизированный алгоритм выбора антидепрессанта для терапии депрессивного эпизода у больных ишемической болезнью сердца</title>
    <style type="text/css">
        table {
            font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
            font-size: 14px;
            border-collapse: collapse;
            text-align: center;
        }
        th, td:first-child {
            background: #AFCDE7;
            color: white;
            padding: 10px 20px;
        }
        th, td {
            border-style: solid;
            border-width: 0 1px 1px 0;
            border-color: white;
        }
        td {
            background: #D8E6F3;
        }
        th:first-child, td:first-child {
            text-align: left;
        }
    </style>
</head>
<body>


<h1><p align="center" style="font:italic 50px bold "Times New Roman> Автоматизированный алгоритм выбора антидепрессанта для терапии депрессивного эпизода у больных ишемической болезнью сердца </p></h1>
<ol class="u-align-justify u-text u-text-2">
    <li><p align="justify" style="font:italic 20px bold "Times New Roman>В первой
            графе («шаги алгоритма») поставьте «да» напротив выбранной Вами группы
            антидепрессантов, а затем и антидепрессанта, с Вашей точки зрения наиболее
            подходящих для конкретного пациента с ишемической болезнью сердца и
            диагностированным депрессивным расстройством.<br>
        </p></li>
    <li><p align="justify" style="font:italic 20px bold "Times New Roman>Далее
            последовательно анализируйте каждый из ниже представленных «шагов алгоритма»,
            отмечая каким-либо образом (например, «V»)
            желаемый эффект для конкретного пациента, а затем – и один, выбранный Вами из
            предложенной группы, антидепрессант.</p></li>
    <li><p align="justify" style="font:italic 20px bold "Times New Roman> Подсчитайте
            количество вариантов «да» для каждого из антидепрессантов. 3 препарата,
            набравших максимальное количество выборов, являются оптимальными для данного
            пациента с ИБС и выявленным депрессивным расстройством.</p></li>
    <li><p align="justify" style="font:italic 20px bold "Times New Roman>Уточните
            для выбранного антидепрессанта относительные противопоказания и взаимодействия
            с другими препаратами, принимаемыми пациентом в соответствии с инструкцией к
            применению.<br></p>
    </li>
</ol>
<br>


<#list effects as effect>
    <div>
        <table class="table_col" border="1" cellspacing="1" cellpadding="5" width="80%" align="center">
            <thead>
            <tr>
                <th>Эффекты</th>
                <th>Препараты</th>
            </tr>
            </thead>
            <tbody>
            <tr class="tableBody" align="center" valign="middle">
                <td><input type="checkbox" name="item1"></td>
                <td width="50%" align="center">${effect.eff} </td>
                <td width="50%" align="center">${effect.pre}</td>
            </tr>
            </tbody>
        </table>

    </div>
</#list>
<br>
<button onclick="button_click">Показать препараты</button>


<script>
    function button_click() {
        // Получаем все checkbox
        var checkboxes = document.getElementsByName('checkbox');

        // Создаем список для хранения отмеченных checkbox
        var checked_checkboxes = [];

        // Проходимся по всем checkbox и добавляем отмеченные в список
        for (var i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                checked_checkboxes.push(checkboxes[i]);
            }
        }

        // Создаем список для хранения слов из второго столбца
        var column2_data = [];

        // Проходимся по всем отмеченным checkbox и добавляем данные из второго столбца в список
        for (var i = 0; i < checked_checkboxes.length; i++) {
            var row = checked_checkboxes[i].parentNode.parentNode;
            var column2_cell = row.cells[1];
            column2_data.push(column2_cell.innerHTML);
        }

        // Считаем повторения слов и выводим три наиболее повторяющихся слова
        var word_count = {};
        for (var i = 0; i < column2_data.length; i++) {
            if (column2_data[i] in word_count) {
                word_count[column2_data[i]] += 1;
            } else {
                word_count[column2_data[i]] = 1;
            }
        }
        var top_three = Object.keys(word_count).sort(function(a, b) { return word_count[b] - word_count[a]; }).slice(0, 3);
        console.log(top_three);
    }
</script>
</body>
</html>