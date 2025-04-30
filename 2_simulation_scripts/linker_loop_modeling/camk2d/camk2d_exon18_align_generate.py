from modeller import *

# generate alin input file for a modeler
pdb_file = "control.pdb"  # for example, this pdb structure has some missing loops
pdb_code = pdb_file.split('.')[0]

# making inputs
e = Environ()
aln = Alignment(e)
m = Model(e, file=pdb_file)
# add pdb
aln.append_model(m, align_codes=pdb_code, atom_files=pdb_file)

# add the new sequence you want to build [need to write by your own based your own needs!]
# example: in this alin file, your can add those missing loops
aln.append(file="exon18.ali", align_codes="exon18")

aln.align2d(max_gap_length=50)
aln.write(file='exon18_fill.ali', alignment_format='PIR')
aln.write(file='exon18_fill.pap', alignment_format='PAP')
# remember to check the ali file to make the alignment is correct!!!
