using demo from '../db/schema';

service projectservice {
    entity user as projection on demo.user;
    entity projects as projection on demo.user;
}