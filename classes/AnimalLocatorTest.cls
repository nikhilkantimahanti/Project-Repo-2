@istest
public class AnimalLocatorTest{
@istest
//Test if CI Invoked
static void testGetResponse(){
test.setmock(HttpCalloutMock.class,new AnimalLocatorMock());
string http=AnimalLocator.getAnimalNameById(2);
}
}