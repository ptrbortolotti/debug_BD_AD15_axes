#!/bin/bash
#SBATCH --account=bar
#SBATCH --time=2-00:00:00
#SBATCH --job-name=BDrpm3p0
#SBATCH --nodes=1
#SBATCH --mail-user pbortolo@nrel.gov
#SBATCH --mail-type BEGIN,END,FAIL
######SBATCH --partition=debug
######SBATCH --qos=high
######SBATCH --mem=1000GB      # RAM in MB
#SBATCH --output=job_log.%j.out  # %j will be replaced with the job ID


/home/pbortolo/openfast_v3p0p0/build/glue-codes/openfast/openfast IEA-15-240-RWT_0rpm.fst &
/home/pbortolo/openfast_v3p0p0/build/glue-codes/openfast/openfast IEA-15-240-RWT_0rpm_c2.fst &
/home/pbortolo/openfast_v3p0p0/build/glue-codes/openfast/openfast IEA-15-240-RWT_2rpm.fst &
/home/pbortolo/openfast_v3p0p0/build/glue-codes/openfast/openfast IEA-15-240-RWT_2rpm_c2.fst &
/home/pbortolo/openfast_v3p0p0/build/glue-codes/openfast/openfast IEA-15-240-RWT_10rpm.fst &
/home/pbortolo/openfast_v3p0p0/build/glue-codes/openfast/openfast IEA-15-240-RWT_10rpm_c2.fst &
wait
