.PHONY: all
all:
	poetry install --remove-untracked

clean:
	- rm -rf .venv
