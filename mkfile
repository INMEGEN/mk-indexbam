MK_INDEXBAM_TARGETS=`{bin/targets}

mk_indexbam:VE:	$MK_INDEXBAM_TARGETS

results/indexbam/%.sorted.bam:D:	data/%.bam
	mkdir -p `dirname $target`
	samtools sort -o $target".build" \
		-O bam \
		$prereq \
	&& mv $target".build" $target

results/indexbam/%.sorted.bam.bai:D:	results/indexbam/%.sorted.bam
	mkdir -p `dirname $target`
	samtools index -b $prereq
