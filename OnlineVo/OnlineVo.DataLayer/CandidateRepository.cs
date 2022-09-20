using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using OnlineVo.Entities;
using System.Linq.Expressions;

namespace OnlineVo.DataLayer
{
    public class CandidateRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Onlinevotingconn"].ConnectionString);
        SqlCommand command = null;
        SqlDataReader reader = null;
        DataSet dataset = null;
        public void AddCandidate(Candidate candidate)
        {
            try
            {
                command = new SqlCommand($"insert into Candidate values({candidate.candidate_no},'{candidate.candidate_name}','{candidate.party_name}','{candidate.contactno}')", connection);
                connection.Open();
                command.ExecuteNonQuery();

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public void DeleteCandidate(int Candidateno)
        {
            try
            {
                command = new SqlCommand($"Delete Candidate from where Candidate_no={Candidateno}", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public List<Candidate> GetAllCandidates()
        {
            try
            {


                List<Candidate> candidates = new List<Candidate>();
                command = new SqlCommand($"Select * from Candidate", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    Candidate candidate = new Candidate();
                    candidate.candidate_no = (int)dr["Candidate_no"];
                    candidate.candidate_name = dr["Candidate_name"].ToString();
                    candidate.party_name = dr["Party_name"].ToString();
                    candidate.contactno = dr["Contactno"].ToString();
                    candidates.Add(candidate);
                }
                return candidates;
            }
            catch (Exception)
            {
                throw;
            }


        }  
        
        
    }
}


