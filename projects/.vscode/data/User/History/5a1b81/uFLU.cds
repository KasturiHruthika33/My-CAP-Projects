using {com.acc.selectincds as my} from '..db/schema2';

service PatnerService @(path'/browse') {
    entity BuisinessPatner as projection on my.BuisinessPatner;
}
