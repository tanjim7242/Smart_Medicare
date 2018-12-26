/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mlab.endpoint.Service;

import com.mlab.endpoint.Model.Role;
import com.mlab.endpoint.Model.User;
import com.mlab.endpoint.exception.StoredProcException;
import com.mlab.endpoint.interfaces.StoredProcJdbcDao;
import com.mlab.endpoint.util.Constants;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author ADMIN
 */
@Service
public class UserService implements UserDetailsService {

    private StoredProcJdbcDao storedProcJdbcDao;

    public void setStoredProcJdbcDao(StoredProcJdbcDao storedProcJdbcDao) {
        this.storedProcJdbcDao = storedProcJdbcDao;
    }

    public StoredProcJdbcDao getStoredProcJdbcDao() {
        return storedProcJdbcDao;
    }

    @Override
    public User loadUserByUsername(final String username) throws UsernameNotFoundException {

        ResultSet resultSet = null;
        List<String> values = new ArrayList<>();

        values.add(username);
        User user = null;
        try {
            resultSet = storedProcJdbcDao.callStoredProcForList(Constants.get_user_by_name, values);
        } catch (StoredProcException e) {
            throw new UsernameNotFoundException(e.getMessage(), e);
        }

        if (resultSet != null) {
            try {

                while (resultSet.next()) {
                    user = new User();
                    user.setFirstName(resultSet.getString("first_name"));
                    user.setLastName(resultSet.getString("last_name"));
                    user.setUsername(resultSet.getString("username"));
                    user.setPassword(resultSet.getString("password"));
                    user.setDistId(resultSet.getInt("bat_id"));
                    user.setType(resultSet.getString("type"));
                    user.setProfession(resultSet.getString("doctorrid"));
                    user.setDesignation(resultSet.getString("designation"));
                    Role r = new Role();
                    r.setName(resultSet.getString("role_name"));
                    List<Role> roles = new ArrayList<>();
                    roles.add(r);
                    user.setAuthorities(roles);

                   
                }
            } catch (SQLException e) {
                throw new UsernameNotFoundException(e.getMessage(), e);
            }
        }

        return user;
    }

}
