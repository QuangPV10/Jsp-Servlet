package dao;
import java.sql.SQLException;

public interface ObjectDAO {
     default boolean add(Object obj) throws SQLException, ClassNotFoundException {
         return false;
    }

    default boolean remove(String id) {
        return false;
    }
    default boolean edit(Object obj) throws SQLException, ClassNotFoundException{
        return false;
    }

}
