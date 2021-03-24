
using { User, Country, managed } from '@sap/cds/common';
/*context my.bookshop {
entity Books {
  key ID : Integer;
  title  : localized String;
  author : Association to Authors;
  stock  : Integer;
}

entity Authors {
  key ID : Integer;
  name   : String;
  books  : Association to many Books on books.author = $self;
}

entity Orders : managed {
  key ID  : UUID;
  book    : Association to Books;
  country : Country;
  amount  : Integer;
}
}
*/
@cds.persistence.exists
Entity SBOOK_CV {
key MANDT: String;
key CARRID: String;
key CONNID: String;
key FLDATE: String;
key BOOKID: String;
}

@cds.persistence.exists
Entity SFLIGHT_CV {
key MANDT: String;
key CARRID: String;
key CONNID: String;
key FLDATE: String;
Bookings : association to SBOOK_CV on Bookings.MANDT = MANDT and Bookings.CARRID = CARRID and Bookings.CONNID = CONNID and Bookings.FLDATE = FLDATE;
}
/*
@cds.persistence.exists
@cds.persistence.calcview
Entity ![SBOOK_CV] {
key ![MANDT]: String(3) @title: 'MANDT: MANDT';
key ![CARRID]: String(3) @title: 'CARRID: CARRID';
key ![CONNID]: String(4) @title: 'CONNID: CONNID';
key ![FLDATE]: String(8) @title: 'FLDATE: FLDATE';
key ![BOOKID]: String(8) @title: 'BOOKID: BOOKID';
}

*/
