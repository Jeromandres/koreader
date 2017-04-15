describe("FileConverter module", function()
    local FileConverter
    setup(function()
        require("commonrequire")
        FileConverter = require("apps/filemanager/filemanagerconverter")
    end)
    it("should show conversion support for Markdown", function()
        assert.is_true(FileConverter:isSupported("/markdown_file.md"))
    end)
    it("should not show conversion support for PDF", function()
        assert.is_false(FileConverter:isSupported("/pdf_file.pdf"))
    end)
    it("should convert Markdown to HTML", function()
        local markdown = [[
# KOReader Quickstart Guide

Welcome to KOreader. You can activate the menu by swiping down from the top of the screen. Clicking outside the menu or swiping up on the menu will discard it. Turning pages can be done either by swiping left and right or by single taps on the left or right side of the screen.

**Main menu**

![Menu](../resources/icons/menu-icon.png) You can always view this quickstart guide again through *Help* → *Quickstart guide* in the top right menu.

**Settings**

![Settings](../resources/icons/appbar.settings.png) You can change the language and other settings through the gear icon.

------------

Generated by KOReader v2015.11-982-g704d4238.
]]
        local title = "KOReader Quickstart Guide"
        local html_expected = [[<!DOCTYPE html>
<html>
<head>
<title>KOReader Quickstart Guide</title>
</head>
<body>
<h1>KOReader Quickstart Guide</h1>
<p>Welcome to KOreader. You can activate the menu by swiping down from the top of the screen. Clicking outside the menu or swiping up on the menu will discard it. Turning pages can be done either by swiping left and right or by single taps on the left or right side of the screen.</p>
<p><strong>Main menu</strong></p>
<p><img alt="Menu" src="../resources/icons/menu-icon.png"> You can always view this quickstart guide again through <em>Help</em> → <em>Quickstart guide</em> in the top right menu.</p>
<p><strong>Settings</strong></p>
<p><img alt="Settings" src="../resources/icons/appbar.settings.png"> You can change the language and other settings through the gear icon.</p>
<hr>
<p>Generated by KOReader v2015.11-982-g704d4238.</p>
</body>
</html>]]
        assert.are.same(html_expected, FileConverter:mdToHtml(markdown, title))
    end)
end)
