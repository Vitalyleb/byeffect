<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​Автоматизированный алгоритм выбора антидепрессанта для терапии депрессивного эпизода у больных ишемической болезнью сердца​">
    <meta name="description" content="">
    <title>Главная</title>
    <title>Автоматизированный алгоритм выбора антидепрессанта для терапии депрессивного эпизода у больных ишемической болезнью сердца</title>
    <style type="text/css">
        .custom-btn {
            width: 130px;
            height: 40px;
            color: #118f93;
            border-radius: 5px;
            padding: 10px 25px;
            font-family: 'Lato', sans-serif;
            font-weight: 500;
        }
        .btn-8 {
            background-color: #c38f93;
            background-image: linear-gradient(315deg, #f0ecfc 0%, #c797eb 74%);
            line-height: 42px;
            padding: 0;
            border: none;
        }
    </style>
</head>
<body style="background-color: #ADD8E6">


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


<#list effects as effect>
    <div>
<#--        <table>-->
<#--            <thead>-->
<#--            <tr>-->
<#--                <th scope="col">id</th>-->
<#--                <th scope="col">Effect</th>-->
<#--                <th scope="col">prep</th>-->
<#--            </tr>-->
<#--            </thead>-->
<#--            <tbody>-->
<#--&lt;#&ndash;            <tr th:each="effect : ${effect}">&ndash;&gt;-->
<#--                <td th:text=${effect.id}></td>-->
<#--                <td th:text=${effect.eff}></td>-->
<#--                <td th:text="${effect.pre}"></td>-->
<#--            </tr>-->
<#--            </tbody>-->
<#--        </table>-->
        <p><b>${effect.eff}</b> ${effect.pre}</p>
    </div>
</#list>

<form action="/calculation" method="get" target="_blank">
    <center><button class="custom-btn btn-8" type="submit"><span><a href="/calculation">Рассчет</a></span></button></center>
</form>
</body>
</html>