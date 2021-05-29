/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstiter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hkim2 <hkim2@student.42seoul.kr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/30 01:32:50 by hkim2             #+#    #+#             */
/*   Updated: 2021/05/30 01:39:53 by hkim2            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstiter(t_list *lst, void (*f)(void *))
{
	int	i;
	int	lst_len;

	if (lst == NULL || f == NULL)
		return ;
	i = 0;
	lst_len = ft_lstsize(lst);
	while (i < lst_len)
	{
		if (lst->content)
			f(lst->content);
		lst = lst->next;
	}
}
