package newpackage;
/**
 *
 * @author sienki
 */
public class User {
    
	public String id;
	public String name;
	public String surname;
	public String role;
	public String nickname;
	public String password;
	public String email;

	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getSurname() {
		return surname;
	}
	public String getRole() {
		return role;
	}
	public String getNickname() {
		return nickname;
	}
	public String getPassword() {
		return password;
	}
	public String getEmail() {
		return email;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public User(String id, String name, String surname, String role, String nickname, String password, String email) {
		setId(id);
		setNickname(nickname);
		setName(name);
		setSurname(surname);
		setPassword(password);
		setRole(role);
		setEmail(email);
	}
}
