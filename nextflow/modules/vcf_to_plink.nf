// vcf_to_plink.nf
process VcfToPlink {
    tag "${vcf.baseName}"
    publishDir "${params.outdir}", mode: 'copy'

    input:
    path vcf

    output: 
    path("*.bed"), emit: bed
    path("*.bim"), emit: bim
    path("*.fam"), emit: fam

    script:
    """
    plink --vcf ${vcf} --make-bed --out ${vcf.baseName}
    """
}