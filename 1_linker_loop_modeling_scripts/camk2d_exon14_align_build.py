import os
from modeller import *
from modeller.automodel import *

env = environ()
env.io.atom_files_directory = './:../atom_files'
a = automodel(env, alnfile='exon14_fill.ali',
              knowns='control', sequence='exon14',  # knowns is the CODE in the ali file for the unfixedPDB sequence; "sequence" is CODE of fixed sequence
              assess_methods=(assess.DOPE,
                              assess.GA341))

a.starting_model = 1                # index of the first model
a.ending_model  = 1                # index of the last model
                                  # (determines how many models to calculate)

a.make()                           # do homology modeling

