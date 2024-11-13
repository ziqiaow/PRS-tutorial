#!/bin/bash
#SBATCH --job-name=PGS_calculation
#SBATCH --mem=20G
#SBATCH --nodes=1
#SBATCH --cpus-per-task=6
#SBATCH --time=0-01:30:00

####################
/dcs04/nilanjan/data/zwang/tools/20240105/plink2 \
--threads 5 \
--rm-dup exclude-all \
--mach-r2-filter \
--maf 0.01 \
--hwe 1e-6 \
--geno 0.01 \
--mind 0.01 \
--bfile /dcs04/nilanjan/data/zwang/1000G/EUR/data/mergedplink \
--score /dcs04/nilanjan/data/zwang/PGScalculation/plink/bmi_score.txt cols=+scoresums,-scoreavgs \
--score-col-nums 3 \
--out /dcs04/nilanjan/data/zwang/PGScalculation/example/bmi_prive_prs

#https://zzz.bwh.harvard.edu/plink/profile.shtml
