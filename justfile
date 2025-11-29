set shell := ["powershell.exe", "-c"]

build:
    uv run ansible-builder build --tag postgresql_ee

run:
    uv run ansible-navigator run playbook.yaml --execution-environment-image postgresql_ee --mode stdout
