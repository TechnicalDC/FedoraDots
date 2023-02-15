import subprocess
import os
from ranger.api.commands import Command
from ranger.core.loader import CommandLoader


class kdeconnect(Command):
    def execute(self):
        """ Sending marked files """
        cwd = self.fm.thisdir
        marked_files = cwd.get_selection()
        self.fm.notify(marked_files)

        if not marked_files:
            return

        # Making description line
        files_num = len(marked_files)
        if files_num > 1:
            files_num_str = str(files_num) + ' files'
        else:
            files_num_str = '1 file'
        descr = "Sending " + files_num_str + " --> "

        self.fm.execute_command(["kdeconnect-cli", "--refresh"])

        cmd = ["kdeconnect-cli", "-n", "'Phone'", "--share"]
        for file in marked_files:
            cmd.append(file)
            descr = descr + str(file)
            self.fm.notify(file)
            self.fm.execute_command(cmd)
        # self.fm.notify("Uploaded!")
        print('done')
