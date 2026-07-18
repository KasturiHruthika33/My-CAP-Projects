using demo from '../db/demo';

service DemoService @(path:'/browse',requires:'authenticated-user'){
    entity Books as projection on demo.Books{*};
}