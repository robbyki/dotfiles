import dracula.draw

config.load_autoconfig()
dracula.draw.blood(c, {"spacing": {"vertical": 6, "horizontal": 8}})
c.aliases = {
    "adblock-toggle": "config-cycle -t content.blocking.enabled",
    "chromium": "spawn --detach chromium {url}",
    "firefox": "spawn --detach firefox {url}",
    "incognito": "open --private",
    "lastpass": "hint --first inputs ;; spawn --userscript qute-lastpass",
    "mpv": "spawn --detach mpv {url}",
    "o": "open",
    "q": "quit",
    "qrcode": 'spawn st -e watch --color -t -x qrcode-terminal "{url}"',
}
c.auto_save.session = True
c.backend = "webengine"
c.colors.completion.category.fg = "#ff79c6"
c.colors.completion.scrollbar.fg = "#6272a4"
c.colors.hints.bg = "yellow"
c.colors.hints.fg = "black"
c.colors.hints.match.fg = "#bd93f9"
c.colors.keyhint.fg = "#FFFFFF"
c.colors.keyhint.suffix.fg = "#f1fa8c"
c.colors.statusbar.command.fg = "#f1fa8c"
c.colors.statusbar.insert.bg = "#ff79c6"
c.colors.statusbar.private.bg = "#ff5555"
c.colors.statusbar.progress.bg = "#6272a4"
c.colors.statusbar.url.fg = "white"
c.colors.statusbar.url.success.http.fg = "white"
c.colors.statusbar.url.success.https.fg = "white"
c.content.cookies.accept = "all"
c.content.dns_prefetch = True
c.content.headers.do_not_track = True
c.content.blocking.enabled = True
c.content.blocking.whitelist = ["www.googleadservices.com"]
c.content.javascript.can_access_clipboard = True
if type(c.content.notifications) == str:
    c.content.notifications = False
else:
    c.content.notifications.enabled = False
c.downloads.position = "bottom"
c.editor.command = ["st", "-e", "vim", "{file}"]


c.fonts.default_family = [
    "Iosevka Nerd Font",
    "Courier",
    "Liberation Mono",
    "monospace",
    "Fixed",
    "Consolas",
    "Terminal",
]

c.fonts.default_size = "14pt"


c.hints.auto_follow = "always"


c.input.insert_mode.auto_load = True

c.input.insert_mode.leave_on_load = True


c.scrolling.bar = "when-searching"


c.statusbar.widgets = ["url"]

c.tabs.background = True

c.tabs.close_mouse_button = "none"


c.tabs.show = "multiple"


c.tabs.title.format = "{audio} {current_title}"


c.url.default_page = "https://archlinux.org"


c.url.open_base_url = True

c.url.searchengines = {
    "DEFAULT": "https://google.com/search?hl=en&q={}",
    "!a": "https://www.amazon.com/s?k={}",
    "!d": "https://duckduckgo.com/?ia=web&q={}",
    "!dd": "https://thefreedictionary.com/{}",
    "!e": "https://www.ebay.com/sch/i.html?_nkw={}",
    "!fb": "https://www.facebook.com/s.php?q={}",
    "!gh": "https://github.com/search?o=desc&q={}&s=stars",
    "!gist": "https://gist.github.com/search?q={}",
    "!gi": "https://www.google.com/search?tbm=isch&q={}&tbs=imgo:1",
    "!gn": "https://news.google.com/search?q={}",
    "!ig": "https://www.instagram.com/explore/tags/{}",
    "!m": "https://www.google.com/maps/search/{}",
    "!p": "https://pry.sh/{}",
    "!r": "https://www.reddit.com/search?q={}",
    "!sd": "https://slickdeals.net/newsearch.php?q={}&searcharea=deals&searchin=first",
    "!t": "https://www.thesaurus.com/browse/{}",
    "!tw": "https://twitter.com/search?q={}",
    "!w": "https://en.wikipedia.org/wiki/{}",
    "!yelp": "https://www.yelp.com/search?find_desc={}",
    "!yt": "https://www.youtube.com/results?search_query={}",
}

c.url.start_pages = ["https://archlinux.org/"]


c.zoom.default = "140%"

c.zoom.levels = [
    "100%",
    "110%",
    "125%",
    "150%",
    "175%",
    "200%",
    "250%",
    "300%",
    "400%",
    "500%",
]


c.bindings.commands = {
    "normal": {
        "+": "zoom-in",
        ",<Space>": "search",
        ",C": "tab-only",
        ",M": "hint links spawn --detach mpv {hint-url}",
        ",b": "set-cmd-text -s :buffer",
        ",c": "tab-close",
        ",e": "set-cmd-text -s :open",
        ",h": "history",
        ",m": "spawn --detach mpv {url}",
        ",q": "tab-prev",
        ",w": "tab-next",
        "-": "zoom-out",
        "<Alt-D>": "edit-url",
        "<Ctrl-+>": "zoom-in",
        "<Ctrl-->": "zoom-out",
        "<Ctrl-0>": "zoom",
        "<Ctrl-Shift-Tab>": "tab-prev",
        "<Ctrl-Tab>": "tab-next",
        "<Ctrl-f>": "set-cmd-text /",
        "<Ctrl-i>": "forward",
        "<Ctrl-o>": "back",
        "<Ctrl-p>": "lastpass",
        "<Ctrl-a>": "mode-enter passthrough",
        "=": "zoom",
        "?": "set-cmd-text :open -t ?",
        "F": "hint links tab-bg",
        "gi": "hint inputs",
    },
    "insert": {
        "<Ctrl-+>": "zoom-in",
        "<Ctrl-->": "zoom-out",
        "<Ctrl-0>": "zoom",
        "<Ctrl-e>": "edit-text",
        "<Ctrl-i>": "edit-text",
        "<Ctrl-p>": "hint --first inputs ;; spawn --userscript qute-lastpass",
        "<Ctrl-Shift-p>": "spawn --userscript qute-lastpass --password-only",
        "<Ctrl-u>": "spawn --userscript qute-lastpass --username-only",
        "<Ctrl-s>": 'jseval document.querySelectorAll("input[type=password]").forEach(i => { i.type = "text" })',
        "<Escape>": "mode-leave ;; jseval -q document.activeElement.blur()",
    },
}
