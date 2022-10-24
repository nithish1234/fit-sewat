public class ContactQueryHelperDAO {
    public static Integer getTotalContactCount(){
        return [Select Count() from Contact];
    }
}