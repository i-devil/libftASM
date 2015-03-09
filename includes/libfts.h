/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ide-vill <iris.devillars@gmail.com>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/09 21:19:08 by ide-vill          #+#    #+#             */
/*   Updated: 2015/03/09 21:19:21 by ide-vill         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

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
char				*ft_strcat(char *s1, const char *s2);
void 				*ft_memcpy(void *dst, const void *src, size_t n);
void				*ft_memset(void *b, int c, size_t len);
char				*ft_strdup(const char *s1);
void				ft_cat(int fd);

int					ft_min(int a, int b);
int					ft_max(int a, int b);
int					ft_abs(int a);
int					ft_isspace(int c);
int 				ft_isupper(int c);
int 				ft_islower(int c);

#endif
