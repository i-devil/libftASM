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

#endif