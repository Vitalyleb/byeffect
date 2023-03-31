<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html" xmlns:th="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Автоматизированный алгоритм выбора антидепрессанта для терапии депрессивного эпизода у больных ишемической болезнью сердца​">
    <meta name="description" content="">
<#--    <link href="//cdn.boot-css.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">-->
    <title>Главная</title>
    <title>Автоматизированный алгоритм выбора антидепрессанта для терапии депрессивного эпизода у больных ишемической болезнью сердца</title>
    <link rel="stylesheet" href="../static/my_file.css">
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
                <th></th>
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
<button onclick="filterTable()">Filter Data</button>
<h2>Список наиболее повторяющихся слов:</h2>
<ul id="wordList"></ul>
<#--<form name="search">-->
<#--    <input type="submit" name="qqq" value="Send"/>-->
<#--</form>-->
<#--    <button onclick = "button_click()" name="qqq">Показать препараты</button>-->
<script src="../static/script.js"></script>
</body>
</html>