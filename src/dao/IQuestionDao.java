package dao;

import domain.Question;

import java.sql.SQLException;

public interface IQuestionDao {

    /**
     * 查看题目
     * @return 题库
     * @throws SQLException
     */
    public String[][] find() throws SQLException;

    /**
     * 插入题目
     * @param q
     * @throws SQLException
     */
    public void insert(Question q) throws SQLException;

    /**
     * 删除题目
     * @param q
     * @throws SQLException
     */
    public void delete(Question q) throws SQLException;

    /**
     * 更改题目
     * @param q
     * @param topic
     * @throws SQLException
     */
    public void update(Question q,String topic) throws SQLException;
}
