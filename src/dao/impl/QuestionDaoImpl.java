package dao.impl;

import dao.IQuestionDao;
import domain.Question;
import service.IQuestionService;
import util.Conn;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class QuestionDaoImpl implements IQuestionDao {

    private Connection con;
    private Statement stmt;
    private ResultSet rs;

    //查看题目
    @Override
    public String[][] find() throws SQLException {
        int i = -1;
        String ques[][] = new String[100][30];
        try{
            Conn conn = new Conn();
            con = conn.getCon();
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT * FROM t_ques ");
            while(rs.next()){
                i++;
                ques[i][0] = rs.getString(1);
                ques[i][1] = rs.getString(2);
                ques[i][2] = rs.getString(3);
                ques[i][3] = rs.getString(4);
                ques[i][4] = rs.getString(5);
                ques[i][5] = rs.getString(6);
            }
            con.close();
            return ques;
        }
        catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    //插入题目
    @Override
    public void insert(Question q) throws SQLException {
        int t = 0;
        try{
            Conn conn = new Conn();
            con = conn.getCon();
            stmt = con.createStatement();
            rs = stmt.executeQuery("select count(*) from t_ques");
            while(rs.next()) {
                t = rs.getInt(1);
            }
            t++;
            stmt.execute("INSERT INTO t_ques VALUES ('"+
                    q.getQus()+"','"+
                    q.getOptionA()+"','"+
                    q.getOptionB()+"','"+
                    q.getOptionC()+"','"+
                    q.getOptionD()+"','"+
                    q.getAns()+"')");
            con.close();
        }
        catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    //删除题目
    @Override
    public void delete(Question q) throws SQLException {
        try{
            Conn conn = new Conn();
            con = conn.getCon();
            stmt = con.createStatement();
            stmt.execute("DELETE FROM t_ques WHERE question = '"+q.getQus()+"'");
        }
        catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    //更改题目
    @Override
    public void update(Question q, String topic) throws SQLException {
        try{
            Conn conn = new Conn();
            con = conn.getCon();
            stmt = con.createStatement();
            stmt.execute("UPDATE t_ques SET `question`='"+ q.getQus()+
                    "', `optionA`='"+q.getOptionA()+
                    "', `optionB`='"+q.getOptionB()+
                    "', `optionC`='"+q.getOptionC()+
                    "', `optionD`='"+q.getOptionD()+
                    "', `answer`='"+q.getAns()+
                    "' WHERE `question`='"+topic+"'");
        }
        catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    //出题（从题库中抽出5道题)
    public String[][] test(){
        int i = 0;
        String ques[][] = new String[100][30];
        try{
            Conn conn = new Conn();
            con = conn.getCon();
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT * FROM t_ques ORDER BY rand() limit 5");
            while(rs.next()){

                ques[i][0] = rs.getString(1);
                ques[i][1] = rs.getString(2);
                ques[i][2] = rs.getString(3);
                ques[i][3] = rs.getString(4);
                ques[i][4] = rs.getString(5);
                ques[i][5] = rs.getString(6);
                i++;

            }
            con.close();
            return ques;
        }
        catch (Exception e){
            throw new RuntimeException(e);
        }
    }
}
