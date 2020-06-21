# Utilities-split-vtp-files
Splits vtp files into separate xml header file &amp; data file

Script used to transform biocellion output files and their names into a form suitable for the BioreactorPOCUnity3D demo. Because the demo has been (re)written to consume for each vtp file an xml text file that contains the data array offsets and a separate binary data file that contains the arrays, the standard vtp files output by biocellion containing both forms of information must be split in two. The script creates a new directory containing these split files and also copies over the pvtp files. All files are renamed with appropriate .txt and .bytes suffixes. The folder containing the new output files can then be treated as an asset by the Unity demo. Original files are left intact.

Usage:

split_vtp_files \<biocellion-output-dir-path\> \<output-split-path\>
