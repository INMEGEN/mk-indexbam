MK_INDEXBAM_TARGETS=`{./targets}

mk_indexbam:VE:	$MK_INDEXBAM_TARGETS

results/indexbam/%.sorted.bam:D:	data/%.bam
	mkdir -p `dirname $target`
	samtools sort -o $target \
		-O bam \
		$prereq
results/indexbam/%.sorted.bam.bai:D:	results/indexbam/%.sorted.bam
	mkdir -p `dirname $target`
	samtools index -b $prereq
