/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hkim2 <hkim2@student.42seoul.kr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/20 15:50:50 by hkim2             #+#    #+#             */
/*   Updated: 2021/05/20 16:49:32 by hkim2            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void			*ft_memcpy(void *dst, const void *src, size_t n)
{
	size_t			i;
	unsigned char	*src_ptr;
	unsigned char	*dst_ptr;

	if (dst == NULL || src == NULL)
		return (NULL);
	if (n < 1)
		return (dst);
	i = 0;
	src_ptr = (unsigned char *)src;
	dst_ptr = (unsigned char *)dst;
	while (i < n)
	{
		dst_ptr[i] = src_ptr[i];
		i++;
	}
	return (dst_ptr);
}
