/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hkim2 <hkim2@student.42seoul.kr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/27 18:47:23 by hkim2             #+#    #+#             */
/*   Updated: 2021/05/29 16:36:57 by hkim2            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char			*ft_substr(char const *s, unsigned int start, size_t len)
{
	char		*ptr;
	size_t		i;

	if (!s)
		return (NULL);
	ptr = (char *)malloc(len + 1);
	if (!ptr)
		return (NULL);
	i = 0;
	while (i < len && (int)(i + start) < ft_strlen(s))
	{
		ptr[i] = s[i + start];
		i++;
	}
	ptr[i] = 0;
	return (ptr);
}
