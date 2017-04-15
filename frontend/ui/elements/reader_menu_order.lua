local order = {
    ["KOMenu:menu_buttons"] = {
        "navi",
        "typeset",
        "setting",
        "tools",
        "search",
        "filemanager",
        "main",
    },
    navi = {
        "table_of_contents",
        "bookmarks",
        "----------------------------",
        "go_to",
        "skim_to",
        "----------------------------",
        "follow_links",
    },
    typeset = {
        "page_overlap",
        "switch_zoom_mode",
        "set_render_style",
        "----------------------------",
        "highlight_options",
        "----------------------------",
        "floating_punctuation",
        "change_font",
        "hyphenation",
        "----------------------------",
        "speed_reading_module_perception_expander",
    },
    setting = {
        "read_from_right_to_left",
        -- common settings
        -- those that don't exist will simply be skipped during menu gen
        "frontlight", -- if Device:hasFrontlight()
        "night_mode",
        "----------------------------",
        "network",
        "screen",
        "screensaver",
        "save_document",
        "----------------------------",
        "language",
        "----------------------------",
        "djvu_render_mode",
        "status_bar",
    },
    tools = {
        "read_timer",
        "calibre_wireless_connection",
        "evernote",
        "keep_alive",
        "frontlight_gesture_controller",
        "statistics",
        "battery_statistics",
        "storage_stat",
        "synchronize_time",
        "progress_sync",
        "zsync",
        "terminal",
    },
    search = {
        "dictionary_lookup",
        "wikipedia_lookup",
        "----------------------------",
        "goodreads",
        "----------------------------",
        "fulltext_search",
    },
    filemanager = {},
    main = {
        "history",
        "book_status",
        "----------------------------",
        "ota_update", -- if Device:isKindle() or Device:isKobo() or Device:isPocketBook() or Device:isAndroid()
        "version",
        "help",
        "system_statistics",
        "----------------------------",
        "exit",
    },
    help = {
        "quickstart_guide",
        "----------------------------",
        "report_bug",
        "----------------------------",
        "about",
    },
}

return order
