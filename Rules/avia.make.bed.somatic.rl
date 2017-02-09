rule avia_make_bed_somatic:
    input: config['project']['workpath']+"/mutect_out/merged_somatic.vcf"
    output:config['project']['workpath']+"/variants.bed"
    params: batch ="-l nodes=1:gpfs -q ccr",rname="avia.make.bed.somatic"
    shell: """
         perl Scripts/avia_make_bed.pl {input}

           """

