package com.website.bukh.service;

import com.website.bukh.dao.UserDao;
import com.website.bukh.entity.User;
import com.website.bukh.service.ShiroDbRealm.ShiroUser;
import com.website.bukh.util.Digests;
import com.website.bukh.util.Encodes;
import org.apache.shiro.SecurityUtils;
import org.hibernate.service.spi.ServiceException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by ken.cui on 14-2-16.
 */
@Component
@Transactional
public class AccountService {

    public static final String HASH_ALGORITHM = "SHA-1";
    public static final int HASH_INTERATIONS = 1024;
    private static final int SALT_SIZE = 8;

    private static Logger logger = LoggerFactory.getLogger(AccountService.class);
    @Autowired
    private UserDao userDao;

    public User getUser(Long id) {
        return userDao.get(id);
    }

    public void saveUser(User user) {
        if (isSupervisor(user)) {
            logger.warn("操作员{}尝试修改超级管理员用户", SecurityUtils.getSubject().getPrincipal());
            throw new ServiceException("不能修改超级管理员用户");
        }
        entryptPassword(user);

        userDao.save(user);

    }

    /**
     * 判断是否超级管理员.
     */
    private boolean isSupervisor(User user) {
        return (user.getId() != null && user.getId() == 1L);
    }

    public List<User> getAllUser() {
        return userDao.getAll();
    }

    public User findUserByLoginName(String loginName) {
        return userDao.findUniqueBy("loginName", loginName);
    }

    /**
     * 取出Shiro中的当前用户LoginName.
     */
    private String getCurrentUserName() {
        ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
        return user.loginName;
    }

    /**
     * 设定安全的密码，生成随机的salt并经过1024次 sha-1 hash
     */
    private void entryptPassword(User user) {
        byte[] salt = Digests.generateSalt(SALT_SIZE);
        user.setSalt(Encodes.encodeHex(salt));

        byte[] hashPassword = Digests.sha1(user.getPlainPassword().getBytes(), salt, HASH_INTERATIONS);
        user.setPassword(Encodes.encodeHex(hashPassword));
    }

    @Transactional(readOnly = true)
    public boolean isLoginNameUnique(String newLoginName, String oldLoginName) {
        return userDao.isPropertyUnique("loginName", newLoginName, oldLoginName);
    }
}
