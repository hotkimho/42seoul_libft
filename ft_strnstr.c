/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hkim2 <hkim2@student.42seoul.kr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/23 15:49:54 by hkim2             #+#    #+#             */
/*   Updated: 2021/05/23 20:25:30 by hkim2            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *hay, const char *needle, size_t len)
{
	size_t		i;
	size_t		j;

	if (!(*needle))
		return ((char *)hay);
	if (ft_strlen(hay) < ft_strlen(needle) || ft_strlen(needle) > (int)len)
		return (NULL);
	i = 0;
	while (hay[i] && i < len)
	{
		j = 0;
		while (hay[i+j] == needle[j])
			j++;
		if ((size_t) ft_strlen(needle) == j)
			return ((char *)&hay[i]);
		i++;
	}
	return (NULL);
}
