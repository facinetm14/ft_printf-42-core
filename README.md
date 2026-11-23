# ft_printf-42-core
Reproduce the behavior of printf function

prototype : int ft_printf(char *str, ...);


# How to use ?

clone the repository, inside the root folder type command : #make
you'll get libftprintf.a which is the only file you need to compile with your programme.

#ex : ft_printf ("hello, I'm from %d", 42);

gcc your_main.c libftprintf.a

Start with [format dispatch](ft_printf.c) and trace a hexadecimal conversion into [the hex writer](ft_print_hex.c). The [public header](ft_printf.h) exposes the callable interface. Build the library with `make`.
