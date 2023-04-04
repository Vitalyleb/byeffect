function filterTable() {

    console.log('I am here!')

    var table = document.getElementsByTagName('table')[0];
    // Получаем все checkbox в таблице
    var checkboxes = document.querySelectorAll('input[type=checkbox]');

    // Создаем массив для хранения помеченных checkbox и данных из второго столбца
    var checked = [];
    var data = [];

    // Проходимся по всем checkbox и добавляем помеченные в массив
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked) {
            checked.push(checkboxes[i]);
            data.push(checkboxes[i].parentNode.previousSibling.textContent);
            // console.log(checkboxes[i].parentNode.previousSibling.textContent);
        }
    }

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
        // console.log(words)
    }


    // Сортируем слова по количеству повторений
    var sortedWords = Object.keys(words).sort(function(a, b) {
        return words[b] - words[a];
    });

    // Выводим три наиболее повторяющихся слова
    for (var i = 0; i < 3; i++) {
        for (var i = 0; i < 3; i++) {
            if (sortedWords[i]) {
                var li = document.createElement('li');
                li.textContent = sortedWords[i] + ' (' + words[sortedWords[i]] + ')';
                wordList.appendChild(li);
            }
        }
    }
}