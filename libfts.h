/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wyeo <marvin@42.fr>                        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/23 18:06:31 by wyeo              #+#    #+#             */
/*   Updated: 2015/05/23 18:06:32 by wyeo             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <string.h>

void		ft_bzero(void *s, size_t n);
char		*ft_strcat(char *s1, const char *s2);
int			ft_isalpha(int c);
int			ft_isdigit(int c);
int			ft_isalnum(int c);
int			ft_isascii(int c);
int			ft_isprint(int c);
int			ft_toupper(int c);
int			ft_tolower(int c);
int			ft_puts(char *str);
size_t		ft_strlen(const char *str);
void		*ft_memset(void *b, int c, size_t len);
void		*ft_memcpy(void *dst, const void *src, size_t n);
char		*ft_strdup(const char *s1);
void		ft_cat(int fd);
char		*ft_strcpy(char *s1, char *s2);
int			ft_isspace(char c);
char		ft_strcmp(char *s1, char *s2);
int			ft_streq(char *s1, char *s2);
char		*ft_strchr(char *s, int c);
void		ft_exit(int status);
void		ft_putchar(char c);

#endif
