if not WeakAuras.IsCorrectVersion() then return end

if not(GetLocale() == "ruRU") then
  return
end

local L = WeakAuras.L

-- WeakAuras/Options
	--[[Translation missing --]]
	L[" and |cFFFF0000mirrored|r"] = " and |cFFFF0000mirrored|r"
	L["-- Do not remove this comment, it is part of this trigger: "] = "-- Не удаляйте этот комментарий, он является частью этого триггера: "
	--[[Translation missing --]]
	L[" rotated |cFFFF0000%s|r degrees"] = " rotated |cFFFF0000%s|r degrees"
	L["% of Progress"] = "% прогресса"
	L["%i auras selected"] = "%i |4индикация выбрана:индикации выбраны:индикаций выбрано;"
	L["%i Matches"] = "%i |4совпадение:совпадения:совпадений;"
	L["%s - Option #%i has the key %s. Please choose a different option key."] = "Ключ |cFFE6CC80%3$s|r уже используется в Параметре %2$i индикации %1$s. Пожалуйста, выберите другой ключ."
	L["%s %s, Lines: %d, Frequency: %0.2f, Length: %d, Thickness: %d"] = "%s %s; Линии %d; Частота %.3g; Длина %0.3g; Толщина %0.3g"
	L["%s %s, Particles: %d, Frequency: %0.2f, Scale: %0.2f"] = "%s %s; Частицы %d; Частота %.3g; Масштаб %.3g"
	L["%s Alpha: %d%%"] = "%s Прозрачность %d%%"
	L["%s Color"] = "%s "
	L["%s Default Alpha, Zoom, Icon Inset, Aspect Ratio"] = "%s Значения по умолчанию"
	L["%s Inset: %d%%"] = "%s Вставка %d%%"
	L["%s is not a valid SubEvent for COMBAT_LOG_EVENT_UNFILTERED"] = "%s не является допустимым внутренним событием COMBAT_LOG_EVENT_UNFILTERED"
	L["%s Keep Aspect Ratio"] = "%s Сохранение пропорций изображения"
	L["%s total auras"] = "Всего %s |4индикация:индикации:индикаций;"
	L["%s Zoom: %d%%"] = "%s Увеличение %d%%"
	L["%s, Border"] = "%s; Граница"
	L["%s, Offset: %0.2f;%0.2f"] = "%s; Смещение (%.4g, %.4g)"
	L["%s, offset: %0.2f;%0.2f"] = "%s; Смещение (%.4g, %.4g)"
	--[[Translation missing --]]
	L["%s|cFFFF0000custom|r texture with |cFFFF0000%s|r blend mode%s%s"] = "%s|cFFFF0000custom|r texture with |cFFFF0000%s|r blend mode%s%s"
	L["(Right click to rename)"] = "(Правый клик для смены названия)"
	L["|c%02x%02x%02x%02xCustom Color|r"] = "Свечение |c%02x%02x%02x%02xO|r цвета"
	--[[Translation missing --]]
	L["|cFFE0E000Note:|r This sets the description only on '%s'"] = "|cFFE0E000Note:|r This sets the description only on '%s'"
	--[[Translation missing --]]
	L["|cFFE0E000Note:|r This sets the URL on all selected auras"] = "|cFFE0E000Note:|r This sets the URL on all selected auras"
	--[[Translation missing --]]
	L["|cFFE0E000Note:|r This sets the URL on this group and all its members."] = "|cFFE0E000Note:|r This sets the URL on this group and all its members."
	--[[Translation missing --]]
	L["|cFFFF0000Automatic|r length"] = "|cFFFF0000Automatic|r length"
	--[[Translation missing --]]
	L["|cFFFF0000default|r texture"] = "|cFFFF0000default|r texture"
	--[[Translation missing --]]
	L["|cFFFF0000desaturated|r "] = "|cFFFF0000desaturated|r "
	L["|cFFFF0000Note:|r The unit '%s' is not a trackable unit."] = "|cFFFFCC00Предупреждение.|r Единица |cFFE6CC80%s|r не поддерживается."
	L["|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r"] = "|cFFFFCC00Крепление.|r Элемент с точкой крепления |cFFE6CC80%s|r привязан к кадру в точке |cFFE6CC80%s|r"
	L["|cFFffcc00Anchors:|r Anchored |cFFFF0000%s|r to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"] = "|cFFFFCC00Крепление.|r Элемент с точкой крепления |cFFE6CC80%s|r привязан к кадру в точке |cFFE6CC80%s|r со смещением (%s, %s)"
	L["|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r"] = "|cFFFFCC00Крепление.|r Элемент привязан к кадру в точке |cFFE6CC80%s|r"
	L["|cFFffcc00Anchors:|r Anchored to frame's |cFFFF0000%s|r with offset |cFFFF0000%s/%s|r"] = "|cFFFFCC00Крепление.|r Элемент привязан к кадру в точке |cFFE6CC80%s|r со смещением (%s, %s)"
	L["|cFFffcc00Extra Options:|r"] = "|cFFFFCC00Дополнительные параметры:|r"
	--[[Translation missing --]]
	L["|cFFffcc00Extra:|r %s and %s %s"] = "|cFFffcc00Extra:|r %s and %s %s"
	L["|cFFffcc00Font Flags:|r |cFFFF0000%s|r and shadow |c%sColor|r with offset |cFFFF0000%s/%s|r%s%s"] = "|cFFFFCC00Атрибуты текста:|r |cFFE6CC80%s|r; Тень |c%sO|r цвета со смещением (%s, %s);%s%s"
	L["|cFFffcc00Font Flags:|r |cFFFF0000%s|r and shadow |c%sColor|r with offset |cFFFF0000%s/%s|r%s%s%s"] = "|cFFFFCC00Атрибуты текста:|r |cFFE6CC80%s|r; Тень |c%sO|r цвета со смещением (%s, %s);%s%s%s"
	--[[Translation missing --]]
	L["|cFFffcc00Format Options|r"] = "|cFFffcc00Format Options|r"
	L["1 Match"] = "1 cовпадение"
	L["A 20x20 pixels icon"] = "Иконка 20х20 пикселей"
	L["A 32x32 pixels icon"] = "Иконка 32х32 пикселей"
	L["A 40x40 pixels icon"] = "Иконка 40х40 пикселей"
	L["A 48x48 pixels icon"] = "Иконка 48х48 пикселей"
	L["A 64x64 pixels icon"] = "Иконка 64х64 пикселей"
	L["A group that dynamically controls the positioning of its children"] = "Группа, динамически изменяющая позиции своих индикаций"
	L["A Unit ID (e.g., party1)."] = [=[Введите идентификатор единицы (UID, Unit ID).
Например: party4, raid7, arena3, boss2, nameplate6, target, focus, pet и др.]=]
	L["Actions"] = "Действия"
	--[[Translation missing --]]
	L["Add"] = "Add"
	L["Add %s"] = "%s"
	L["Add a new display"] = "Добавить новую индикацию"
	L["Add Condition"] = "Добавить условие"
	L["Add Entry"] = "Добавить запись"
	L["Add Extra Elements"] = "Добавить дополнительные элементы"
	L["Add Option"] = "Добавить параметр"
	L["Add Overlay"] = "Добавить наложение"
	L["Add Property Change"] = "Добавить свойство"
	L["Add Snippet"] = "Добавить фрагмент кода"
	L["Add Sub Option"] = "Добавить внутр. параметр"
	L["Add to group %s"] = "Добавить в группу %s"
	L["Add to new Dynamic Group"] = "Добавить в новую динамическую группу"
	L["Add to new Group"] = "Добавить в новую группу"
	--[[Translation missing --]]
	L["Add Trigger"] = "Add Trigger"
	--[[Translation missing --]]
	L["Additional Events"] = "Additional Events"
	L["Addon"] = "Аддон"
	L["Addons"] = "Аддоны"
	L["Advanced"] = "Комплексный подход"
	L["Align"] = "Выравнивание"
	L["Alignment"] = "Выравнивание"
	L["All of"] = "И (все условия)"
	L["Allow Full Rotation"] = "Разрешить полное вращение"
	L["Alpha"] = "Прозрачность"
	L["Anchor"] = "Крепление"
	L["Anchor Point"] = "Точка крепления"
	L["Anchored To"] = "Прикрепить к"
	L["And "] = "И "
	L["and aligned left"] = "Выранивание по левому краю;"
	L["and aligned right"] = "Выранивание по правому краю;"
	L["and rotated left"] = "Текст повернут вверх;"
	L["and rotated right"] = "Текст повернут вниз;"
	L["and Trigger %s"] = "Триггер %s"
	L["and with width |cFFFF0000%s|r and %s"] = "Ширина поля %s; %s"
	L["Angle"] = "Угол"
	L["Animate"] = "Анимация"
	L["Animated Expand and Collapse"] = "Анимированное свёртывание и развёртывание"
	L["Animates progress changes"] = "Изменение прогресса отображается при помощи анимации"
	--[[Translation missing --]]
	L["Animation End"] = "Animation End"
	--[[Translation missing --]]
	L["Animation Mode"] = "Animation Mode"
	L["Animation relative duration description"] = [=[Длительность анимации относительно длительности индикации, выраженная в виде обыкновенной (1/2) или десятичной (0.5) дробей, процента (50%).

|cFFFF0000Замечание:|r если у индикации нет прогресса (аура без длительности, триггер события без времени и т. д.), то анимация не будет отображаться.

|cFF4444FFПримеры:|r
Если длительность анимации установлена в |cFF00CC0010%|r и триггер индикации - это бафф длительностью 20 секунд, то анимация будет отображаться в течение 2 секунд.
Если длительность анимации установлена в |cFF00CC0010%|r и триггер индикации - это бесконечная аура, то анимация отображаться не будет (хотя могла бы, если бы вы указали длительность в секундах).]=]
	L["Animation Sequence"] = "Цепочка анимаций"
	--[[Translation missing --]]
	L["Animation Start"] = "Animation Start"
	L["Animations"] = "Анимация"
	L["Any of"] = "ИЛИ (любое условие)"
	L["Apply Template"] = "Применить шаблон"
	L["Arcane Orb"] = "Чародейский шар"
	L["At a position a bit left of Left HUD position."] = "Немного левее позиции левого HUD"
	L["At a position a bit left of Right HUD position"] = "Немного правее позиции правого HUD"
	L["At the same position as Blizzard's spell alert"] = "В таком же положении, как предупреждение заклинаний Blizzard"
	L["Aura Name"] = "Название эффекта"
	L["Aura Name Pattern"] = "Образец названия эффекта"
	L["Aura Type"] = "Тип эффекта"
	L["Aura(s)"] = "Эффекты"
	L["Author Options"] = "Параметры Автора"
	L["Auto"] = "Авто"
	L["Auto-Clone (Show All Matches)"] = "Показать все совпадения (Автоклонирование)"
	L["Auto-cloning enabled"] = "Автоклонирование включено"
	L["Automatic"] = "Автоматический"
	L["Automatic Icon"] = "Автоматическая иконка"
	--[[Translation missing --]]
	L["Automatic length"] = "Automatic length"
	L["Backdrop Color"] = "Цвет фона"
	L["Backdrop in Front"] = "Фон спереди"
	L["Backdrop Style"] = "Стиль фона"
	--[[Translation missing --]]
	L["Background"] = "Background"
	L["Background Color"] = "Цвет подложки"
	L["Background Offset"] = "Смещение подложки"
	L["Background Texture"] = "Текстура подложки"
	L["Bar"] = "Полоса"
	L["Bar Alpha"] = "Прозрачность полосы"
	L["Bar Color"] = "Цвет полосы"
	L["Bar Color Settings"] = "Настройки цвета полосы"
	--[[Translation missing --]]
	L["Bar Inner"] = "Bar Inner"
	L["Bar Texture"] = "Текстура полосы"
	L["Big Icon"] = "Большая иконка"
	L["Blend Mode"] = "Режим наложения"
	L["Blue Rune"] = "Синяя руна"
	L["Blue Sparkle Orb"] = "Синий искрящийся шар"
	L["Border"] = "Граница"
	L["Border %s"] = "Граница %s"
	L["Border Anchor"] = "Крепление границы"
	L["Border Color"] = "Цвет границы"
	L["Border in Front"] = "Граница спереди"
	L["Border Inset"] = "Вставка границы"
	L["Border Offset"] = "Смещение границы"
	L["Border Settings"] = "Настройки границы"
	L["Border Size"] = "Размер границы"
	L["Border Style"] = "Стиль границы"
	L["Bottom"] = "Снизу"
	L["Bottom Left"] = "Снизу слева"
	L["Bottom Right"] = "Снизу справа"
	L["Bracket Matching"] = "Закрывать скобки"
	--[[Translation missing --]]
	L["Browse Wago, the largest collection of auras."] = "Browse Wago, the largest collection of auras."
	L["Can be a Name or a Unit ID (e.g. party1). A name only works on friendly players in your group."] = "Введите имя или идентификатор единицы (Unit ID). Имена работают только для игроков, находящихся в вашей группе."
	L["Can be a UID (e.g., party1)."] = [=[Введите идентификатор единицы (UID, Unit ID).
Например: party4, raid7, arena3, boss2, nameplate6, target, focus, pet и др.]=]
	L["Cancel"] = "Отмена"
	L["Center"] = "Центр"
	L["Chat Message"] = "Сообщение в чат"
	--[[Translation missing --]]
	L["Chat with WeakAuras experts on our Discord server."] = "Chat with WeakAuras experts on our Discord server."
	L["Check On..."] = "Проверять..."
	--[[Translation missing --]]
	L["Check out our wiki for a large collection of examples and snippets."] = "Check out our wiki for a large collection of examples and snippets."
	L["Children:"] = "Индикации:"
	L["Choose"] = "Выбрать"
	L["Choose whether the displayed icon is automatic or defined manually"] = "Выберите, будет ли иконка задана автоматически или вручную"
	L["Class"] = "Класс"
	--[[Translation missing --]]
	L["Clip Overlays"] = "Clip Overlays"
	--[[Translation missing --]]
	L["Clipped by Progress"] = "Clipped by Progress"
	L["Close"] = "Закрыть"
	L["Collapse"] = "Свернуть"
	L["Collapse all loaded displays"] = "Свернуть все загруженные индикации"
	L["Collapse all non-loaded displays"] = "Свернуть все не загруженные индикации"
	L["Collapsible Group"] = "Свёртываемая группа"
	L["color"] = "цвет"
	L["Color"] = "Цвет"
	L["Column Height"] = "Высота столбца"
	L["Column Space"] = "Отступ между столбцами"
	--[[Translation missing --]]
	L["Columns"] = "Columns"
	L["Combinations"] = "Логические операции"
	L["Combine Matches Per Unit"] = "Объединить совпадения для каждой единицы"
	L["Common Text"] = "Общие параметры текста"
	L["Compare against the number of units affected."] = "Сравнение с количеством единиц, находящихся под действием эффекта."
	--[[Translation missing --]]
	L["Compatibility Options"] = "Compatibility Options"
	L["Compress"] = "Сжать"
	L["Condition %i"] = "Условие %i"
	L["Conditions"] = "Условия"
	L["Configure what options appear on this panel."] = "Перейти в режим автора, в котором вы можете создавать и редактировать параметры индикации для пользователей."
	L["Constant Factor"] = "Постоянный параметр"
	L["Control-click to select multiple displays"] = "Ctrl-клик для выбора нескольких индикаций"
	L["Controls the positioning and configuration of multiple displays at the same time"] = "Управляет позиционированием и настройкой нескольких индикаций одновременно"
	L["Convert to New Aura Trigger"] = "Преобразовать в новую версию триггера"
	L["Convert to..."] = "Преобразовать в ..."
	L["Cooldown Edge"] = "Эффект Edge (кромка)"
	L["Cooldown Settings"] = "Настройки восстановления"
	L["Cooldown Swipe"] = "Эффект Swipe (затемнение)"
	L["Copy"] = "Копировать"
	L["Copy settings..."] = "Копировать настройки из ..."
	L["Copy to all auras"] = "Копировать во все индикации"
	L["Count"] = "Количество"
	L["Counts the number of matches over all units."] = "Сравнение с количеством совпадений для всех единиц."
	L["Creating buttons: "] = "Создание кнопок:"
	L["Creating options: "] = "Создание настроек:"
	L["Crop X"] = "Обрезать по X"
	L["Crop Y"] = "Обрезать по Y"
	L["Custom"] = "Самостоятельно"
	L["Custom Anchor"] = "Свое крепление"
	--[[Translation missing --]]
	L["Custom Background"] = "Custom Background"
	--[[Translation missing --]]
	L["Custom Check"] = "Custom Check"
	L["Custom Code"] = "Свой код"
	L["Custom Color"] = "Цвет"
	L["Custom Configuration"] = "Пользовательская конфигурация"
	--[[Translation missing --]]
	L["Custom Foreground"] = "Custom Foreground"
	L["Custom Frames"] = "Пользовательские рамки"
	L["Custom Function"] = "Своя функция"
	--[[Translation missing --]]
	L["Custom Grow"] = "Custom Grow"
	L["Custom Options"] = "Пользовательские параметры"
	L["Custom Sort"] = "Свой критерий сортировки"
	L["Custom Trigger"] = "Свой триггер"
	L["Custom trigger event tooltip"] = [=[Напишите события, которые будут вызывать проверку вашего триггера. Несколько событий должны быть разделены запятыми или пробелами.

|cFF4444FFПример:|r
UNIT_POWER  UNIT_AURA, PLAYER_TARGET_CHANGED]=]
	L["Custom trigger status tooltip"] = [=[Напишите события, которые будут вызывать проверку вашего триггера. Несколько событий должны быть разделены запятыми или пробелами.
Поскольку это триггер статуса, указанные события могут быть переданы WeakAuras без ожидаемых аргументов.

|cFF4444FFПример:|r
UNIT_POWER  UNIT_AURA, PLAYER_TARGET_CHANGED]=]
	L["Custom Untrigger"] = "Свой детриггер"
	L["Custom Variables"] = "Свои переменные"
	L["Debuff Type"] = "Тип дебаффа"
	L["Default"] = "По умолчанию"
	L["Default Color"] = "Цвет по умолчанию"
	L["Delete"] = "Удалить"
	L["Delete all"] = "Удалить всё"
	L["Delete children and group"] = "Удалить индикации и группу"
	L["Delete Entry"] = "Удалить запись"
	L["Desaturate"] = "Обесцветить"
	--[[Translation missing --]]
	L["Description"] = "Description"
	L["Description Text"] = "Текст описания"
	L["Determines how many entries can be in the table."] = "Определяет, сколько записей может быть в таблице."
	L["Differences"] = "Различия"
	L["Disabled"] = "Выключено"
	L["Disallow Entry Reordering"] = "Запретить изменение порядка записей"
	L["Discrete Rotation"] = "Дискретный поворот"
	L["Display"] = "Отображение"
	L["Display Icon"] = "Отображаемая иконка"
	L["Display Name"] = "Отображаемое имя"
	L["Display Text"] = "Отображаемый текст"
	L["Displays a text, works best in combination with other displays"] = "Отображает текст, лучше всего работает в сочетании с другими индикациями"
	L["Distribute Horizontally"] = "Распределить по горизонтали"
	L["Distribute Vertically"] = "Распределить по вертикали"
	L["Do not group this display"] = "Не группировать эту индикацию"
	--[[Translation missing --]]
	L["Documentation"] = "Documentation"
	L["Done"] = "Выполнено"
	L["Don't skip this Version"] = "Не пропускать эту версию"
	L["Drag to move"] = "Перетащите для перемещения"
	L["Duplicate"] = "Дублировать"
	L["Duplicate All"] = "Дублировать все"
	L["Duration (s)"] = "Длительность"
	L["Duration Info"] = "Информация о длительности"
	L["Dynamic Duration"] = "Динамическое значение"
	L["Dynamic Group"] = "Динамическая группа"
	L["Dynamic Group Settings"] = "Настройки динамической группы"
	L["Dynamic Information"] = "Динамическая информация"
	L["Dynamic information from first active trigger"] = "Динамическая информация из первого активного триггера"
	L["Dynamic information from Trigger %i"] = "Динамическая информация из Триггера %i"
	L["Dynamic text tooltip"] = [=[Несколько специальных кодов для отображения динамической информации в тексте:

|cFFFF0000%p|r - Прогресс - Оставшееся время таймера или текущее бестаймерное значение
|cFFFF0000%t|r - Всего - Максимальное время таймера или бестаймерное значение
|cFFFF0000%n|r - Название - Название эффекта, заклинания, предмета и т. д. или ID индикации
|cFFFF0000%i|r - Иконка - Иконка, связанная с индикацией
|cFFFF0000%s|r - Стаки - Количество стаков эффекта, предмета, зарядов заклинания и т. д.
|cFFFF0000%c|r - Свой код - Позволяет написать функцию на Lua, которая возвращает одно значение или их список. Для отображения единственного значения используйте |cFFFF0000%c|r, для j-го значения из списка - |cFFFF0000%cj|r
|cFFFF0000%%|r - Показывает символ процента

Запись формата |cFFFF0000%k.m|r выводит на экран информацию из k-го триггера, определённую посредством кода m.
]=]
	L["Ease Strength"] = "Степень функции скорости"
	L["Ease type"] = "Тип изменения скорости анимации"
	L["Edge"] = "Кромка"
	L["eliding"] = "Скрытие текста при переполнении"
	--[[Translation missing --]]
	L["Else If"] = "Else If"
	--[[Translation missing --]]
	L["Else If Trigger %s"] = "Else If Trigger %s"
	L["Enabled"] = "Включено"
	L["End Angle"] = "Конечный угол"
	L["End of %s"] = "Конец группы \"%s\""
	L["Enter a Spell ID"] = "Введите ID заклинания"
	L["Enter an aura name, partial aura name, or spell id"] = "Введите название эффекта, часть его имени или ID заклинания."
	L["Enter an Aura Name, partial Aura Name, or Spell ID. A Spell ID will match any spells with the same name."] = [=[Введите название эффекта, часть его имени или ID заклинания.

Указание ID не обеспечивает нахождение (или исключение) единственного результата, поскольку сопоставление эффектов всё равно происходит по названию заклинания, заданного этим ID.

Для получения взаимно однозначного соответствия используйте параметр "ID заклинания"]=]
	L["Enter Author Mode"] = "Режим автора"
	--[[Translation missing --]]
	L["Enter in a value for the tick's placement."] = "Enter in a value for the tick's placement."
	L["Enter User Mode"] = "Режим пользователя"
	L["Enter user mode."] = "Перейти в режим пользователя, в котором вы можете настроить параметры, заданные автором индикации."
	L["Entry %i"] = "Запись %i"
	--[[Translation missing --]]
	L["Entry limit"] = "Entry limit"
	L["Entry Name Source"] = "Источник названий записей"
	L["Event"] = "Событие"
	L["Event Type"] = "Тип триггера"
	L["Event(s)"] = "События"
	L["Everything"] = "Всех вкладок"
	L["Exact Spell ID(s)"] = "ID заклинания"
	L["Exact Spell Match"] = "Точное совпадение"
	L["Expand"] = "Развернуть"
	L["Expand all loaded displays"] = "Развернуть все загруженные индикации"
	L["Expand all non-loaded displays"] = "Развернуть все не загруженные индикации"
	L["Expansion is disabled because this group has no children"] = "Расширение отключено, так как эта группа не имеет индикаций"
	L["Export to Lua table..."] = "Экспорт в таблицу Lua ..."
	L["Export to string..."] = "Экспорт в строку ..."
	L["External"] = "Внешний ресурс"
	L["Fade"] = "Выцветание"
	L["Fade In"] = "Появление"
	L["Fade Out"] = "Исчезновение"
	L["False"] = "Ложь"
	L["Fetch Affected/Unaffected Names"] = "Извлечь имена задействованных и незадействованных игроков"
	L["Filter by Class"] = "Фильтр по классу"
	L["Filter by Group Role"] = "Фильтр по роли"
	L["Filter by Nameplate Type"] = "Тип индикатора здоровья"
	--[[Translation missing --]]
	L[ [=[Filter formats: 'Name', 'Name-Realm', '-Realm'.

Supports multiple entries, separated by commas
]=] ] = [=[Filter formats: 'Name', 'Name-Realm', '-Realm'.

Supports multiple entries, separated by commas
]=]
	--[[Translation missing --]]
	L["Find Auras"] = "Find Auras"
	L["Finish"] = "Конечная"
	L["Fire Orb"] = "Огненный шар"
	L["Font"] = "Шрифт"
	L["Font Size"] = "Размер шрифта"
	--[[Translation missing --]]
	L["Foreground"] = "Foreground"
	L["Foreground Color"] = "Основной цвет"
	L["Foreground Texture"] = "Основная текстура"
	--[[Translation missing --]]
	L["Format"] = "Format"
	--[[Translation missing --]]
	L["Format for %s"] = "Format for %s"
	--[[Translation missing --]]
	L["Found a Bug?"] = "Found a Bug?"
	L["Frame"] = "Кадр"
	--[[Translation missing --]]
	L["Frame Count"] = "Frame Count"
	--[[Translation missing --]]
	L["Frame Rate"] = "Frame Rate"
	--[[Translation missing --]]
	L["Frame Selector"] = "Frame Selector"
	L["Frame Strata"] = "Слой кадра"
	L["Frequency"] = "Частота"
	L["From Template"] = "Из шаблона"
	L["From version %s to version %s"] = "C %s до %s версии"
	--[[Translation missing --]]
	L["Full Circle"] = "Full Circle"
	--[[Translation missing --]]
	L["Get Help"] = "Get Help"
	L["Global Conditions"] = "Универсальные условия"
	L["Glow %s"] = "Свечение %s"
	L["Glow Action"] = "Действие"
	L["Glow Anchor"] = "Крепление свечения"
	--[[Translation missing --]]
	L["Glow Color"] = "Glow Color"
	--[[Translation missing --]]
	L["Glow External Element"] = "Glow External Element"
	--[[Translation missing --]]
	L["Glow Frame Type"] = "Glow Frame Type"
	--[[Translation missing --]]
	L["Glow Type"] = "Glow Type"
	L["Green Rune"] = "Зеленая руна"
	--[[Translation missing --]]
	L["Grid direction"] = "Grid direction"
	L["Group"] = "Группа"
	L["Group (verb)"] = "Группировать"
	L["Group aura count description"] = [=[Количество единиц заданного типа (|cFFE6CC80%s|r), к которым должен быть применен один или несколько вышеперечисленных эффектов, чтобы сработал триггер.

Если указано целое число (10), то количество единиц, имеющих этот эффект, будет сравниваться с введенным числом.

Если указана обыкновенная (1/2) или десятичная (0.5) дроби, процент (50%%), то в сравнении будет использовано отношение числа задействованных единиц к их общему количеству.

|cFF4444FFПримеры:|r
|cFF00CC00> 0|r - сработает, когда любая единица попала под воздействие
|cFF00CC00= 100%%|r - сработает, когда все единицы попали под воздействие
|cFF00CC00!= 2|r - сработает, если количество единиц с этим эффектом не равно 2
|cFF00CC00<= 0.8|r - сработает, если задействовано не более 80%% от общего числа единиц (4 из 5, 7 из 10)
|cFF00CC00> 1/2|r - сработает, если задействовано больше половины единиц (5 из 5, 6 из 10)
|cFF00CC00>= 0|r - всегда срабатывает, независимо от обстоятельств]=]
	--[[Translation missing --]]
	L["Group by Frame"] = "Group by Frame"
	L["Group contains updates from Wago"] = "Группа содержит индикации, для которых есть обновление"
	--[[Translation missing --]]
	L["Group Description"] = "Group Description"
	L["Group Icon"] = "Иконка группы"
	L["Group key"] = "Ключ группы"
	L["Group Member Count"] = "Кол-во участников"
	--[[Translation missing --]]
	L["Group Options"] = "Group Options"
	L["Group Role"] = "Роль в группе"
	L["Group Scale"] = "Масштаб группы"
	L["Group Settings"] = "Настройки группы"
	L["Group Type"] = "Тип группы"
	L["Grow"] = "Направление роста"
	L["Hawk"] = "Ястреб"
	L["Height"] = "Высота"
	L["Help"] = "Справка"
	L["Hide"] = "Скрыть"
	L["Hide Cooldown Text"] = "Скрыть отсчет времени"
	--[[Translation missing --]]
	L["Hide Glows applied by this aura"] = "Hide Glows applied by this aura"
	L["Hide on"] = "Скрыть на"
	L["Hide this group's children"] = "Скрыть индикации этой группы"
	L["Hide When Not In Group"] = "Скрыть когда не в группе"
	L["Horizontal Align"] = "Выравнивание по горизонтали"
	L["Horizontal Bar"] = "Горизонтальная полоса"
	L["Hostility"] = "Враждебность"
	L["Huge Icon"] = "Огромная иконка"
	L["Hybrid Position"] = "Гибридная позиция"
	L["Hybrid Sort Mode"] = "Режим гибридной сортировки"
	L["Icon"] = "Иконка"
	L["Icon Info"] = "Информация об иконке"
	L["Icon Inset"] = "Вставка иконки"
	L["Icon Position"] = "Расположение иконки"
	L["Icon Settings"] = "Настройки иконки"
	L["If"] = "Если"
	L["If checked, then the user will see a multi line edit box. This is useful for inputting large amounts of text."] = "Если флажок установлен, то строка преобразуется в многострочное текстовое поле. Это удобная форма для ввода большого количества текста."
	L["If checked, then this option group can be temporarily collapsed by the user."] = "Если флажок установлен, то пользователь может свернуть и развернуть эту группу параметров."
	L["If checked, then this option group will start collapsed."] = "Если флажок установлен, то эта группа параметров отобразится в свёрнутом виде."
	L["If checked, then this separator will include text. Otherwise, it will be just a horizontal line."] = "Если флажок установлен, то разделитель будет содержать текст, расположенный по центру. В противном случае, он представляет собой просто горизонтальную линию."
	--[[Translation missing --]]
	L["If checked, then this separator will not merge with other separators when selecting multiple auras."] = "If checked, then this separator will not merge with other separators when selecting multiple auras."
	L["If checked, then this space will span across multiple lines."] = "Если флажок установлен, то данный элемент будет занимать несколько строк."
	L["If Trigger %s"] = "Если Триггер %s"
	L["If unchecked, then a default color will be used (usually yellow)"] = "Если флажок не установлен, то будет использоваться цвет по умолчанию (желтый)"
	L["If unchecked, then this space will fill the entire line it is on in User Mode."] = "Если флажок не установлен, то данный элемент будет занимать всю строку, в которой он находится."
	L["Ignore all Updates"] = "Игнорировать все обновления"
	L["Ignore Dead"] = "Не учитывать мёртвые цели"
	L["Ignore Disconnected"] = "Не учитывать игроков не в сети"
	--[[Translation missing --]]
	L["Ignore Lua Errors on OPTIONS event"] = "Ignore Lua Errors on OPTIONS event"
	--[[Translation missing --]]
	L["Ignore out of checking range"] = "Ignore out of checking range"
	L["Ignore Self"] = "Не учитывать себя"
	L["Ignore self"] = "Не учитывать себя"
	L["Ignored"] = "Игнорируется"
	--[[Translation missing --]]
	L["Ignored Aura Name"] = "Ignored Aura Name"
	--[[Translation missing --]]
	L["Ignored Exact Spell ID(s)"] = "Ignored Exact Spell ID(s)"
	--[[Translation missing --]]
	L["Ignored Name(s)"] = "Ignored Name(s)"
	--[[Translation missing --]]
	L["Ignored Spell ID"] = "Ignored Spell ID"
	L["Import"] = "Импорт"
	L["Import a display from an encoded string"] = "Импортировать индикацию из закодированной строки"
	--[[Translation missing --]]
	L["Information"] = "Information"
	L["Inner"] = "Внутри"
	L["Invalid Item Name/ID/Link"] = "Неверное название, ссылка или ID предмета"
	L["Invalid Spell ID"] = "Неверный ID заклинания"
	L["Invalid Spell Name/ID/Link"] = "Неверное название, ссылка или ID заклинания"
	L["Inverse"] = "Инверсия"
	L["Inverse Slant"] = "В обратную сторону"
	L["Is Stealable"] = "Может быть украден"
	L["Justify"] = "Выравнивание"
	L["Keep Aspect Ratio"] = "Сохранять пропорции"
	--[[Translation missing --]]
	L["Keep your Wago imports up to date with the Companion App."] = "Keep your Wago imports up to date with the Companion App."
	L["Large Input"] = "Многострочное поле ввода"
	L["Leaf"] = "Лист"
	L["Left"] = "Слева"
	L["Left 2 HUD position"] = "Позиция 2-го левого HUD"
	L["Left HUD position"] = "Позиция левого HUD"
	L["Length"] = "Длина"
	--[[Translation missing --]]
	L["Length of |cFFFF0000%s|r"] = "Length of |cFFFF0000%s|r"
	--[[Translation missing --]]
	L["Limit"] = "Limit"
	L["Lines & Particles"] = "Линии или частицы"
	L["Load"] = "Загрузка"
	L["Loaded"] = "Загружено"
	L["Loop"] = "Зациклить"
	L["Low Mana"] = "Мало маны"
	L["Magnetically Align"] = "Привязка к направляющим"
	L["Main"] = "Основная"
	L["Manage displays defined by Addons"] = "Управление индикациями, определенными аддонами"
	L["Match Count"] = "Количество совпадений"
	--[[Translation missing --]]
	L["Matches the height setting of a horizontal bar or width for a vertical bar."] = "Matches the height setting of a horizontal bar or width for a vertical bar."
	L["Max"] = "Макс. значение"
	L["Max Length"] = "Максимальная длина"
	L["Medium Icon"] = "Средняя иконка"
	L["Message"] = "Сообщение"
	L["Message Prefix"] = "Префикс сообщения"
	L["Message Suffix"] = "Суффикс сообщения"
	L["Message Type"] = "Тип сообщения"
	L["Min"] = "Мин. значение"
	L["Mirror"] = "Отразить"
	L["Model"] = "Модель"
	L["Model %s"] = "Модель %s"
	L["Model Settings"] = "Настройки модели"
	L["Move Above Group"] = "Переместить выше группы"
	L["Move Below Group"] = "Переместить ниже группы"
	L["Move Down"] = "Переместить вниз"
	L["Move Entry Down"] = "Переместить запись вниз"
	L["Move Entry Up"] = "Переместить запись вверх"
	L["Move Into Above Group"] = "Переместить в группу выше"
	L["Move Into Below Group"] = "Переместить в группу ниже"
	L["Move this display down in its group's order"] = "Переместить индикацию вниз в порядке элементов группы"
	L["Move this display up in its group's order"] = "Переместить индикацию вверх в порядке элементов группы"
	L["Move Up"] = "Переместить вверх"
	L["Multiple Displays"] = "Несколько индикаций"
	L["Multiselect ignored tooltip"] = [=[
|cFFFF0000Ничего|r - |cFF777777Одно|r - |cFF777777Несколько|r
Этот параметр не определяет, когда индикация должна быть загружена]=]
	L["Multiselect multiple tooltip"] = [=[
|cFF777777Ничего|r - |cFF777777Одно|r - |cFF00FF00Несколько|r
Можно выбрать любое количество соответствующих значений. Выполнение любого условия приведет к загрузке]=]
	L["Multiselect single tooltip"] = [=[
|cFF777777Ничего|r - |cFF00FF00Одно|r - |cFF777777Несколько|r
Можно выбрать только одно соответствующее значение]=]
	L["Name Info"] = "Информация о названии"
	L["Name Pattern Match"] = "Совпадение названия с образцом"
	L["Name(s)"] = "Название"
	--[[Translation missing --]]
	L["Name:"] = "Name:"
	--[[Translation missing --]]
	L["Nameplate"] = "Nameplate"
	L["Nameplates"] = "Индикаторы здоровья"
	L["Negator"] = "Не"
	L["New Aura"] = "Новая индикация"
	L["New Value"] = "Новое значение"
	L["No Children"] = "Нет индикаций"
	L["None"] = "Нет"
	L["Not all children have the same value for this option"] = "Не все индикации имеют одинаковое значение для этого параметра"
	L["Not Loaded"] = "Не загружено"
	L["Note: Automated Messages to SAY and YELL are blocked outside of Instances."] = "|cFFFFCC00Примечание.|r Вне подземелий (instances) автоматическая отправка сообщений в чат заблокирована для Сказать и Крик."
	--[[Translation missing --]]
	L["Note: The legacy buff trigger is now permanently disabled. It will be removed in the near future."] = "Note: The legacy buff trigger is now permanently disabled. It will be removed in the near future."
	L["Number of Entries"] = "Число записей"
	L["Offer a guided way to create auras for your character"] = "Предлагаем пошаговый способ создания индикаций для вашего персонажа"
	--[[Translation missing --]]
	L["Offset by |cFFFF0000%s|r/|cFFFF0000%s|r"] = "Offset by |cFFFF0000%s|r/|cFFFF0000%s|r"
	L["Okay"] = "Ок"
	L["On Hide"] = "При скрытии"
	L["On Init"] = "При инициализации"
	L["On Show"] = "При появлении"
	L["Only match auras cast by people other than the player"] = "Эффекты, применённые другими людьми, но не игроком"
	L["Only match auras cast by people other than the player or his pet"] = "Эффекты, применённые другими людьми, но не игроком или его питомцем"
	L["Only match auras cast by the player"] = "Эффекты, применённые только игроком"
	L["Only match auras cast by the player or his pet"] = "Эффекты, применённые только игроком или его питомцем"
	L["Operator"] = "Оператор"
	L["Option %i"] = "Параметр %i"
	L["Option key"] = "Ключ параметра"
	L["Option Type"] = "Тип параметра"
	L["Options will open after combat ends."] = "Параметры откроются после окончания боя."
	L["or"] = "или"
	L["or Trigger %s"] = "Триггер %s"
	L["Orange Rune"] = "Оранжевая руна"
	L["Orientation"] = "Ориентация"
	L["Outer"] = "Снаружи"
	L["Outline"] = "Контур"
	L["Overflow"] = "Переполнение"
	L["Overlay %s Info"] = "Информация о наложении %s"
	L["Overlays"] = "Настройка цвета наложений"
	L["Own Only"] = "Свои эффекты"
	L["Paste Action Settings"] = "Вставить настройки действий"
	L["Paste Animations Settings"] = "Вставить настройки анимации"
	--[[Translation missing --]]
	L["Paste Author Options Settings"] = "Paste Author Options Settings"
	L["Paste Condition Settings"] = "Вставить настройки условий"
	--[[Translation missing --]]
	L["Paste Custom Configuration"] = "Paste Custom Configuration"
	L["Paste Display Settings"] = "Вставить настройки отображения"
	L["Paste Group Settings"] = "Вставить настройки группы"
	L["Paste Load Settings"] = "Вставить настройки загрузки"
	L["Paste Settings"] = "Вставить настройки"
	L["Paste text below"] = "Вставьте текст ниже"
	L["Paste Trigger Settings"] = "Вставить настройки триггера"
	--[[Translation missing --]]
	L["Places a tick on the bar"] = "Places a tick on the bar"
	L["Play Sound"] = "Воспроизвести звук"
	L["Portrait Zoom"] = "Увеличить портрет"
	L["Position Settings"] = "Настройки размера и расположения"
	L["Preferred Match"] = "Предпочтительный результат"
	L["Premade Snippets"] = "Готовые фрагменты кода"
	L["Preset"] = "Предустановка"
	L["Press Ctrl+C to copy"] = "Нажмите Ctrl+C, чтобы скопировать"
	--[[Translation missing --]]
	L["Prevent Merging"] = "Prevent Merging"
	L["Processed %i chars"] = "Обработано %i |4символ:символа:символов;"
	L["Progress Bar"] = "Полоса прогресса"
	L["Progress Bar Settings"] = "Настройки полосы прогресса"
	L["Progress Texture"] = "Текстура прогресса"
	L["Progress Texture Settings"] = "Настройки текстуры прогресса"
	L["Purple Rune"] = "Фиолетовая руна"
	L["Put this display in a group"] = "Переместить эту индикацию в группу"
	L["Radius"] = "Радиус"
	L["Re-center X"] = "Рецентрировать по X"
	L["Re-center Y"] = "Рецентрировать по Y"
	L["Regions of type \"%s\" are not supported."] = "Регионы типа \"%s\" не поддерживаются."
	L["Remaining Time"] = "Оставшееся время"
	L["Remove"] = "Удалить"
	L["Remove this display from its group"] = "Убрать индикацию из этой группы"
	L["Remove this property"] = "Удалить это свойство"
	L["Rename"] = "Переименовать"
	L["Repeat After"] = "Повторять после"
	L["Repeat every"] = "Повторять каждые"
	--[[Translation missing --]]
	L["Report bugs our our issue tracker."] = "Report bugs our our issue tracker."
	--[[Translation missing --]]
	L["Require unit from trigger"] = "Require unit from trigger"
	L["Required for Activation"] = "Необходимо для активации"
	L["Reset all options to their default values."] = "Возвращает всем параметрам значения по умолчанию, заданные автором."
	L["Reset Entry"] = "Сбросить запись"
	L["Reset to Defaults"] = "Сбросить настройки"
	L["Right"] = "Справа"
	L["Right 2 HUD position"] = "Позиция 2-го правого HUD"
	L["Right HUD position"] = "Позиция правого HUD"
	L["Right-click for more options"] = "Правый клик для дополнительных опций"
	L["Rotate"] = "Поворот"
	L["Rotate In"] = [=[Поворот в
(исходное положение)]=]
	L["Rotate Out"] = [=[Поворот из
(исходного положения)]=]
	L["Rotate Text"] = "Повернуть текст"
	L["Rotation"] = "Поворот"
	L["Rotation Mode"] = "Режим вращения"
	L["Row Space"] = "Отступ между строками"
	L["Row Width"] = "Ширина строки"
	--[[Translation missing --]]
	L["Rows"] = "Rows"
	L["Same"] = "Похожие"
	L["Scale"] = "Масштаб"
	L["Search"] = "Поиск"
	L["Select the auras you always want to be listed first"] = "Выберите индикации для гибридной позиции"
	L["Send To"] = "Отправить"
	L["Separator Text"] = "Текст разделителя"
	L["Separator text"] = "Текст разделителя"
	L["Set Parent to Anchor"] = "Назначить родителем"
	--[[Translation missing --]]
	L["Set Thumbnail Icon"] = "Set Thumbnail Icon"
	--[[Translation missing --]]
	L["Sets the anchored frame as the aura's parent, causing the aura to inherit attributes such as visibility and scale."] = "Sets the anchored frame as the aura's parent, causing the aura to inherit attributes such as visibility and scale."
	L["Settings"] = "Параметры"
	L["Shadow Color"] = "Цвет тени"
	L["Shadow X Offset"] = "Смещение тени по X"
	L["Shadow Y Offset"] = "Смещение тени по Y"
	L["Shift-click to create chat link"] = "Shift-клик для создания ссылки чата"
	L["Show all matches (Auto-clone)"] = "Показать все совпадения (Автоклонирование)"
	L["Show Border"] = "Показать границу"
	L["Show Cooldown"] = "Показать восстановление"
	L["Show Glow"] = "Показать свечение"
	L["Show Icon"] = "Показать иконку"
	L["Show If Unit Does Not Exist"] = "Показать при отсутствии единицы"
	L["Show If Unit Is Invalid"] = "Показать при отсутствии единицы"
	L["Show Matches for"] = "Показать совпадения для единиц"
	L["Show Matches for Units"] = "Показать совпадения для единиц"
	L["Show Model"] = "Показать модель"
	L["Show model of unit "] = "Показать модель единицы"
	L["Show On"] = "Показать"
	L["Show Spark"] = "Показать вспышку"
	L["Show Text"] = "Показать текст"
	L["Show this group's children"] = "Показать индикации этой группы"
	--[[Translation missing --]]
	L["Show Tick"] = "Show Tick"
	L["Shows a 3D model from the game files"] = "Показывает 3D модель из файлов игры"
	--[[Translation missing --]]
	L["Shows a border"] = "Shows a border"
	L["Shows a custom texture"] = "Показывает свою текстуру"
	--[[Translation missing --]]
	L["Shows a glow"] = "Shows a glow"
	--[[Translation missing --]]
	L["Shows a model"] = "Shows a model"
	L["Shows a progress bar with name, timer, and icon"] = "Показывает полосу прогресса с названием, таймером и иконкой"
	L["Shows a spell icon with an optional cooldown overlay"] = "Показывает иконку заклинания с наложением анимации восстановления (перезарядки)"
	--[[Translation missing --]]
	L["Shows a stop motion textures"] = "Shows a stop motion textures"
	L["Shows a texture that changes based on duration"] = "Показывает текстуру, меняющуюся в зависимости от длительности"
	L["Shows one or more lines of text, which can include dynamic information such as progress or stacks"] = "Показывает одну или несколько строк текста, которые могут включать в себя динамическую информацию такую как длительность или стаки"
	L["Simple"] = "Простой способ"
	L["Size"] = "Размер"
	L["Skip this Version"] = "Пропустить эту версию"
	L["Slant Amount"] = "Уровень наклона"
	L["Slant Mode"] = "Режим наклона"
	L["Slanted"] = "Наклонная текстура"
	L["Slide"] = "Перемещение"
	L["Slide In"] = "Приближение"
	L["Slide Out"] = "Отдаление"
	L["Slider Step Size"] = "Размер шага ползунка"
	L["Small Icon"] = "Маленькая иконка"
	L["Smooth Progress"] = "Плавный прогресс"
	L["Snippets"] = "Фрагменты кода"
	L["Soft Max"] = "Макс. значение ползунка"
	L["Soft Min"] = "Мин. значение ползунка"
	L["Sort"] = "Сортировка"
	L["Sound"] = "Звук"
	L["Sound Channel"] = "Звуковой канал"
	L["Sound File Path"] = "Путь к звуковому файлу"
	L["Sound Kit ID"] = "ID звукового набора (см. ru.wowhead.com/sounds)"
	L["Space"] = "Отступ"
	L["Space Horizontally"] = "Отступ по горизонтали"
	L["Space Vertically"] = "Отступ по вертикали"
	L["Spark"] = "Вспышка"
	L["Spark Settings"] = "Настройки вспышки"
	L["Spark Texture"] = "Текстура вспышки"
	L["Specific Unit"] = "Конкретная единица"
	L["Spell ID"] = "ID заклинания"
	L["Stack Count"] = "Количество стаков"
	L["Stack Info"] = "Информация о стаках"
	L["Stagger"] = "Выступ (смещение уровня)"
	L["Star"] = "Звезда"
	L["Start"] = "Начальная"
	L["Start Angle"] = "Начальный угол"
	L["Start Collapsed"] = "Свернуть"
	L["Start of %s"] = "Начало группы \"%s\""
	L["Status"] = "Статус"
	L["Stealable"] = "Может быть украден"
	L["Step Size"] = "Размер шага"
	L["Stop ignoring Updates"] = "Перестать игнорировать обновления"
	--[[Translation missing --]]
	L["Stop Motion"] = "Stop Motion"
	--[[Translation missing --]]
	L["Stop Motion Settings"] = "Stop Motion Settings"
	L["Stop Sound"] = "Остановить звук"
	L["Sub Elements"] = "Внутренние элементы"
	L["Sub Option %i"] = "Внутренний параметр %i"
	L["Temporary Group"] = "Временная группа"
	L["Text"] = "Текст"
	L["Text %s"] = "Текст %s"
	L["Text Color"] = "Цвет текста"
	L["Text Settings"] = "Настройки текста"
	L["Texture"] = "Текстура"
	L["Texture Info"] = "Информация о текстуре"
	L["Texture Settings"] = "Настройки текстуры"
	L["Texture Wrap"] = "Режим обертки текстурой"
	L["The duration of the animation in seconds."] = "Длительность анимации в секундах."
	L["The duration of the animation in seconds. The finish animation does not start playing until after the display would normally be hidden."] = [=[Длительность анимации в секундах.
Конечная анимация не начнет отображаться, пока индикация не будет нормально скрыта  (должен сработать детриггер).]=]
	L["The type of trigger"] = "Тип триггера"
	L["Then "] = "Тогда "
	L["Thickness"] = "Толщина"
	L["This adds %tooltip, %tooltip1, %tooltip2, %tooltip3 as text replacements."] = "Добавляет строки %tooltip, %tooltip1, %tooltip2 и %tooltip3 к специальным кодам отображения динамической информации в тексте."
	L["This display is currently loaded"] = "Эта индикация загружена"
	L["This display is not currently loaded"] = "Эта индикация не загружена"
	L["This region of type \"%s\" is not supported."] = "Регион типа \"%s\" не поддерживается."
	L["This setting controls what widget is generated in user mode."] = "Настройка определяет, какой примитив графического интерфейса (виджет) создается для этого параметра в режиме пользователя."
	--[[Translation missing --]]
	L["Tick %s"] = "Tick %s"
	--[[Translation missing --]]
	L["Tick Mode"] = "Tick Mode"
	--[[Translation missing --]]
	L["Tick Placement"] = "Tick Placement"
	L["Time in"] = "Время"
	L["Tiny Icon"] = "Крошечная иконка"
	L["To Frame's"] = "Относительно кадра"
	L["To Group's"] = "Относительно группы"
	L["To Personal Ressource Display's"] = "На индикаторе личного ресурса"
	L["To Screen's"] = "Относительно экрана"
	L["Toggle the visibility of all loaded displays"] = "Переключить видимость всех загруженных индикаций"
	L["Toggle the visibility of all non-loaded displays"] = "Переключить видимость всех не загруженных индикаций"
	L["Toggle the visibility of this display"] = "Переключить видимость этой индикации"
	L["Tooltip"] = "Подсказка"
	L["Tooltip Content"] = "Содержание подсказки"
	L["Tooltip on Mouseover"] = "Подсказка при наведении курсора"
	L["Tooltip Pattern Match"] = "Совпадение подсказки с образцом"
	L["Tooltip Text"] = "Текст подсказки"
	L["Tooltip Value"] = "Значение из текста подсказки"
	L["Tooltip Value #"] = "Номер значения"
	L["Top"] = "Сверху"
	L["Top HUD position"] = "Верхняя позиция HUD"
	L["Top Left"] = "Сверху слева"
	L["Top Right"] = "Сверху справа"
	--[[Translation missing --]]
	L["Total Angle"] = "Total Angle"
	L["Total Time"] = "Общее время"
	L["Trigger"] = "Триггер"
	L["Trigger %d"] = "Триггер %d"
	L["Trigger %s"] = "Триггер %s"
	--[[Translation missing --]]
	L["Trigger Combination"] = "Trigger Combination"
	L["True"] = "Истина"
	L["Type"] = "Тип"
	L["Ungroup"] = "Разгруппировать"
	L["Unit"] = "Единица"
	L["Unit %s is not a valid unit for RegisterUnitEvent"] = "%s не является допустимой единицей для метода RegisterUnitEvent"
	L["Unit Count"] = "Количество единиц"
	--[[Translation missing --]]
	L["Unit Frame"] = "Unit Frame"
	--[[Translation missing --]]
	L["Unit Frames"] = "Unit Frames"
	--[[Translation missing --]]
	L["Unit Name Filter"] = "Unit Name Filter"
	--[[Translation missing --]]
	L["UnitName Filter"] = "UnitName Filter"
	L["Unlike the start or finish animations, the main animation will loop over and over until the display is hidden."] = "В отличие от начальной или конечной анимации, основная зациклена и будет повторяться пока индикация не пропадет."
	L["Update %s by %s"] = "Обновить %s (автор %s)"
	--[[Translation missing --]]
	L["Update Auras"] = "Update Auras"
	L["Update Custom Text On..."] = "Обновление текста, заданного с помощью функции, происходит"
	L["Update in Group"] = "Доступно обновление"
	L["Update this Aura"] = "Применить к индикации"
	--[[Translation missing --]]
	L["URL"] = "URL"
	L["Use Custom Color"] = "Использовать свой цвет"
	L["Use Display Info Id"] = "Использовать ID отображения существа"
	L["Use Full Scan (High CPU)"] = "Использовать Полное сканирование (загрузка ЦП)"
	L["Use nth value from tooltip:"] = "Номер значения из текста подсказки"
	L["Use SetTransform"] = "Использовать ф. SetTransform()"
	--[[Translation missing --]]
	L["Use Texture"] = "Use Texture"
	L["Use tooltip \"size\" instead of stacks"] = "Использовать значение из текста подсказки вместо стаков"
	L["Use Tooltip Information"] = "Использовать информацию из подсказки"
	L["Used in Auras:"] = "Использовано в индикациях:"
	L["Used in auras:"] = "Использовано в индикациях:"
	--[[Translation missing --]]
	L["Uses UnitIsVisible() to check if in range. This is polled every second."] = "Uses UnitIsVisible() to check if in range. This is polled every second."
	L["Value %i"] = "Значение %i"
	L["Values are in normalized rgba format."] = "Значения представлены в нормализованном формате RGBA (от 0 до 1)."
	L["Values:"] = "Значения:"
	L["Version: "] = "Версия: "
	L["Vertical Align"] = "Выравнивание по вертикали"
	L["Vertical Bar"] = "Вертикальная полоса"
	L["View"] = "Вид"
	L["Wago Update"] = "Обновление"
	L["Whole Area"] = "Вся область"
	L["Width"] = "Ширина"
	L["wrapping"] = "Перенос слов при переполнении"
	L["X Offset"] = "Смещение по X"
	L["X Rotation"] = "Поворот по X"
	L["X Scale"] = "Масштаб по X"
	L["X-Offset"] = "Смещение по X"
	--[[Translation missing --]]
	L["x-Offset"] = "x-Offset"
	L["Y Offset"] = "Смещение по Y"
	L["Y Rotation"] = "Поворот по Y"
	L["Y Scale"] = "Масштаб по Y"
	L["Yellow Rune"] = "Жёлтая руна"
	L["Y-Offset"] = "Смещение по Y"
	--[[Translation missing --]]
	L["y-Offset"] = "y-Offset"
	L["You are about to delete %d aura(s). |cFFFF0000This cannot be undone!|r Would you like to continue?"] = [=[Вы собираетесь удалить %d |4индикацию:индикации:индикаций;.
|cFFFF0000Это действие необратимо!|r Продолжить?]=]
	--[[Translation missing --]]
	L["You are about to delete a trigger. |cFFFF0000This cannot be undone!|r Would you like to continue?"] = "You are about to delete a trigger. |cFFFF0000This cannot be undone!|r Would you like to continue?"
	L["Your Saved Snippets"] = "Ваши фрагменты кода"
	L["Z Offset"] = "Смещение по Z"
	L["Z Rotation"] = "Поворот по Z"
	L["Zoom"] = "Масштаб"
	L["Zoom In"] = "Увеличение"
	L["Zoom Out"] = "Уменьшение"

