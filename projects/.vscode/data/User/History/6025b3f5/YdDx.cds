using {my.company as my} from '../db/schema';

service ProductsService {
	entity Products as projection on my.Products actions {
		action activateProduct() returns String;
	};
}