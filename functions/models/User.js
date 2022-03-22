import { Collection, } from 'fireorm';

@Collection()
class User {
  id;
  name;
  email;
  password;
  createdAt;
  updatedAt;
}
