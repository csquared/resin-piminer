# ResinMiner
### Bitcoin mining with Raspberry Pi and Resin.io

## Reqs

- Raspberry Pi
- resin.io account
- Powered USB Hub
- ASICMiner Block Erupter USB(s)

## Steps

- Buy a block erupter on amazon and connect to a powered USB hub.
- Setup an SD card with your resin repository.
- Clone this project and add your resin remote address
- Push this project to your resion remote
- Profit!

## Troubleshooting

The `start-mining.sh` script assumes the asic miner will show up as
`/dev/ttyUSB0`. If it shows up as something else you can change that
command line option.
