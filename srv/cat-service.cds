using { sap.common } from '../db/data-model';
using SFLIGHT_CV from '../db/data-model';
using SBOOK_CV from '../db/data-model';
//using SBOOK_CV2 from '../db/data-model';

service CatalogService {
  //entity Books @readonly as projection on bookshop.Books;
  //entity Authors @readonly as projection on bookshop.Authors;
  //entity Orders @insertonly as projection on bookshop.Orders;
  @readonly
  entity SFLIGHT as projection on SFLIGHT_CV; 
  @readonly
  entity SBOOK as projection on SBOOK_CV; 
  //@readonly
  //entity SBOOK2 as projection on SBOOK_CV2; 
}