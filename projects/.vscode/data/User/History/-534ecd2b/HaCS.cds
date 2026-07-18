using demo from '../db/demo';

service DemoService @(path:'/browse'){
    entity Books as projection on demo.Books{*};
}