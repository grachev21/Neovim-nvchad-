-- Определяем таблицу опций для настройки форматирования кода
local options = {
  -- Список форматтеров для различных типов файлов
  formatters_by_ft = {
    lua = { "stylua" }, -- Для Lua файлов используем форматтер stylua
    css = { "prettier" }, -- Для CSS файлов используем форматтер prettier
    html = { "prettier" }, -- Для HTML файлов используем форматтер prettier
    python = { "isort", "black" }, -- Для Python файлов используем форматтеры isort и black
  },

  -- Настройки для форматирования кода при сохранении файла
  format_on_save = {
    -- Эти опции будут переданы функции conform.format()
    timeout_ms = 500, -- Время ожидания в миллисекундах перед форматированием
    -- Если основной форматтер недоступен, используем LSP в качестве резервного варианта
    lsp_fallback = true,
  },
}

-- Возвращаем таблицу опций
return options

