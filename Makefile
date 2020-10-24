.PHONY: all
all: .venv/ok-pip-sync

.venv:
	python3 -m venv .venv
	.venv/bin/python -m pip install -U pip wheel pip-tools

requirements.txt: requirements.in
	.venv/bin/pip-compile --annotate

.venv/ok-pip-sync: requirements.txt .venv
	.venv/bin/pip-sync requirements.txt
	touch .venv/ok-pip-sync

clean:
	- rm -rf .venv
