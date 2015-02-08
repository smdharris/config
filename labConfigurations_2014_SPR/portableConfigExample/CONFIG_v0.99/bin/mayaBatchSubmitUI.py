#!/usr/bin/python

__author__ = '120988'

from Tkinter import *
import ttk
import tkMessageBox
import datetime
import tkFileDialog, Tkconstants
import dabtractor.api.author as author
import sys
import os


class Window(object):
    def __init__(self, master):
        """Construct the main window interface
        """
        self.master = master

        self.dirtext = 'Select your project folder'
        self.filetext = 'Select your maya scene file'
        self.workspacetext = 'Select the workspace.mel file in your project'
        self.workspaceerrortext = 'Warning - no workspace.mel found!'

        # Options for buttons
        self.button_opt = {'fill': Tkconstants.BOTH, 'padx': 5, 'pady': 5}

        Label(master, text="Project Dir").grid(row=1, column=0)
        self.dirbut = Button(self.master, text=self.dirtext, fg='black', command=self.opendirectory)
        self.dirbut.pack(**self.button_opt)  ## must pack separately to get the value to dirbut
        self.dirbut.grid(row=1, column=1, sticky=W + E)

        Label(master, text="Workspace.mel").grid(row=2, column=0)
        self.workspacebut = Button(self.master, text=self.workspacetext, fg='black', command=self.openworkspace)
        self.workspacebut.pack(**self.button_opt)  ## must pack separately to get the value to dirbut
        self.workspacebut.grid(row=2, column=1, sticky=W + E)

        Label(master, text="Scene File").grid(row=3, column=0)
        self.filebut = Button(self.master, text=self.filetext, fg='black',
                              command=self.openfile)
        self.filebut.pack(**self.button_opt)
        self.filebut.grid(row=3, column=1, sticky=W + E)

        Label(master, text="Frame Start").grid(row=6, column=0)
        self.sf = StringVar()
        self.sf.set("1")
        self.bar3 = Entry(self.master, textvariable=self.sf, width=8).grid(row=6, column=1, sticky=W)

        Label(master, text="Frame End").grid(row=7, column=0)
        self.ef = StringVar()
        self.ef.set("100")
        self.bar4 = Entry(self.master, textvariable=self.ef, width=8).grid(row=7, column=1, sticky=W)

        Label(master, text="By").grid(row=6, column=0)
        self.bf = StringVar()
        self.bf.set("1")
        self.bar5 = Entry(self.master, textvariable=self.bf, width=8).grid(row=8, column=1, sticky=W)

        Label(master, text="Frame Chunks").grid(row=7, column=0)
        self.fch = StringVar()
        self.fch.set("5")
        self.bar6 = Entry(self.master, textvariable=self.fch, width=8).grid(row=9, column=1, sticky=W)

        Label(self.master, text="Maya Version").grid(row=10, column=0)
        self.mversion = StringVar()
        self.mversion.set("2015")
        combobox = ttk.Combobox(master, textvariable=self.mversion)
        combobox.config(values=("2014", "2015"))
        combobox.grid(row=10, column=1, sticky=W)

        # Buttons
        self.cbutton = Button(self.master, text='SUBMIT', command=lambda: self.submit())
        self.cbutton.grid(row=12, column=3, sticky=W + E)

        self.vbutton = Button(self.master, text='VALIDATE', command=lambda: self.validate())
        self.vbutton.grid(row=12, column=1, sticky=W + E)

        self.vbutton = Button(self.master, text='CANCEL', command=lambda: self.cancel())
        self.vbutton.grid(row=12, column=0, sticky=W + E)

    def openfile(self):
        self.filename = tkFileDialog.askopenfilename(parent=self.master, initialdir=self.dirname,
                                                     title=self.filetext,
                                                     filetypes=[('maya ascii', '.ma'),
                                                                ('maya binary', '.mb')])  ## filename not filehandle
        self.filebut["text"] = str(self.filename) if self.filename else self.filetext

    def opendirectory(self):
        self.dirname = tkFileDialog.askdirectory(parent=self.master, initialdir='/home/', title=self.dirtext)
        self.dirbut["text"] = str(self.dirname) if self.dirname else self.dirtext
        _possible = "%s/workspace.mel" % (self.dirname)
        if os.path.exists(_possible):
            self.workspace = _possible
            self.workspacebut["text"] = str(self.workspace) if self.workspace else self.workspacetext
        else:
            self.workspacebut["text"] = self.workspaceerrortext


    def openworkspace(self):
        self.workspace = tkFileDialog.askopenfilename(parent=self.master, initialdir='/home/',
                                                      title=self.workspacetext,
                                                      filetypes=[
                                                          ('maya workspace', '.mel')])  ## filename not filehandle
        self.dirname = os.path.dirname(self.workspace)
        self.workspacebut["text"] = str(self.workspace) if self.workspace else self.workspacetext
        self.dirbut["text"] = str(self.dirname) if self.dirname else self.dirtext

    def validate(self):
        print "validate"

    def submit(self):
        try:
            print "submit"
            print "Project: %s" % self.dirname

            print "SceneFile: %s" % self.filename
            print "Start: %s" % self.sf.get()
            print "End: %s" % self.ef.get()
            print "By: %s" % self.bf.get()
            print "Chunk: %s" % self.fch.get()
            print "Maya: %s" % self.mversion.get()

            self.master.destroy()
        except:
            pass

    def cancel(self):
        self.master.destroy()

    def selectRenderHome(self):
        print "select render home"


class MayaBatchJob(object):
    '''
    This is a maya batch job
    '''

    def __init__(self):

        self.mayaversion = 2014
        self.mayaprojectpath = '/Volumes/Renderfarm/Render4/mattg/maya'
        self.mayascene = 'scene.0001.ma'
        self.startframe = 100
        self.endframe = 200
        self.byframe = 1
        self.framechunks = 10
        self.renderer = "mr"
        self.renderdirectory = "renderOutput"
        self.imagetemplate = "<Scene>/<Scene>-<Camera>_<Layer>"
        self.options = ""

    def getValues(entries):
        for entry in entries:
            field = entry[0]
            text = entry[1].get()
            print('%s: "%s"' % ( field, text))

    def build(self):
        self.__mayascenefullpath = "%s/%s" % (self.mayaprojectpath, self.mayascene)
        self.__mayascenebase = os.path.splitext(self.mayascene)[0]

        job = author.Job(title="MayaBatch Render Job",
                         priority=100,
                         envkey=["maya%s" % self.mayaversion],
                         service="PixarRender")

        task = author.Task(title="Copy Project Locally", service="PixarRender")
        copyin = author.Command(argv=["scp", "remote:%s" % self.mayaprojectpath, "/Volume/localrender/"])
        task.addCommand(copyin)
        job.addChild(task)

        task = author.Task(title="Make output directory", service="PixarRender")
        makediectory = author.Command(
            argv=["mkdir", "%s/%s/%s" % (self.mayaprojectpath, "images", self.__mayascenebase)])
        task.addCommand(makediectory)
        job.addChild(task)

        task = author.Task(title="Rendering", service="PixarRender")

        if ((self.endframe - self.startframe) < self.framechunks):
            self.framechunks = 1
            chunkend = self.endframe
        else:
            chunkend = self.startframe + self.framechunks


        chunkstart = self.startframe

        while (self.endframe >= chunkstart):

            if chunkend >= self.endframe:
                chunkend = self.endframe

            render = author.Command(argv=["mayabatch", self.options,
                                          "-proj", self.mayaprojectpath,
                                          "-start", "%s" % (chunkstart),
                                          "-end", "%s" % (chunkend),
                                          "-by", self.byframe,
                                          "-rd", self.renderdirectory,
                                          "-im", self.imagetemplate,
                                          "-r", self.renderer,
                                          self.options,
                                          self.__mayascenefullpath])

            task.addCommand(render)
            chunkstart = chunkend + 1
            chunkend = chunkend + self.framechunks

        job.addChild(task)

        task = author.Task(title="Copy Project Back", service="PixarRender")
        copyout = author.Command(argv=["scp", "/local/file.tif", "remote:/path/file.tif"])
        task.addCommand(copyout)
        job.addChild(task)

        print "\n{}".format(job.asTcl())

    def spool(self):
        print "spool"


if __name__ == '__main__':
    root = Tk()
    root.title("Maya Batch Submit")
    window = Window(root)
    root.mainloop()

    j = MayaBatchJob()

    try:
        j.mayascene = window.filename
        j.mayaprojectpath = window.dirname
        j.framechunks = int(window.fch.get())
        j.startframe = int(window.sf.get())
        j.endframe = int(window.ef.get())
        j.byframe = int(window.bf.get())
        j.renderer = "mr"
        j.renderdirectory = "renders"
        j.imagetemplate = "<Scene/<Scene>_<Layer>_<Camera>"
        j.options = ""

        j.build()
    except:
        print "something wrong"
    try:
        root.destroy()
    except:
        pass


