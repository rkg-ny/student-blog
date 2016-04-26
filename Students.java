package mypack;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="students")
public class Students{
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
@Column(name="id")
private int id;
@Column(name="Username")
private String username;

@Column(name="Emailid")

private String emailid;
@Column(name="password")
private String password;

public Students () 
{
}

public Students (int idp ,String user,String email,String pass) 
{
        this.id=idp;
        this.username=user;
	this.emailid=email;
	this.password=pass;
}
public int getid() {
	return id;
}
public void setid(int id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emaila) {
	this.emailid = emaila;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

}