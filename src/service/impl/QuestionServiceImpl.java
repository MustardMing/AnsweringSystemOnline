package service.impl;

import domain.Question;
import dao.impl.QuestionDaoImpl;
import service.IQuestionService;

import java.sql.SQLException;

public class QuestionServiceImpl implements IQuestionService{

    private QuestionDaoImpl questionDao = new QuestionDaoImpl();

    //查看题目
    @Override
    public String[][] find() throws SQLException {
        String ques[][];
        ques = questionDao.find();
        return ques;
    }

    //插入题目
    @Override
    public void insert(Question q) throws SQLException {
        questionDao.insert(q);
    }

    //删除题目
    @Override
    public void delete(Question q) throws SQLException {
        questionDao.delete(q);
    }

    //更改题目
    @Override
    public void update(Question q, String topic) throws SQLException {
        questionDao.update(q,topic);
    }

    //出题
    public String[][] test(){
        String ques[][];
        ques = questionDao.test();
        return ques;
    }
}
