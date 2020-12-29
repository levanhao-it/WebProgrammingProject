package vn.edu.nlu.beans;

public class User {
        String userName;
        String pass;
        String name;

        public User(String userName, String pass, String name) {
            this.userName = userName;
            this.pass = pass;
            this.name = name;

        }

        public String getUserName() {
            return userName;
        }

        public void setUserName(String userName) {
            this.userName = userName;
        }

        public String getPass() {
            return pass;
        }

        public void setPass(String pass) {
            this.pass = pass;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
    }
