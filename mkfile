MK-INDEXBAM_TARGETS=`{./targets}

mk-indexbam:VE:	$MK-INDEXBAM_TARGETS

results/indexbam/%.sorted.bam:D:	data/%.bam
	mkdir -p `dirname $target`
	samtools sort -f $prereq \
		$target
results/indexbam/%.sorted.bam.bai:D:	results/indexbam/%.sorted.bam
	mkdir -p `dirname $target`
	samtools index $prereq