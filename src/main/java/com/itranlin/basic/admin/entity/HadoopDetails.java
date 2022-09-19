package com.itranlin.basic.admin.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * <p>
 * 
 * </p>
 *
 * @author itranlin
 * @since 2022-05-27
 */
@TableName("hadoop_details")
@ApiModel(value = "HadoopDetails对象", description = "")
public class HadoopDetails implements Serializable {

    private static final long serialVersionUID = 1L;

    private String id;

    private String name;

    @TableField("`key`")
    private String key;

    private String user;

    private String ipAddress;

    private String hadoopId;

    private String password;

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }
    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHadoopId() {
        return hadoopId;
    }

    public void setHadoopId(String hadoopId) {
        this.hadoopId = hadoopId;
    }

    @Override
    public String toString() {
        return "HadoopDetails{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", key='" + key + '\'' +
                ", user='" + user + '\'' +
                ", ipAddress='" + ipAddress + '\'' +
                ", hadoopId='" + hadoopId + '\'' +
                ", password='" + password + '\'' +
                '}';
    }


    public Host translateHost(){
        Host host = new Host();
        String[] ipPort = this.ipAddress.split(":");
        host.setHost(ipPort[0]);
        if (ipPort.length > 1){
            host.setPort(ipPort[1]);
        }else {
            host.setPort("22");
        }
        host.setUser(this.user);
        host.setPwd(this.password);
        return host;
    }

    @Data
   public static
    class Host{
        private String host;
        private String port;
        private String user;
        private String pwd;
    }
}
