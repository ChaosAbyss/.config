from __future__ import (absolute_import, division, print_function)

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import (
        black, blue, cyan, green, magenta, red, white, yellow, default,
        normal, bold, reverse,
        default_colors)

light_red = 160         #d70000
light_orange = 208      #ff8700
light_yellow = 214      #fabd2f
light_green = 142       #afaf00
light_cyan = 108        #87af87
light_blue = 109        #87afaf
light_magenta = 175     #d787af
light_gray = 248        #a8a8a8
light_fg = 230          #ffffd7
light_bg = 236          #303030

dark_red = 124          #af0000
dark_orange = 130       #af5f00
dark_yellow = 136       #af8700
dark_green = 106        #878700
dark_cyan = 66          #5f8787
dark_blue = 24          #005f5f
dark_magenta = 96       #875f87
dark_gray = 245         #8a8a8a
dark_fg = 187           #d7d7af
dark_bg = 235           #262626


class Default(ColorScheme):
    progress_bar_color = blue

    def use(self, context):  # pylint: disable=too-many-branches,too-many-statements
        fg, bg, attr = default_colors

        # Startup
        if context.reset:
            return default_colors

        # Selection area settings
        elif context.in_browser:
            # Current section
            if context.selected:
                attr = reverse
            else:
                attr = normal

            # "Empty" and "Not accessible" signs
            if context.empty or context.error:
                bg = dark_magenta

            # Border color
            if context.border:
                fg = dark_gray

            # Media files
            if context.media:
                if context.image:
                    fg = light_yellow
                else:
                    fg = light_magenta

            # Container
            if context.container:
                fg = light_red

            # Directories
            if context.directory:
                attr |= bold
                fg = light_blue
            # Files in root directory
            elif context.executable and not \
                    any((context.media, context.container,
                         context.fifo, context.socket)):
                attr |= bold
                fg = light_green

            # Sockets
            if context.socket:
                fg = light_magenta
                attr |= bold

            # Security and devices
            if context.fifo or context.device:
                fg = light_yellow
                if context.device:
                    attr |= bold

            # Links
            if context.link:
                fg = light_cyan if context.good else light_magenta

            # Tagged directories and files
            if context.tag_marker and not context.selected:
                attr |= bold
                if fg in (red, magenta):
                    fg = light_fg
                else:
                    fg = light_red

            if not context.selected and (context.cut or context.copied):
                fg = black
                attr |= bold

            if context.main_column:
                if context.selected:
                    attr |= bold
                if context.marked:
                    attr |= bold
                    fg = light_yellow

            if context.badinfo:
                if attr & reverse:
                    bg = light_magenta
                else:
                    fg = light_magenta

            if context.inactive_pane:
                fg = light_cyan

        # Titlebar settings
        elif context.in_titlebar:
            attr |= bold
            if context.hostname:
                fg = light_red if context.bad else light_blue
            elif context.directory:
                fg = light_blue
            elif context.tab:
                if context.good:
                    bg = light_green
            elif context.link:
                fg = light_magenta

        # Statusbar settings
        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = light_blue
                elif context.bad:
                    fg = light_magenta
            if context.marked:
                attr |= bold | reverse
                fg = light_yellow
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = light_red
            if context.loaded:
                bg = self.progress_bar_color
            if context.vcsinfo:
                fg = light_blue
                attr &= ~bold
            if context.vcscommit:
                fg = light_yellow
                attr &= ~bold
            if context.vcsdate:
                fg = light_cyan
                attr &= ~bold

        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = light_blue

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color

        if context.vcsfile and not context.selected:
            attr &= ~bold
            if context.vcsconflict:
                fg = light_magenta
            elif context.vcschanged:
                fg = light_red
            elif context.vcsunknown:
                fg = light_red
            elif context.vcsstaged:
                fg = light_green
            elif context.vcssync:
                fg = light_green
            elif context.vcsignored:
                fg = default

        elif context.vcsremote and not context.selected:
            attr &= ~bold
            if context.vcssync or context.vcsnone:
                fg = light_green
            elif context.vcsbehind:
                fg = light_red
            elif context.vcsahead:
                fg = light_blue
            elif context.vcsdiverged:
                fg = light_magenta
            elif context.vcsunknown:
                fg = light_red

        return fg, bg, attr
