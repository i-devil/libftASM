/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftasm.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ide-vill <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/05 12:45:04 by ide-vill          #+#    #+#             */
/*   Updated: 2015/03/05 12:45:06 by ide-vill         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTASM_H
# define LIBFTASM_H

#include <string.h>

int					ft_isdigit(int c);
int					ft_isascii(int c);
int					ft_isalnum(int c);
int					ft_isalpha(int c);
int					ft_isprint(int c);
int 				ft_toupper(int c);
int 				ft_tolower(int c);
void				ft_bzero(void *s, int n);
int 				ft_puts(const char *s);
size_t				ft_strlen(const char *s);
char				*ft_strcat(char *restrict s1, const char *restrict s2);
void 				*memcpy(void *restrict dst, const void *restrict src, size_t n);
void				*memset(void *b, int c, size_t len);


int				ft_putchar(char c);
int				ft_min(int a, int b);
int				ft_max(int a, int b);
int				ft_abs(int a);
int				ft_isspace(int c);

#endif