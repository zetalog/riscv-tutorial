all: hello-c hello-s

hello-c: hello.c
	riscv64-unknown-elf-gcc -static -march=rv64g -mabi=lp64d -mcmodel=medany $< -o $@

hello-s: hello.S
	riscv64-unknown-elf-gcc -march=rv64g -mabi=lp64d $< -lc -o $@

clean:
	@rm -f hello-c
	@rm -f hello-s
