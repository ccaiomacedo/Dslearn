package com.devsuperior.dslearnbds.services;

import com.devsuperior.dslearnbds.dto.NotificationDTO;
import com.devsuperior.dslearnbds.entities.Notification;
import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.NotificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class NotificationService {

    @Autowired
    private NotificationRepository repository;

    @Autowired
    private AuthService service;

    @Transactional(readOnly = true)
    public Page<NotificationDTO> notificationForCurrentUser(Pageable pageable) {
        User user = service.authenticated();
        Page<Notification> page = repository.findByUser(user, pageable);
        return page.map(notification -> new NotificationDTO(notification));
    }
}
