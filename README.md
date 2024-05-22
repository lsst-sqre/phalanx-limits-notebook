# Phalanx requests/limits assistance tool

This is a Jupyter notebook designed to pull usage data from the monitoring system at https://monitoring.lsst.cloud.
It then uses that to make initial guesses at what requests and limits for the various Phalanx apps should be set to.

## Requirements

1. Python 3.11 or later
1. JupyterLab environment

## Installation

1. Start in the repository root directory
1. Create a new virtualenv: `python3 -m venv <path_to_venv>`
1. Activate it: `. <path_to_venv>/bin/activate`
1. Update pip: `pip3 install --upgrade pip`
1. Install requirements: `pip3 install -r requirements.txt`
1. Create a Jupyter kernel from the virtualenv: `python -m ipykernel install --user --name=<new_kernel>`

## Configuration

1. Put a token allowing you read access to all InfluxDBv2 buckets in the repository root as `influxdb.token`

## Usage

1. Open [limits.ipynb](./limits.ipynb) and select your new kernel as the kernel that will run it in the upper right.
1. From the JupyterLab `Run` menu, `Restart Kernel and Run All Cells...`
1. After a while, [summary.json](./data/summary/summary.json) will contain recommendations for all your Phalanx applications in each environment
1. From this data, create a set of appropriate generic and site-overridden values for each application