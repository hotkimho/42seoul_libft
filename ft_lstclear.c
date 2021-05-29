/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hkim2 <hkim2@student.42seoul.kr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/30 01:17:20 by hkim2             #+#    #+#             */
/*   Updated: 2021/05/30 01:31:50 by hkim2            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*tmp;

	if (lst == NULL || del == NULL)
		return ;
	while ((*lst)->next)
	{
		tmp = *lst;
		if ((*lst)->content)
			del((*lst)->content);
		*lst = (*lst)->next;
		free(tmp);
	}
}
