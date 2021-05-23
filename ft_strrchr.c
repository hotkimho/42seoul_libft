/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hkim2 <hkim2@student.42seoul.kr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/23 15:04:29 by hkim2             #+#    #+#             */
/*   Updated: 2021/05/23 15:22:35 by hkim2            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	int		i;
	char	*ptr_s;

	ptr_s = (char *)s;
	i = ft_strlen(s);
	while (i)
	{
		if (s[i] == c)
			return (&ptr_s[i]);
		i--;
	}
	if (ptr_s[i] == c)
		return (ptr_s);
	return (NULL);
}
